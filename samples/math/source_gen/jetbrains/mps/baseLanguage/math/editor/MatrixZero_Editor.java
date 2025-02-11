package jetbrains.mps.baseLanguage.math.editor;

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
import jetbrains.mps.baseLanguage.editor.BaseLanguageStyle_StyleSheet;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.editor.runtime.style.ScriptKind;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.lang.editor.cellProviders.PropertyCellProvider;
import jetbrains.mps.nodeEditor.EditorManager;

public class MatrixZero_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_d13tpt_a(editorContext, node);
  }
  public EditorCell createInspectedCell(EditorContext editorContext, SNode node) {
    return this.createCollection_d13tpt_a_0(editorContext, node);
  }
  private EditorCell createCollection_d13tpt_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createSuperscript(editorContext, node);
    editorCell.setCellId("Collection_d13tpt_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createConstant_d13tpt_a0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_d13tpt_b0(editorContext, node));
    if (renderingCondition_d13tpt_a2a(node, editorContext)) {
      editorCell.addEditorCell(this.createConstant_d13tpt_c0(editorContext, node));
    }
    if (renderingCondition_d13tpt_a3a(node, editorContext)) {
      editorCell.addEditorCell(this.createRefNode_d13tpt_d0(editorContext, node));
    }
    return editorCell;
  }
  private EditorCell createConstant_d13tpt_a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "0");
    editorCell.setCellId("Constant_d13tpt_a0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_KeyWord(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_d13tpt_b0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new MatrixZero_Editor.rowsSingleRoleHandler_d13tpt_b0(node, MetaAdapterFactory.getContainmentLink(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x36700251396ecb7bL, 0x3670025139713334L, "rows"), editorContext);
    return provider.createCell();
  }
  private class rowsSingleRoleHandler_d13tpt_b0 extends SingleRoleCellProvider {
    public rowsSingleRoleHandler_d13tpt_b0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("rows");
      }
      Style style = new StyleImpl();
      style.set(StyleAttributes.SCRIPT_KIND, 0, ScriptKind.SUBSCRIPT);
      editorCell.getStyle().putAll(style);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_rows");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no rows>";
    }

  }
  private EditorCell createConstant_d13tpt_c0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "x");
    editorCell.setCellId("Constant_d13tpt_c0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_KeyWord(style, editorCell);
    style.set(StyleAttributes.SCRIPT_KIND, 0, ScriptKind.SUBSCRIPT);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private static boolean renderingCondition_d13tpt_a2a(SNode node, EditorContext editorContext) {
    return !(SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x36700251396ecb7bL, 0x3670025139713336L, "square")));
  }
  private EditorCell createRefNode_d13tpt_d0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new MatrixZero_Editor.columnsSingleRoleHandler_d13tpt_d0(node, MetaAdapterFactory.getContainmentLink(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x36700251396ecb7bL, 0x3670025139713335L, "columns"), editorContext);
    return provider.createCell();
  }
  private class columnsSingleRoleHandler_d13tpt_d0 extends SingleRoleCellProvider {
    public columnsSingleRoleHandler_d13tpt_d0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("columns");
      }
      Style style = new StyleImpl();
      style.set(StyleAttributes.SCRIPT_KIND, 0, ScriptKind.SUBSCRIPT);
      editorCell.getStyle().putAll(style);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_columns");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no columns>";
    }

  }
  private static boolean renderingCondition_d13tpt_a3a(SNode node, EditorContext editorContext) {
    return !(SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x36700251396ecb7bL, 0x3670025139713336L, "square")));
  }
  private EditorCell createCollection_d13tpt_a_0(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_d13tpt_a_0");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createConstant_d13tpt_a0_0(editorContext, node));
    editorCell.addEditorCell(this.createProperty_d13tpt_b0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_d13tpt_c0_0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_d13tpt_d0_0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_d13tpt_e0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_d13tpt_f0(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_d13tpt_a0_0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "square");
    editorCell.setCellId("Constant_d13tpt_a0_0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createProperty_d13tpt_b0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("square");
    provider.setNoTargetText("<no square>");
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("property_square");
    Style style = new StyleImpl();
    style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
    editorCell.getStyle().putAll(style);
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
  private EditorCell createConstant_d13tpt_c0_0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "rows");
    editorCell.setCellId("Constant_d13tpt_c0_0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_d13tpt_d0_0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new MatrixZero_Editor.rowsSingleRoleHandler_d13tpt_d0(node, MetaAdapterFactory.getContainmentLink(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x36700251396ecb7bL, 0x3670025139713334L, "rows"), editorContext);
    return provider.createCell();
  }
  private class rowsSingleRoleHandler_d13tpt_d0 extends SingleRoleCellProvider {
    public rowsSingleRoleHandler_d13tpt_d0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("rows");
      }
      Style style = new StyleImpl();
      style.set(StyleAttributes.INDENT_LAYOUT_NEW_LINE, 0, true);
      editorCell.getStyle().putAll(style);
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_rows");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no rows>";
    }

  }
  private EditorCell createConstant_d13tpt_e0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "columns");
    editorCell.setCellId("Constant_d13tpt_e0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_d13tpt_f0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new MatrixZero_Editor.columnsSingleRoleHandler_d13tpt_f0(node, MetaAdapterFactory.getContainmentLink(0x3304fc6e7c6b401eL, 0xa016b944934bb21fL, 0x36700251396ecb7bL, 0x3670025139713335L, "columns"), editorContext);
    return provider.createCell();
  }
  private class columnsSingleRoleHandler_d13tpt_f0 extends SingleRoleCellProvider {
    public columnsSingleRoleHandler_d13tpt_f0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("columns");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_columns");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no columns>";
    }

  }
}
