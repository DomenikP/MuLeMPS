package jetbrains.mps.lang.pattern.editor;

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
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;
import jetbrains.mps.nodeEditor.EditorManager;
import jetbrains.mps.nodeEditor.attribute.AttributeKind;

public class ActionAsPattern_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_x7b2gi_a(editorContext, node);
  }
  private EditorCell createCollection_x7b2gi_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_x7b2gi_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    if (renderingCondition_x7b2gi_a0a(node, editorContext)) {
      editorCell.addEditorCell(this.createCollection_x7b2gi_a0(editorContext, node));
    }
    if (renderingCondition_x7b2gi_a1a(node, editorContext)) {
      editorCell.addEditorCell(this.createCollection_x7b2gi_b0(editorContext, node));
    }
    return editorCell;
  }
  private EditorCell createCollection_x7b2gi_a0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_x7b2gi_a0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(this.createConstant_x7b2gi_a0a(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_x7b2gi_b0a(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_x7b2gi_c0a(editorContext, node));
    editorCell.addEditorCell(this.createAttributedNodeCell_x7b2gi_d0a(editorContext, node));
    return editorCell;
  }
  private static boolean renderingCondition_x7b2gi_a0a(SNode node, EditorContext editorContext) {
    return !(SNodeOperations.isInstanceOf(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x3d3ef1fc1814cb54L, 0x7cc3195fc1d254beL, "position")), MetaAdapterFactory.getConcept(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x16e4c142caf2bd38L, "jetbrains.mps.lang.pattern.structure.InsertAfterPosition")));
  }
  private EditorCell createConstant_x7b2gi_a0a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "$");
    editorCell.setCellId("Constant_x7b2gi_a0a");
    Style style = new StyleImpl();
    style.set(StyleAttributes.PUNCTUATION_RIGHT, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_x7b2gi_b0a(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new ActionAsPattern_Editor.actionSingleRoleHandler_x7b2gi_b0a(node, MetaAdapterFactory.getContainmentLink(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x3d3ef1fc1814cb54L, 0x3d3ef1fc1814cb59L, "action"), editorContext);
    return provider.createCell();
  }
  private class actionSingleRoleHandler_x7b2gi_b0a extends SingleRoleCellProvider {
    public actionSingleRoleHandler_x7b2gi_b0a(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("action");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_action");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no action>";
    }

  }
  private EditorCell createRefNode_x7b2gi_c0a(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new ActionAsPattern_Editor.positionSingleRoleHandler_x7b2gi_c0a(node, MetaAdapterFactory.getContainmentLink(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x3d3ef1fc1814cb54L, 0x7cc3195fc1d254beL, "position"), editorContext);
    return provider.createCell();
  }
  private class positionSingleRoleHandler_x7b2gi_c0a extends SingleRoleCellProvider {
    public positionSingleRoleHandler_x7b2gi_c0a(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("position");
      }
      Style style = new StyleImpl();
      style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
      editorCell.getStyle().putAll(style);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_position");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no position>";
    }

  }
  private EditorCell createAttributedNodeCell_x7b2gi_d0a(EditorContext editorContext, SNode node) {
    EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
    EditorCell editorCell = manager.getCurrentAttributedCellWithRole(AttributeKind.Node.class, node);
    Style style = new StyleImpl();
    style.set(StyleAttributes.DRAW_BRACKETS, 0, true);
    editorCell.getStyle().putAll(style);
    return editorCell;
  }
  private EditorCell createCollection_x7b2gi_b0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_x7b2gi_b0");
    Style style = new StyleImpl();
    style.set(StyleAttributes.SELECTABLE, 0, false);
    editorCell.getStyle().putAll(style);
    editorCell.addEditorCell(this.createAttributedNodeCell_x7b2gi_a1a(editorContext, node));
    editorCell.addEditorCell(this.createConstant_x7b2gi_b1a(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_x7b2gi_c1a(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_x7b2gi_d1a(editorContext, node));
    return editorCell;
  }
  private static boolean renderingCondition_x7b2gi_a1a(SNode node, EditorContext editorContext) {
    return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x3d3ef1fc1814cb54L, 0x7cc3195fc1d254beL, "position")), MetaAdapterFactory.getConcept(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x16e4c142caf2bd38L, "jetbrains.mps.lang.pattern.structure.InsertAfterPosition"));
  }
  private EditorCell createAttributedNodeCell_x7b2gi_a1a(EditorContext editorContext, SNode node) {
    EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
    EditorCell editorCell = manager.getCurrentAttributedCellWithRole(AttributeKind.Node.class, node);
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    style.set(StyleAttributes.DRAW_BRACKETS, 0, true);
    editorCell.getStyle().putAll(style);
    return editorCell;
  }
  private EditorCell createConstant_x7b2gi_b1a(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "$");
    editorCell.setCellId("Constant_x7b2gi_b1a");
    Style style = new StyleImpl();
    style.set(StyleAttributes.PUNCTUATION_RIGHT, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_x7b2gi_c1a(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new ActionAsPattern_Editor.actionSingleRoleHandler_x7b2gi_c1a(node, MetaAdapterFactory.getContainmentLink(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x3d3ef1fc1814cb54L, 0x3d3ef1fc1814cb59L, "action"), editorContext);
    return provider.createCell();
  }
  private class actionSingleRoleHandler_x7b2gi_c1a extends SingleRoleCellProvider {
    public actionSingleRoleHandler_x7b2gi_c1a(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("action");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_action");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no action>";
    }

  }
  private EditorCell createRefNode_x7b2gi_d1a(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new ActionAsPattern_Editor.positionSingleRoleHandler_x7b2gi_d1a(node, MetaAdapterFactory.getContainmentLink(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x3d3ef1fc1814cb54L, 0x7cc3195fc1d254beL, "position"), editorContext);
    return provider.createCell();
  }
  private class positionSingleRoleHandler_x7b2gi_d1a extends SingleRoleCellProvider {
    public positionSingleRoleHandler_x7b2gi_d1a(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("position");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_position");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no position>";
    }

  }
}
