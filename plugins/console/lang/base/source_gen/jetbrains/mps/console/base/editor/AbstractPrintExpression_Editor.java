package jetbrains.mps.console.base.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.nodeEditor.cellMenu.CompositeSubstituteInfo;
import jetbrains.mps.nodeEditor.cellMenu.BasicCellContext;
import jetbrains.mps.nodeEditor.cellMenu.SubstituteInfoPartExt;
import jetbrains.mps.lang.editor.generator.internal.AbstractCellMenuPart_ReplaceNode_CustomNodeConcept;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;

public class AbstractPrintExpression_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_9ckmec_a(editorContext, node);
  }
  private EditorCell createCollection_9ckmec_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_9ckmec_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createComponent_9ckmec_a0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_9ckmec_b0(editorContext, node));
    return editorCell;
  }
  private EditorCell createComponent_9ckmec_a0(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "jetbrains.mps.lang.core.editor.alias");
    AbstractPrintExpression_Actions.setCellActions(editorCell, node, editorContext);
    editorCell.setSubstituteInfo(new CompositeSubstituteInfo(editorContext, new BasicCellContext(node), new SubstituteInfoPartExt[]{new AbstractPrintExpression_Editor.ReplaceWith_AbstractPrintExpression_cellMenu_9ckmec_a0a0()}));
    return editorCell;
  }
  public static class ReplaceWith_AbstractPrintExpression_cellMenu_9ckmec_a0a0 extends AbstractCellMenuPart_ReplaceNode_CustomNodeConcept {
    public ReplaceWith_AbstractPrintExpression_cellMenu_9ckmec_a0a0() {
    }
    public String getReplacementConceptName() {
      return "jetbrains.mps.console.base.structure.AbstractPrintExpression";
    }
  }
  private EditorCell createRefNode_9ckmec_b0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new AbstractPrintExpression_Editor.objectSingleRoleHandler_9ckmec_b0(node, MetaAdapterFactory.getContainmentLink(0xde1ad86d6e504a02L, 0xb306d4d17f64c375L, 0x6c8954f469a7c420L, 0x7417cca3eb1ff761L, "object"), editorContext);
    return provider.createCell();
  }
  private class objectSingleRoleHandler_9ckmec_b0 extends SingleRoleCellProvider {
    public objectSingleRoleHandler_9ckmec_b0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("object");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_object");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no object>";
    }

  }
}
