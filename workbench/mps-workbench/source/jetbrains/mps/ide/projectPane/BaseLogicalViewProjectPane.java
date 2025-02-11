/*
 * Copyright 2003-2015 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.ide.projectPane;

import com.intellij.ide.CopyProvider;
import com.intellij.ide.CutProvider;
import com.intellij.ide.PasteProvider;
import com.intellij.ide.projectView.ProjectView;
import com.intellij.ide.projectView.impl.AbstractProjectViewPane;
import com.intellij.ide.projectView.impl.ProjectViewImpl;
import com.intellij.openapi.actionSystem.ActionPlaces;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.DataContext;
import com.intellij.openapi.actionSystem.DefaultActionGroup;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import com.intellij.openapi.actionSystem.ToggleAction;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.openapi.vfs.VirtualFileManager;
import com.intellij.openapi.vfs.VirtualFileManagerListener;
import jetbrains.mps.classloading.ClassLoaderManager;
import jetbrains.mps.classloading.MPSClassesListener;
import jetbrains.mps.classloading.MPSClassesListenerAdapter;
import jetbrains.mps.ide.actions.CopyNode_Action;
import jetbrains.mps.ide.actions.CutNode_Action;
import jetbrains.mps.ide.actions.PasteNode_Action;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.ide.projectPane.fileSystem.nodes.ProjectTreeNode;
import jetbrains.mps.ide.ui.tree.MPSTreeNode;
import jetbrains.mps.ide.ui.tree.MPSTreeNodeEx;
import jetbrains.mps.ide.ui.tree.module.GeneratorTreeNode;
import jetbrains.mps.ide.ui.tree.module.NamespaceTextNode;
import jetbrains.mps.ide.ui.tree.module.ProjectModuleTreeNode;
import jetbrains.mps.ide.ui.tree.module.TransientModelsTreeNode;
import jetbrains.mps.ide.ui.tree.smodel.PackageNode;
import jetbrains.mps.ide.ui.tree.smodel.SModelTreeNode;
import jetbrains.mps.ide.ui.tree.smodel.SNodeTreeNode;
import jetbrains.mps.ide.vfs.VirtualFileUtils;
import jetbrains.mps.make.IMakeNotificationListener;
import jetbrains.mps.make.IMakeNotificationListener.Stub;
import jetbrains.mps.make.IMakeService;
import jetbrains.mps.make.MakeNotification;
import jetbrains.mps.module.ReloadableModuleBase;
import jetbrains.mps.openapi.navigation.NavigationSupport;
import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.project.DevKit;
import jetbrains.mps.project.ProjectOperationContext;
import jetbrains.mps.project.Solution;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.smodel.RepoListenerRegistrar;
import jetbrains.mps.util.Pair;
import jetbrains.mps.util.annotation.ToRemove;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.workbench.ActionPlace;
import jetbrains.mps.workbench.FileSystemModelHelper;
import jetbrains.mps.workbench.MPSDataKeys;
import jetbrains.mps.workbench.action.ActionUtils;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.module.SRepositoryContentAdapter;
import org.jetbrains.mps.openapi.repository.CommandListener;

import javax.swing.tree.TreeNode;
import javax.swing.tree.TreePath;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public abstract class BaseLogicalViewProjectPane extends AbstractProjectViewPane {
  private final ProjectView myProjectView;
  private VirtualFileManagerListener myRefreshListener = new RefreshListener();
  private final MyRepositoryListener myRepositoryListener = new MyRepositoryListener();
  protected boolean myDisposed;

  private MPSClassesListener myClassesListener = new MPSClassesListenerAdapter() {
    @Override
    public void afterClassesLoaded(Set<? extends ReloadableModuleBase> modules) {
      rebuild();
    }
  };

  private IMakeNotificationListener myMakeNotificationListener = new Stub() {
    @Override
    public void sessionClosed(MakeNotification notification) {
      // rebuild tree in case of 'cancel' too (need to get 'transient models' node rebuilt)
      rebuild();
    }
  };

  protected BaseLogicalViewProjectPane(Project project, ProjectView projectView) {
    super(project);
    myProjectView = projectView;
  }

  public Project getProject() {
    return myProject;
  }

  public ProjectView getProjectView() {
    return myProjectView;
  };

  public abstract void rebuild();

  public abstract void selectNextModel(SModel md);

  @Override
  public Object getData(String dataId) {
    //MPSDK
    if (dataId.equals(MPSDataKeys.NODE.getName())) return getSelectedSNode();
    if (dataId.equals(MPSDataKeys.NODES.getName())) return getSelectedSNodes();

    if (dataId.equals(MPSDataKeys.MODEL.getName())) return getSelectedModel();
    if (dataId.equals(MPSDataKeys.CONTEXT_MODEL.getName())) return getContextModel();
    if (dataId.equals(MPSDataKeys.MODELS.getName())) return getSelectedModels();

    if (dataId.equals(MPSDataKeys.MODULE.getName())) return getSelectedModule();
    if (dataId.equals(MPSDataKeys.CONTEXT_MODULE.getName())) return getContextModule();
    if (dataId.equals(MPSDataKeys.MODULES.getName())) return getSelectedModules();

    if (dataId.equals(MPSDataKeys.VIRTUAL_PACKAGES.getName())) return getSelectedPackages();

    if (dataId.equals(MPSDataKeys.NAMESPACE.getName())) {
      NamespaceTextNode selectedNamespaceNode = getSelectedTreeNode(NamespaceTextNode.class);
      if (selectedNamespaceNode != null) {
        return selectedNamespaceNode.getNamespace();
      }
      return null;
    }

    if (dataId.equals(MPSDataKeys.OPERATION_CONTEXT.getName())) return getContextForSelection();
    if (dataId.equals(MPSDataKeys.TREE_NODE.getName())) return getSelectedTreeNode(TreeNode.class);
    if (dataId.equals(MPSDataKeys.TREE_NODES.getName())) return getSelectedTreeNodes(TreeNode.class);
    if (dataId.equals(MPSDataKeys.TREE_SELECTION_SIZE.getName())) return getSelectionSize();
    if (dataId.equals(MPSDataKeys.PLACE.getName())) return getPlace();

    //PDK
    if (dataId.equals(PlatformDataKeys.COPY_PROVIDER.getName())) return new MyCopyProvider();
    if (dataId.equals(PlatformDataKeys.PASTE_PROVIDER.getName())) return new MyPasteProvider();
    if (dataId.equals(PlatformDataKeys.CUT_PROVIDER.getName())) return new MyCutProvider();
    if (dataId.equals(PlatformDataKeys.VIRTUAL_FILE_ARRAY.getName())) return getSelectedFiles();

    //not found
    return null;
  }

  public boolean isDisposed() {
    return myDisposed;
  }

  @Override
  public void dispose() {
    if (isComponentCreated()) {
      removeListeners();
    }
    myDisposed = true;
    super.dispose();
  }

  public boolean showNodeStructure() {
    return getProjectView().isShowMembers(getId());
  }

  public boolean isSortByType() {
    return getProjectView().isSortByType(getId());
  }

  @Override
  public void installComparator() {
    // Overrid to avoid NPE
  }

  @Nullable
  public Comparator<Object> getTreeChildrenComparator() {
    return new Comparator<Object>() {
      @Override
      public int compare(final Object o1, final Object o2) {
        if (isSortByType()) {
          if (o1 instanceof SNode && o2 instanceof SNode) {
            final SNode node1 = (SNode) o1;
            final SNode node2 = (SNode) o2;
            // (1) node.getConcept() doesn't require model read, nor concept.getQualifiedName
            // (2) If we got SNode, we're are already in model read
            String concept1 = node1.getConcept().getQualifiedName();
            String concept2 = node2.getConcept().getQualifiedName();
            return concept1.compareTo(concept2);
          }
        }
        return 0;
      }
    };
  }

  @Override
  public void addToolbarActions(final DefaultActionGroup group) {
    group.add(new ShowNodeStructureToggleAction());
    group.addAction(new SortByTypeToggleAction()).setAsSecondary(true);
  }

  protected void removeListeners() {
    ClassLoaderManager.getInstance().removeClassesHandler(myClassesListener);
    jetbrains.mps.project.Project mpsProject = ProjectHelper.toMPSProject(getProject());
    mpsProject.getModelAccess().removeCommandListener(myRepositoryListener);
    // FIXME replace with ProjectRepository once it's capable to send notifications about modules added/removed
    new RepoListenerRegistrar(/*mpsProject.getRepository()*/ MPSModuleRepository.getInstance(), myRepositoryListener).detach();
    if (IMakeService.INSTANCE.hasMakeService()) {
      IMakeService.INSTANCE.get().removeListener(myMakeNotificationListener);
    }
    VirtualFileManager.getInstance().removeVirtualFileManagerListener(myRefreshListener);
  }

  protected void addListeners() {
    VirtualFileManager.getInstance().addVirtualFileManagerListener(myRefreshListener);
    jetbrains.mps.project.Project mpsProject = ProjectHelper.toMPSProject(getProject());
    // FIXME replace with ProjectRepository once it's capable to send notifications about modules added/removed
    new RepoListenerRegistrar(/*mpsProject.getRepository()*/ MPSModuleRepository.getInstance(), myRepositoryListener).attach();
    mpsProject.getModelAccess().addCommandListener(myRepositoryListener);
    if (IMakeService.INSTANCE.hasMakeService()) {
      IMakeService.INSTANCE.get().addListener(myMakeNotificationListener);
    }
    ClassLoaderManager.getInstance().addClassesHandler(myClassesListener);
  }

  public SNode getSelectedSNode() {
    List<SNode> result = getSelectedSNodes();
    if (result.size() != 1) return null;
    return result.get(0);
  }

  public List<SNode> getSelectedSNodes() {
    List<SNode> result = new ArrayList<SNode>();
    for (MPSTreeNodeEx node : getSelectedTreeNodes(MPSTreeNodeEx.class)) {
      SNode snode = node.getSNode();
      if (snode == null) continue;
      result.add(snode);
    }
    return result;
  }

  public List<SModel> getSelectedModels() {
    List<SModel> result = new ArrayList<SModel>();
    for (SModelTreeNode node : getSelectedTreeNodes(SModelTreeNode.class)) {
      result.add(node.getModel());
    }
    return result;
  }

  public SModel getSelectedModel() {
    SModelTreeNode selectedTreeNode = getSelectedTreeNode(SModelTreeNode.class);
    if (selectedTreeNode == null) return null;
    return selectedTreeNode.getModel();
  }

  public SModel getContextModel() {
    MPSTreeNode treeNode = (MPSTreeNode) getSelectedTreeNode(TreeNode.class);
    while (treeNode != null && !(treeNode instanceof SModelTreeNode)) {
      treeNode = (MPSTreeNode) treeNode.getParent();
    }
    if (treeNode == null) return null;
    return ((SModelTreeNode) treeNode).getModel();
  }

  public SModule getSelectedModule() {
    ProjectModuleTreeNode selectedTreeNode = getSelectedTreeNode(ProjectModuleTreeNode.class);
    if (selectedTreeNode == null) return null;
    return selectedTreeNode.getModule();
  }

  public SModule getContextModule() {
    MPSTreeNode treeNode = (MPSTreeNode) getSelectedTreeNode(TreeNode.class);
    while (treeNode != null && !(treeNode instanceof ProjectModuleTreeNode)) {
      treeNode = (MPSTreeNode) treeNode.getParent();
    }
    if (treeNode == null) return null;
    return ((ProjectModuleTreeNode) treeNode).getModule();
  }

  public List<SModule> getSelectedModules() {
    List<SModule> result = new ArrayList<SModule>();
    for (ProjectModuleTreeNode node : getSelectedTreeNodes(ProjectModuleTreeNode.class)) {
      result.add(node.getModule());
    }
    return result;
  }

  public List<Pair<SModel,String>> getSelectedPackages() {
    List<Pair<SModel,String>> result = new ArrayList<Pair<SModel,String>>();
    TreePath[] paths = getTree().getSelectionPaths();
    if (paths == null) return result;
    for (TreePath path : paths) {
      MPSTreeNode node = (MPSTreeNode) path.getLastPathComponent();
      if (node instanceof PackageNode) {
        PackageNode pn = (PackageNode) node;
        result.add(new Pair<SModel, String>(pn.getModelReference().resolve(MPSModuleRepository.getInstance()),pn.getFullPackage()));
      }
    }
    return result;
  }

  public int getSelectionSize() {
    TreePath[] selection = getSelectionPaths();
    return selection == null ? 0 : selection.length;
  }

  private IOperationContext getContextForSelection() {
    TreePath[] selection = getTree().getSelectionPaths();
    if (selection == null) return null;
    if (selection.length > 0) {
      return new ProjectOperationContext(ProjectHelper.toMPSProject(myProject));
    }
    return null;
  }

  private <T extends TreeNode> T getSelectedTreeNode(Class<T> nodeClass) {
    TreePath selectionPath = getTree().getSelectionPath();
    if (selectionPath == null) return null;
    Object selectedNode = selectionPath.getLastPathComponent();
    if (!(nodeClass.isInstance(selectedNode))) return null;
    return (T) selectedNode;
  }

  private ActionPlace getPlace() {
    TreeNode treeNode = getSelectedTreeNode(TreeNode.class);
    if (treeNode instanceof SNodeTreeNode) {
      return ActionPlace.PROJECT_PANE_SNODE;
    } else if (treeNode instanceof SModelTreeNode) {
      return ActionPlace.PROJECT_PANE_SMODEL;
    } else if ((treeNode instanceof ProjectTreeNode) || (treeNode instanceof jetbrains.mps.ide.ui.tree.module.ProjectTreeNode)) {
      return ActionPlace.PROJECT_PANE_PROJECT;
    } else if (treeNode instanceof GeneratorTreeNode) {
      return ActionPlace.PROJECT_PANE_GENERATOR;
    } else if (treeNode instanceof TransientModelsTreeNode) {
      return ActionPlace.PROJECT_PANE_TRANSIENT_MODULES;
    } else if (treeNode instanceof PackageNode) {
      return ActionPlace.PROJECT_PANE_PACKAGE;
    } else if (treeNode instanceof NamespaceTextNode) {
      return ActionPlace.PROJECT_PANE_NAMESPACE;
    } else if (treeNode instanceof ProjectModuleTreeNode) {
      SModule module = getSelectedModule();
      if (module instanceof Language) {
        return ActionPlace.PROJECT_PANE_LANGUAGE;
      } else if (module instanceof DevKit) {
        return ActionPlace.PROJECT_PANE_DEVKIT;
      } else if (module instanceof Solution) {
        return ActionPlace.PROJECT_PANE_SOLUTION;
      }
    }
    return ActionPlace.PROJECT_PANE;
  }

  /**
   * @deprecated this method is in use for compatibility with {@link jetbrains.mps.ide.ui.tree.smodel.SNodeTreeNode.NodeNavigationProvider}, which is deprecated
   * and scheduled for removal. They will cease together, do not use
   */
  @Deprecated
  @ToRemove(version = 3.3)
  public void editNode(final SNode node, jetbrains.mps.project.Project mpsProject, final boolean focus) {
    mpsProject.getModelAccess().checkWriteAccess();
    NavigationSupport.getInstance().openNode(mpsProject, node, focus, !(node.getModel() != null && node.getParent() == null));
  }

  public <T extends TreeNode> List<T> getSelectedTreeNodes(Class<T> nodeClass) {
    TreePath[] selectionPaths = getTree().getSelectionPaths();
    if (selectionPaths == null) return new ArrayList<T>();

    List<T> selectedTreeNodes = new ArrayList<T>(selectionPaths.length);

    for (TreePath selectionPath : selectionPaths) {
      if (selectionPath == null) continue;
      Object selectedNode = selectionPath.getLastPathComponent();
      if (!(nodeClass.isInstance(selectedNode))) continue;
      selectedTreeNodes.add((T) selectedNode);
    }
    return selectedTreeNodes;
  }

  private VirtualFile[] getSelectedFiles() {
    List<VirtualFile> selectedFilesList = new LinkedList<VirtualFile>();

    // add selected model files
    List<SModel> descriptors = getSelectedModels();
    if (descriptors != null) {
      for (SModel descriptor : descriptors) {
        selectedFilesList.addAll(new FileSystemModelHelper(descriptor).getVirtualFiles());
      }
    }

    // add selected modules files
    List<SModule> modules = getSelectedModules();
    if (modules != null) {
      for (SModule m : modules) {
        if (!(m instanceof AbstractModule)) continue;
        AbstractModule module = (AbstractModule) m;
        IFile home = module.getModuleSourceDir();
        if (home != null) {
          VirtualFile vfile = VirtualFileUtils.getVirtualFile(home);
          if (vfile != null) {
            selectedFilesList.add(vfile);
          }
        }
        IFile ifile = module.getDescriptorFile();
        if (ifile != null) {
          VirtualFile vfile = VirtualFileUtils.getVirtualFile(ifile);
          if (vfile != null) {
            selectedFilesList.add(vfile);
          }
        }
      }
    }

    if (selectedFilesList.isEmpty()) {
      return null;
    }

    return selectedFilesList.toArray(new VirtualFile[selectedFilesList.size()]);
  }

  /*package*/ static AnActionEvent createEvent(DataContext context) {
    return ActionUtils.createEvent(ActionPlaces.PROJECT_VIEW_POPUP, context);
  }

  protected abstract boolean isComponentCreated();

  private static class MyCopyProvider implements CopyProvider {
    private CopyNode_Action myAction = new CopyNode_Action();

    @Override
    public void performCopy(DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      ActionUtils.updateAndPerformAction(myAction, event);
    }

    @Override
    public boolean isCopyEnabled(DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      myAction.update(event);
      return event.getPresentation().isEnabled();
    }

    @Override
    public boolean isCopyVisible(DataContext dataContext) {
      return true;
    }
  }

  private static class MyPasteProvider implements PasteProvider {
    private PasteNode_Action myAction = new PasteNode_Action();

    @Override
    public void performPaste(DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      ActionUtils.updateAndPerformAction(myAction, event);
    }

    @Override
    public boolean isPastePossible(DataContext dataContext) {
      return true;
    }

    @Override
    public boolean isPasteEnabled(DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      myAction.update(event);
      return event.getPresentation().isEnabled();
    }
  }

  private static class MyCutProvider implements CutProvider {
    private CutNode_Action myAction = new CutNode_Action();

    @Override
    public void performCut(DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      ActionUtils.updateAndPerformAction(myAction, event);
    }

    @Override
    public boolean isCutEnabled(DataContext dataContext) {
      AnActionEvent event = createEvent(dataContext);
      myAction.update(event);
      return event.getPresentation().isEnabled();
    }

    @Override
    public boolean isCutVisible(DataContext dataContext) {
      return true;
    }
  }

  private class MyRepositoryListener extends SRepositoryContentAdapter implements CommandListener {
    private boolean myNeedRebuild = false;

    /*package*/ void rebuildTreeIfNeeded() {
      if (myNeedRebuild) {
        rebuild();
        myNeedRebuild = false;
      }
    }

    @Override
    public void repositoryChanged() {
      myNeedRebuild = true;
    }

    @Override
    public void modelRenamed(SModule module, SModel model, SModelReference oldRef) {
      myNeedRebuild = true;
    }

    @Override
    protected void startListening(SModel model) {
      if (!model.isReadOnly()) {
        model.addModelListener(this);
      }
    }

    @Override
    protected void stopListening(SModel model) {
      model.removeModelListener(this);
    }

    @Override
    public void modelReplaced(SModel model) {
      myNeedRebuild = true;
    }

    @Override
    public void commandStarted() {
      myNeedRebuild = false;
    }

    @Override
    public void commandFinished() {
      rebuildTreeIfNeeded();
    }
  }

  private class RefreshListener implements VirtualFileManagerListener {
    @Override
    public void beforeRefreshStart(boolean asynchonous) {
    }

    @Override
    public void afterRefreshFinish(boolean asynchonous) {
      myRepositoryListener.rebuildTreeIfNeeded();
    }
  }

  private class ShowNodeStructureToggleAction extends ToggleAction {
    public ShowNodeStructureToggleAction() {
      super("Show node structure", "Show node structure", Icons.PROP_AND_REF);
    }

    @Override
    public boolean isSelected(@Nullable AnActionEvent e) {
      return showNodeStructure();
    }

    @Override
    public void setSelected(@Nullable AnActionEvent e, boolean state) {
      if (state != showNodeStructure()) {
        if (getProjectView() instanceof ProjectViewImpl) {
          ((ProjectViewImpl) getProjectView()).setShowMembers(state, getId());
        }
        rebuild();
      }
    }
  }

  private class SortByTypeToggleAction extends ToggleAction {
    public SortByTypeToggleAction() {
      super("Sort Roots by Concept", "Sort root nodes by concept", null);
    }

    @Override
    public boolean isSelected(@Nullable AnActionEvent e) {
      return isSortByType();
    }

    @Override
    public void setSelected(@Nullable AnActionEvent e, boolean state) {
      if (state != isSortByType()) {
        getProjectView().setSortByType(getId(), state);
        rebuild();
      }
    }
  }
}
