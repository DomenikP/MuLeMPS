package testMoveElements.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;
import jetbrains.mps.nodeEditor.cellProviders.AbstractCellListHandler;
import jetbrains.mps.nodeEditor.cellLayout.CellLayout_Indent;
import jetbrains.mps.lang.editor.cellProviders.RefNodeListHandler;
import jetbrains.mps.smodel.action.NodeFactoryManager;
import jetbrains.mps.nodeEditor.cellActions.CellAction_DeleteNode;
import jetbrains.mps.openapi.editor.cells.DefaultSubstituteInfo;

public class ManyStatements_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_mtcnr8_a(editorContext, node);
  }
  private EditorCell createCollection_mtcnr8_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_mtcnr8_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createConstant_mtcnr8_a0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_mtcnr8_b0(editorContext, node));
    editorCell.addEditorCell(this.createCollection_mtcnr8_c0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_mtcnr8_d0(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_mtcnr8_a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "many statements");
    editorCell.setCellId("Constant_mtcnr8_a0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createConstant_mtcnr8_b0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "{");
    editorCell.setCellId("Constant_mtcnr8_b0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.MATCHING_LABEL, 0, "body-brace");
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createCollection_mtcnr8_c0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_mtcnr8_c0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_INDENT, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(this.createConstant_mtcnr8_a2a(editorContext, node));
    editorCell.addEditorCell(this.createConstant_mtcnr8_b2a(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_mtcnr8_c2a(editorContext, node));
    editorCell.addEditorCell(this.createConstant_mtcnr8_d2a(editorContext, node));
    editorCell.addEditorCell(this.createCollection_mtcnr8_e2a(editorContext, node));
    editorCell.addEditorCell(this.createConstant_mtcnr8_f2a(editorContext, node));
    editorCell.addEditorCell(this.createConstant_mtcnr8_g2a(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_mtcnr8_h2a(editorContext, node));
    editorCell.addEditorCell(this.createConstant_mtcnr8_i2a(editorContext, node));
    editorCell.addEditorCell(this.createConstant_mtcnr8_j2a(editorContext, node));
    editorCell.addEditorCell(this.createConstant_mtcnr8_k2a(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_mtcnr8_l2a(editorContext, node));
    editorCell.addEditorCell(this.createConstant_mtcnr8_m2a(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_mtcnr8_a2a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "list");
    editorCell.setCellId("Constant_mtcnr8_a2a");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createConstant_mtcnr8_b2a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ":");
    editorCell.setCellId("Constant_mtcnr8_b2a");
    Style style = new StyleImpl();
    style.set(StyleAttributes.PUNCTUATION_LEFT, 0, true);
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_mtcnr8_c2a(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new ManyStatements_Editor.listSingleRoleHandler_mtcnr8_c2a(node, MetaAdapterFactory.getContainmentLink(0xe228eea107ef499cL, 0x88269c47a7e369dbL, 0x4cb3e593ffd97846L, 0x62f47dac992b7389L, "list"), editorContext);
    return provider.createCell();
  }
  private class listSingleRoleHandler_mtcnr8_c2a extends SingleRoleCellProvider {
    public listSingleRoleHandler_mtcnr8_c2a(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("list");
      }
      Style style = new StyleImpl();
      style.set(StyleAttributes.INDENT_LAYOUT_INDENT, 0, true);
      style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
      editorCell.getStyle().putAll(style);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_list");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no list>";
    }

  }
  private EditorCell createConstant_mtcnr8_d2a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_mtcnr8_d2a");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createCollection_mtcnr8_e2a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_mtcnr8_e2a");
    editorCell.addEditorCell(this.createConstant_mtcnr8_a4c0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_mtcnr8_b4c0(editorContext, node));
    editorCell.addEditorCell(this.createRefNodeList_mtcnr8_c4c0(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_mtcnr8_a4c0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "statement");
    editorCell.setCellId("Constant_mtcnr8_a4c0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createConstant_mtcnr8_b4c0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ":");
    editorCell.setCellId("Constant_mtcnr8_b4c0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.PUNCTUATION_LEFT, 0, true);
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNodeList_mtcnr8_c4c0(EditorContext editorContext, SNode node) {
    AbstractCellListHandler handler = new ManyStatements_Editor.statementListHandler_mtcnr8_c4c0(node, "statement", editorContext);
    EditorCell_Collection editorCell = handler.createCells(editorContext, new CellLayout_Indent(), false);
    editorCell.setCellId("refNodeList_statement");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_CHILDREN_NEWLINE, 0, true);
    style.set(StyleAttributes.INDENT_LAYOUT_INDENT, 0, true);
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setRole(handler.getElementRole());
    return editorCell;
  }
  private static class statementListHandler_mtcnr8_c4c0 extends RefNodeListHandler {
    public statementListHandler_mtcnr8_c4c0(SNode ownerNode, String childRole, EditorContext context) {
      super(ownerNode, childRole, context, false);
    }
    public SNode createNodeToInsert(EditorContext editorContext) {
      SNode listOwner = super.getOwner();
      return NodeFactoryManager.createNode(listOwner, editorContext, super.getElementRole());
    }
    public EditorCell createNodeCell(EditorContext editorContext, SNode elementNode) {
      EditorCell elementCell = super.createNodeCell(editorContext, elementNode);
      this.installElementCellActions(this.getOwner(), elementNode, elementCell, editorContext);
      return elementCell;
    }
    public EditorCell createEmptyCell(EditorContext editorContext) {
      EditorCell emptyCell = null;
      emptyCell = super.createEmptyCell(editorContext);
      this.installElementCellActions(super.getOwner(), null, emptyCell, editorContext);
      return emptyCell;
    }
    public void installElementCellActions(SNode listOwner, SNode elementNode, EditorCell elementCell, EditorContext editorContext) {
      if (elementCell.getUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET) == null) {
        elementCell.putUserObject(AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET, AbstractCellListHandler.ELEMENT_CELL_ACTIONS_SET);
        if (elementNode != null) {
          elementCell.setAction(CellActionType.DELETE, new CellAction_DeleteNode(elementNode));
          elementCell.setAction(CellActionType.BACKSPACE, new CellAction_DeleteNode(elementNode));
        }
        if (elementCell.getSubstituteInfo() == null || elementCell.getSubstituteInfo() instanceof DefaultSubstituteInfo) {
          elementCell.setSubstituteInfo(new DefaultChildSubstituteInfo(listOwner, elementNode, super.getLinkDeclaration(), editorContext));
        }
      }
    }
  }
  private EditorCell createConstant_mtcnr8_f2a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "list1");
    editorCell.setCellId("Constant_mtcnr8_f2a");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createConstant_mtcnr8_g2a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ":");
    editorCell.setCellId("Constant_mtcnr8_g2a");
    Style style = new StyleImpl();
    style.set(StyleAttributes.PUNCTUATION_LEFT, 0, true);
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_mtcnr8_h2a(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new ManyStatements_Editor.list1SingleRoleHandler_mtcnr8_h2a(node, MetaAdapterFactory.getContainmentLink(0xe228eea107ef499cL, 0x88269c47a7e369dbL, 0x4cb3e593ffd97846L, 0x4cb3e593ffd97849L, "list1"), editorContext);
    return provider.createCell();
  }
  private class list1SingleRoleHandler_mtcnr8_h2a extends SingleRoleCellProvider {
    public list1SingleRoleHandler_mtcnr8_h2a(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("list1");
      }
      Style style = new StyleImpl();
      style.set(StyleAttributes.INDENT_LAYOUT_INDENT, 0, true);
      style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
      editorCell.getStyle().putAll(style);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_list1");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no list1>";
    }

  }
  private EditorCell createConstant_mtcnr8_i2a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_mtcnr8_i2a");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createConstant_mtcnr8_j2a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "list2");
    editorCell.setCellId("Constant_mtcnr8_j2a");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createConstant_mtcnr8_k2a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ":");
    editorCell.setCellId("Constant_mtcnr8_k2a");
    Style style = new StyleImpl();
    style.set(StyleAttributes.PUNCTUATION_LEFT, 0, true);
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_mtcnr8_l2a(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new ManyStatements_Editor.list2SingleRoleHandler_mtcnr8_l2a(node, MetaAdapterFactory.getContainmentLink(0xe228eea107ef499cL, 0x88269c47a7e369dbL, 0x4cb3e593ffd97846L, 0x4cb3e593ffd9784bL, "list2"), editorContext);
    return provider.createCell();
  }
  private class list2SingleRoleHandler_mtcnr8_l2a extends SingleRoleCellProvider {
    public list2SingleRoleHandler_mtcnr8_l2a(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("list2");
      }
      Style style = new StyleImpl();
      style.set(StyleAttributes.INDENT_LAYOUT_INDENT, 0, true);
      style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
      editorCell.getStyle().putAll(style);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_list2");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no list2>";
    }

  }
  private EditorCell createConstant_mtcnr8_m2a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "");
    editorCell.setCellId("Constant_mtcnr8_m2a");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createConstant_mtcnr8_d0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "}");
    editorCell.setCellId("Constant_mtcnr8_d0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.MATCHING_LABEL, 0, "body-brace");
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
}
