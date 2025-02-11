package jetbrains.mps.baseLanguage.javadoc.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.nodeEditor.cellMenu.CompositeSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.BasicCellContext;
import jetbrains.mps.nodeEditor.cellMenu.SubstituteInfoPartExt;
import jetbrains.mps.lang.editor.generator.internal.AbstractCellMenuPart_ReplaceNode_CustomNodeConcept;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;

public class ValueInlineDocTag_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_jy8kcg_a(editorContext, node);
  }
  private EditorCell createCollection_jy8kcg_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_jy8kcg_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createComponent_jy8kcg_a0(editorContext, node));
    if (renderingCondition_jy8kcg_a1a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_jy8kcg_b0(editorContext, node));
    }
    return editorCell;
  }
  private EditorCell createComponent_jy8kcg_a0(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "jetbrains.mps.lang.core.editor.alias");
    Style style = new StyleImpl();
    DocumentationCommentStyleSheet_StyleSheet.apply_CommentTag(style, editorCell);
    editorCell.getStyle().putAll(style);
    ValueInlineDocTag_Actions.setCellActions(editorCell, node, editorContext);
    editorCell.setSubstituteInfo(new CompositeSubstituteInfo(editorContext, new BasicCellContext(node), new SubstituteInfoPartExt[]{new ValueInlineDocTag_Editor.ReplaceWith_BaseInlineDocTag_cellMenu_jy8kcg_a0a0()}));
    return editorCell;
  }
  public static class ReplaceWith_BaseInlineDocTag_cellMenu_jy8kcg_a0a0 extends AbstractCellMenuPart_ReplaceNode_CustomNodeConcept {
    public ReplaceWith_BaseInlineDocTag_cellMenu_jy8kcg_a0a0() {
    }
    public String getReplacementConceptName() {
      return "jetbrains.mps.baseLanguage.javadoc.structure.BaseInlineDocTag";
    }
  }
  private EditorCell createRefNode_jy8kcg_b0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new ValueInlineDocTag_Editor.variableReferenceSingleRoleHandler_jy8kcg_b0(node, MetaAdapterFactory.getContainmentLink(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x60a0f9237ac5e83bL, 0x2398cefbc25f6d46L, "variableReference"), editorContext);
    return provider.createCell();
  }
  private class variableReferenceSingleRoleHandler_jy8kcg_b0 extends SingleRoleCellProvider {
    public variableReferenceSingleRoleHandler_jy8kcg_b0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
      super(ownerNode, containmentLink, context);
    }
    public EditorCell createChildCell(EditorContext editorContext, SNode child) {
      EditorCell editorCell = super.createChildCell(editorContext, child);
      installCellInfo(child, editorCell);
      return editorCell;
    }
    public void installCellInfo(SNode child, EditorCell editorCell) {
      editorCell.setSubstituteInfo(new DefaultChildSubstituteInfo(myOwnerNode, myContainmentLink.getDeclarationNode(), myEditorContext));
      if (editorCell.getRole() == null) {
        editorCell.setRole("variableReference");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_variableReference");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no variableReference>";
    }

  }
  private static boolean renderingCondition_jy8kcg_a1a(SNode node, EditorContext editorContext) {
    return (SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x60a0f9237ac5e83bL, 0x2398cefbc25f6d46L, "variableReference")) != null);
  }
}
