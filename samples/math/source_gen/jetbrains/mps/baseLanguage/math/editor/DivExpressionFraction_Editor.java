package jetbrains.mps.baseLanguage.math.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.editor.runtime.EditorCell_Empty;
import jetbrains.mps.nodeEditor.cellActions.CellAction_DeleteNode;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.editor.runtime.style.CellAlign;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;
import jetbrains.mps.nodeEditor.AbstractCellProvider;
import jetbrains.mps.baseLanguage.closures.runtime._FunctionTypes;
import jetbrains.mps.baseLanguage.math.pluginSolution.plugin.HLineCellProvider;

public class DivExpressionFraction_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_ksgn1c_a(editorContext, node);
  }
  private EditorCell createCollection_ksgn1c_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_ksgn1c_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createEmpty_ksgn1c_a0(editorContext, node));
    editorCell.addEditorCell(this.createCollection_ksgn1c_b0(editorContext, node));
    editorCell.addEditorCell(this.createEmpty_ksgn1c_c0(editorContext, node));
    return editorCell;
  }
  private EditorCell createEmpty_ksgn1c_a0(EditorContext editorContext, SNode node) {
    EditorCell_Empty editorCell = new EditorCell_Empty(editorContext, node);
    editorCell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(editorCell.getSNode()));
    editorCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteNode(editorCell.getSNode()));
    editorCell.setCellId("Empty_ksgn1c_a0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.PUNCTUATION_RIGHT, 0, true);
    editorCell.getStyle().putAll(style);
    return editorCell;
  }
  private EditorCell createCollection_ksgn1c_b0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createVertical(editorContext, node);
    editorCell.setCellId("Collection_ksgn1c_b0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, true);
    style.set(StyleAttributes.HORIZONTAL_ALIGN, 0, CellAlign.CENTER);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(this.createRefNode_ksgn1c_a1a(editorContext, node));
    editorCell.addEditorCell(this.createCustom_ksgn1c_b1a(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_ksgn1c_c1a(editorContext, node));
    return editorCell;
  }
  private EditorCell createRefNode_ksgn1c_a1a(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new DivExpressionFraction_Editor.numeratorSingleRoleHandler_ksgn1c_a1a(node, MetaAdapterFactory.getContainmentLink(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x12008f4e805L, 0x1200914977fL, "numerator"), editorContext);
    return provider.createCell();
  }
  private class numeratorSingleRoleHandler_ksgn1c_a1a extends SingleRoleCellProvider {
    public numeratorSingleRoleHandler_ksgn1c_a1a(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("numerator");
      }
      delete_numerator.setCellActions(editorCell, myOwnerNode, myEditorContext);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_numerator");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no numerator>";
    }

  }
  private EditorCell createCustom_ksgn1c_b1a(final EditorContext editorContext, final SNode node) {
    AbstractCellProvider provider = new _FunctionTypes._return_P0_E0<HLineCellProvider>() {
      public HLineCellProvider invoke() {
        return new HLineCellProvider(node);
      }
    }.invoke();
    EditorCell editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("Custom_ksgn1c_b1a");
    Style style = new StyleImpl();
    style.set(StyleAttributes.BASE_LINE_CELL, 0, true);
    editorCell.getStyle().putAll(style);
    return editorCell;
  }
  private EditorCell createRefNode_ksgn1c_c1a(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new DivExpressionFraction_Editor.denominatorSingleRoleHandler_ksgn1c_c1a(node, MetaAdapterFactory.getContainmentLink(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x12008f4e805L, 0x12009149b1aL, "denominator"), editorContext);
    return provider.createCell();
  }
  private class denominatorSingleRoleHandler_ksgn1c_c1a extends SingleRoleCellProvider {
    public denominatorSingleRoleHandler_ksgn1c_c1a(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("denominator");
      }
      delete_denominator.setCellActions(editorCell, myOwnerNode, myEditorContext);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_denominator");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no denominator>";
    }

  }
  private EditorCell createEmpty_ksgn1c_c0(EditorContext editorContext, SNode node) {
    EditorCell_Empty editorCell = new EditorCell_Empty(editorContext, node);
    editorCell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(editorCell.getSNode()));
    editorCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteNode(editorCell.getSNode()));
    editorCell.setCellId("Empty_ksgn1c_c0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.PUNCTUATION_LEFT, 0, true);
    editorCell.getStyle().putAll(style);
    return editorCell;
  }
}
