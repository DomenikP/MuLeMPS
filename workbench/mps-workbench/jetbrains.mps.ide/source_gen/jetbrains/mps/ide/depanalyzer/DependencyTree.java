package jetbrains.mps.ide.depanalyzer;

/*Generated by MPS */

import jetbrains.mps.ide.ui.tree.MPSTree;
import com.intellij.openapi.actionSystem.DataProvider;
import com.intellij.openapi.project.Project;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.ide.ui.tree.MPSTreeNode;
import jetbrains.mps.ide.ui.tree.TextTreeNode;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.ide.ui.tree.TreeMessage;
import java.awt.Color;
import org.jetbrains.mps.openapi.module.SModuleReference;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import org.jetbrains.mps.util.Condition;
import jetbrains.mps.internal.collections.runtime.ITranslator2;
import com.intellij.openapi.actionSystem.ActionGroup;
import jetbrains.mps.workbench.action.ActionUtils;
import jetbrains.mps.workbench.action.BaseAction;
import com.intellij.openapi.actionSystem.ActionManager;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NonNls;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;

public class DependencyTree extends MPSTree implements DataProvider {
  private Project myProject;
  private SModule myModule;
  private boolean myShowRuntime;
  private boolean myShowUsedLanguage = true;
  public DependencyTree(Project project) {
    myProject = project;
  }
  /*package*/ Project getProject() {
    return myProject;
  }
  public void setModules(SModule module) {
    myModule = module;
  }
  public SModule getModule() {
    return myModule;
  }
  public boolean isShowRuntime() {
    return myShowRuntime;
  }
  public void setShowRuntime(boolean showRuntime) {
    myShowRuntime = showRuntime;
  }
  public boolean isShowUsedLanguage() {
    return myShowUsedLanguage;
  }
  public void setShowUsedLanguage(boolean showUsedLanguage) {
    myShowUsedLanguage = showUsedLanguage;
  }
  @Override
  protected MPSTreeNode rebuild() {
    if (myModule == null) {
      return new TextTreeNode("No Content");
    }
    DepLink deps = new DependencyUtil(myModule.getRepository()).trackRuntime(isShowRuntime()).build(myModule);
    TextTreeNode root = new TextTreeNode(myModule.getModuleName());
    root.setIcon(IconManager.getIconFor(myModule));
    populate(root, deps.allDependencies());
    return root;

  }
  private void populate(MPSTreeNode root, Iterable<DepLink> allDependencies) {
    final TreeMessage HAS_CYCLE = new TreeMessage(Color.RED, "module with dependency cycle", null);
    final TreeMessage BOOTSTRAP_DEPENDENCY = new TreeMessage(Color.RED, "language with bootstrap dependency", null);

    Iterable<SModuleReference> sortedModules = Sequence.fromIterable(allDependencies).select(new ISelector<DepLink, SModuleReference>() {
      public SModuleReference select(DepLink it) {
        return it.module;
      }
    }).distinct().sort(new ISelector<SModuleReference, String>() {
      public String select(SModuleReference it) {
        return it.getModuleName();
      }
    }, true);

    for (final SModuleReference module : Sequence.fromIterable(sortedModules)) {
      Iterable<DepLink> moduleDeps = Sequence.fromIterable(allDependencies).where(new IWhereFilter<DepLink>() {
        public boolean accept(DepLink it) {
          return it.module == module && it.role.isDependency();
        }
      });
      if (Sequence.fromIterable(moduleDeps).isEmpty()) {
        continue;
      }
      ModuleDependencyNode n = new ModuleDependencyNode(module, moduleDeps, false);
      n.updateIcon(myModule.getRepository());
      final CycleBuilder cb = new CycleBuilder(new Condition<DepLink>() {
        public boolean met(DepLink dl) {
          return dl.role.isDependency();
        }
      });
      // if there's any dependency with loop to itself, and role of each element of this path isDependency, then it's dependency cycle 
      Iterable<DepPath> cycles = Sequence.fromIterable(moduleDeps).translate(new ITranslator2<DepLink, DepPath>() {
        public Iterable<DepPath> translate(DepLink dep) {
          return cb.cyclePaths(dep);
        }
      });
      if (Sequence.fromIterable(cycles).isNotEmpty()) {
        n.setCycles(cycles);
        n.addTreeMessage(HAS_CYCLE);
      }
      root.add(n);
    }
    if (isShowUsedLanguage()) {
      MPSTreeNode usedlanguages = new TextTreeNode("Used Languages");
      boolean hasBootstrapDep = false;
      for (final SModuleReference module : Sequence.fromIterable(sortedModules)) {
        Iterable<DepLink> usedLangDeps = Sequence.fromIterable(allDependencies).where(new IWhereFilter<DepLink>() {
          public boolean accept(DepLink it) {
            return it.module == module && it.role.isUsedLanguage();
          }
        });
        if (Sequence.fromIterable(usedLangDeps).isEmpty()) {
          continue;
        }
        ModuleDependencyNode n = new ModuleDependencyNode(module, usedLangDeps, true);
        n.updateIcon(myModule.getRepository());
        final CycleBuilder cb = new CycleBuilder(new Condition<DepLink>() {
          public boolean met(DepLink dl) {
            return dl.role.isUsedLanguage();
          }
        });
        Iterable<DepPath> cycles = Sequence.fromIterable(usedLangDeps).translate(new ITranslator2<DepLink, DepPath>() {
          public Iterable<DepPath> translate(DepLink dep) {
            return cb.cyclePaths(dep);
          }
        });
        if (Sequence.fromIterable(cycles).isNotEmpty()) {
          hasBootstrapDep = true;
          n.setCycles(cycles);
          n.addTreeMessage(BOOTSTRAP_DEPENDENCY);
        }
        usedlanguages.add(n);
      }
      if (hasBootstrapDep) {
        usedlanguages.addTreeMessage(BOOTSTRAP_DEPENDENCY);
      }
      if (usedlanguages.getChildCount() > 0) {
        root.add(usedlanguages);
      }
    }
  }
  @Override
  protected ActionGroup createPopupActionGroup(MPSTreeNode treeNode) {
    return ActionUtils.groupFromActions(((BaseAction) ActionManager.getInstance().getAction("jetbrains.mps.ide.actions.ShowDependenciesInViewer_Action")), ((BaseAction) ActionManager.getInstance().getAction("jetbrains.mps.ide.actions.AnalyzeModuleDependencies_Action")), ((BaseAction) ActionManager.getInstance().getAction("jetbrains.mps.ide.actions.ModuleProperties_Action")));
  }
  @Nullable
  @Override
  public Object getData(@NonNls String id) {
    if (!(getCurrentNode() instanceof ModuleDependencyNode)) {
      return null;
    }
    ModuleDependencyNode current = (ModuleDependencyNode) getCurrentNode();
    if (id.equals(MPSCommonDataKeys.TREE_NODE.getName())) {
      return current;
    }
    if (id.equals(MPSCommonDataKeys.MODULE.getName())) {
      return current.getModule().resolve(myModule.getRepository());
    }
    return null;
  }
}
