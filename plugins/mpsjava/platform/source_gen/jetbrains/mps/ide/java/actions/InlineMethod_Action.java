package jetbrains.mps.ide.java.actions;

/*Generated by MPS */

import jetbrains.mps.workbench.action.BaseAction;
import javax.swing.Icon;
import com.intellij.openapi.actionSystem.AnActionEvent;
import java.util.Map;
import jetbrains.mps.editor.runtime.cells.ReadOnlyUtil;
import jetbrains.mps.nodeEditor.EditorComponent;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.baseLanguage.closures.runtime.Wrappers;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.baseLanguage.util.plugin.refactorings.MethodCallAdapter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import java.awt.Frame;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.actionSystem.CommonDataKeys;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.ide.editor.MPSEditorDataKeys;
import com.intellij.featureStatistics.FeatureUsageTracker;
import jetbrains.mps.ide.java.platform.refactorings.InlineMethodDialog;

public class InlineMethod_Action extends BaseAction {
  private static final Icon ICON = null;
  public InlineMethod_Action() {
    super("Inline Method", "", ICON);
    this.setIsAlwaysVisible(false);
    this.setExecuteOutsideCommand(true);
  }
  @Override
  public boolean isDumbAware() {
    return true;
  }
  @Override
  public boolean isApplicable(AnActionEvent event, final Map<String, Object> _params) {
    if (ReadOnlyUtil.isCellsReadOnlyInEditor(((EditorComponent) MapSequence.fromMap(_params).get("editorComponent")), Sequence.<EditorCell>singleton(((EditorComponent) MapSequence.fromMap(_params).get("editorComponent")).findNodeCell(((SNode) MapSequence.fromMap(_params).get("node")))))) {
      return false;
    }
    final Wrappers._T<Boolean> b = new Wrappers._T<Boolean>(false);
    ((MPSProject) MapSequence.fromMap(_params).get("project")).getRepository().getModelAccess().runReadAction(new Runnable() {
      public void run() {
        b.value = MethodCallAdapter.isMethodCall(((SNode) MapSequence.fromMap(_params).get("node"))) || SNodeOperations.isInstanceOf(((SNode) MapSequence.fromMap(_params).get("node")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, "jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration"));
      }
    });
    return b.value;
  }
  @Override
  public void doUpdate(@NotNull AnActionEvent event, final Map<String, Object> _params) throws Exception {
    this.setEnabledState(event.getPresentation(), this.isApplicable(event, _params));
  }
  @Override
  protected boolean collectActionData(AnActionEvent event, final Map<String, Object> _params) {
    if (!(super.collectActionData(event, _params))) {
      return false;
    }
    {
      SNode node = event.getData(MPSCommonDataKeys.NODE);
      MapSequence.fromMap(_params).put("node", node);
      if (node == null) {
        return false;
      }
    }
    {
      Frame p = event.getData(MPSCommonDataKeys.FRAME);
      MapSequence.fromMap(_params).put("frame", p);
      if (p == null) {
        return false;
      }
    }
    {
      Project p = event.getData(CommonDataKeys.PROJECT);
      MapSequence.fromMap(_params).put("ideaProject", p);
      if (p == null) {
        return false;
      }
    }
    {
      IOperationContext p = event.getData(MPSCommonDataKeys.OPERATION_CONTEXT);
      MapSequence.fromMap(_params).put("operationContext", p);
      if (p == null) {
        return false;
      }
    }
    {
      EditorComponent editorComponent = event.getData(MPSEditorDataKeys.EDITOR_COMPONENT);
      if (editorComponent != null && editorComponent.isInvalid()) {
        editorComponent = null;
      }
      MapSequence.fromMap(_params).put("editorComponent", editorComponent);
      if (editorComponent == null) {
        return false;
      }
    }
    {
      MPSProject p = event.getData(MPSCommonDataKeys.MPS_PROJECT);
      MapSequence.fromMap(_params).put("project", p);
      if (p == null) {
        return false;
      }
    }
    return true;
  }
  @Override
  public void doExecute(@NotNull final AnActionEvent event, final Map<String, Object> _params) throws Exception {
    FeatureUsageTracker.getInstance().triggerFeatureUsed("refactoring.inline");
    InlineMethodDialog dialog = new InlineMethodDialog(((SNode) MapSequence.fromMap(_params).get("node")), ((Project) MapSequence.fromMap(_params).get("ideaProject")), ((IOperationContext) MapSequence.fromMap(_params).get("operationContext")));
    dialog.tryToShow(((Frame) MapSequence.fromMap(_params).get("frame")));
    dialog.pack();
  }
}
