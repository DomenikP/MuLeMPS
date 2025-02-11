package jetbrains.mps.lang.typesystem.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;

public class MultipleForeachLoopVariable_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_b2af0p_a(editorContext, node);
  }
  private EditorCell createCollection_b2af0p_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_b2af0p_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createRefNode_b2af0p_a0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_b2af0p_b0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_b2af0p_c0(editorContext, node));
    return editorCell;
  }
  private EditorCell createRefNode_b2af0p_a0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new MultipleForeachLoopVariable_Editor.variableSingleRoleHandler_b2af0p_a0(node, MetaAdapterFactory.getContainmentLink(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x111efb75e90L, 0x111efb7f35eL, "variable"), editorContext);
    return provider.createCell();
  }
  private class variableSingleRoleHandler_b2af0p_a0 extends SingleRoleCellProvider {
    public variableSingleRoleHandler_b2af0p_a0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("variable");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_variable");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no variable>";
    }

  }
  private EditorCell createConstant_b2af0p_b0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ":");
    editorCell.setCellId("Constant_b2af0p_b0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_b2af0p_c0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new MultipleForeachLoopVariable_Editor.iterableSingleRoleHandler_b2af0p_c0(node, MetaAdapterFactory.getContainmentLink(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x111efb75e90L, 0x111efb82e45L, "iterable"), editorContext);
    return provider.createCell();
  }
  private class iterableSingleRoleHandler_b2af0p_c0 extends SingleRoleCellProvider {
    public iterableSingleRoleHandler_b2af0p_c0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("iterable");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_iterable");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no iterable>";
    }

  }
}
