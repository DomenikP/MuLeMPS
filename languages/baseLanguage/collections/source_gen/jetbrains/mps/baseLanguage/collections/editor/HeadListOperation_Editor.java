package jetbrains.mps.baseLanguage.collections.editor;

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
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.baseLanguage.editor.BaseLanguageStyle_StyleSheet;
import jetbrains.mps.lang.editor.cellProviders.SingleRoleCellProvider;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.nodeEditor.cellMenu.DefaultChildSubstituteInfo;

public class HeadListOperation_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_v360wx_a(editorContext, node);
  }
  private EditorCell createCollection_v360wx_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createHorizontal(editorContext, node);
    editorCell.setCellId("Collection_v360wx_a");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    editorCell.addEditorCell(this.createComponent_v360wx_a0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_v360wx_b0(editorContext, node));
    editorCell.addEditorCell(this.createRefNode_v360wx_c0(editorContext, node));
    editorCell.addEditorCell(this.createConstant_v360wx_d0(editorContext, node));
    return editorCell;
  }
  private EditorCell createComponent_v360wx_a0(EditorContext editorContext, SNode node) {
    EditorCell editorCell = editorContext.getCellFactory().createEditorComponentCell(node, "jetbrains.mps.lang.core.editor.alias");
    Style style = new StyleImpl();
    Collections_Style_StyleSheet.apply_Operation(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setSubstituteInfo(new CompositeSubstituteInfo(editorContext, new BasicCellContext(node), new SubstituteInfoPartExt[]{new HeadListOperation_Editor.ReplaceWith_SequenceOperation_cellMenu_v360wx_a0a0()}));
    return editorCell;
  }
  public static class ReplaceWith_SequenceOperation_cellMenu_v360wx_a0a0 extends AbstractCellMenuPart_ReplaceNode_CustomNodeConcept {
    public ReplaceWith_SequenceOperation_cellMenu_v360wx_a0a0() {
    }
    public String getReplacementConceptName() {
      return "jetbrains.mps.baseLanguage.collections.structure.SequenceOperation";
    }
  }
  private EditorCell createConstant_v360wx_b0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "(");
    editorCell.setCellId("Constant_v360wx_b0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_LeftParenAfterName(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createRefNode_v360wx_c0(EditorContext editorContext, SNode node) {
    SingleRoleCellProvider provider = new HeadListOperation_Editor.upToIndexSingleRoleHandler_v360wx_c0(node, MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x489c7f2006b05842L, 0x489c7f2006b05844L, "upToIndex"), editorContext);
    return provider.createCell();
  }
  private class upToIndexSingleRoleHandler_v360wx_c0 extends SingleRoleCellProvider {
    public upToIndexSingleRoleHandler_v360wx_c0(SNode ownerNode, SContainmentLink containmentLink, EditorContext context) {
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
        editorCell.setRole("upToIndex");
      }
    }


    @Override
    protected EditorCell createEmptyCell() {
      EditorCell editorCell = super.createEmptyCell();
      editorCell.setCellId("empty_upToIndex");
      installCellInfo(null, editorCell);
      return editorCell;
    }

    protected String getNoTargetText() {
      return "<no upToIndex>";
    }

  }
  private EditorCell createConstant_v360wx_d0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, ")");
    editorCell.setCellId("Constant_v360wx_d0");
    Style style = new StyleImpl();
    BaseLanguageStyle_StyleSheet.apply_RightParen(style, editorCell);
    editorCell.getStyle().putAll(style);
    editorCell.setDefaultText("");
    return editorCell;
  }
}
