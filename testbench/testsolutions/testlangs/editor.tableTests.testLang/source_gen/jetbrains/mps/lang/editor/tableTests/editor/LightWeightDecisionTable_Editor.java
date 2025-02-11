package jetbrains.mps.lang.editor.tableTests.editor;

/*Generated by MPS */

import jetbrains.mps.nodeEditor.DefaultNodeEditor;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.editor.table.runtime.TableModelFactory;
import jetbrains.mps.lang.editor.table.runtime.TableModel;
import jetbrains.mps.lang.editor.table.runtime.XYCTableModel;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.openapi.editor.cells.EditorCell_Collection;
import jetbrains.mps.lang.editor.table.runtime.EditorCell_Table;
import jetbrains.mps.openapi.editor.cells.CellActionType;
import jetbrains.mps.editor.runtime.impl.cellActions.CellAction_Comment;

public class LightWeightDecisionTable_Editor extends DefaultNodeEditor {
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createTable_qbxdb8_a(editorContext, node);
  }
  private EditorCell createTable_qbxdb8_a(EditorContext editorContext, SNode node) {
    TableModelFactory creator = new TableModelFactory() {
      public TableModel createTableModel(final SNode node, final EditorContext editorContext) {
        return new XYCTableModel(node, SLinkOperations.findLinkDeclaration(MetaAdapterFactory.getContainmentLink(0xdf8799e7254a406fL, 0xbd67f4cc27337152L, 0x6a2febf37d11d3dfL, 0x6a2febf37d121001L, "column")), SLinkOperations.findLinkDeclaration(MetaAdapterFactory.getContainmentLink(0xdf8799e7254a406fL, 0xbd67f4cc27337152L, 0x6a2febf37d11d3dfL, 0x6a2febf37d121026L, "row")), SLinkOperations.findLinkDeclaration(MetaAdapterFactory.getContainmentLink(0xdf8799e7254a406fL, 0xbd67f4cc27337152L, 0x6a2febf37d11d3dfL, 0x6a2febf37d121027L, "body")), editorContext) {};
      }
    };
    EditorCell_Collection editorCell = EditorCell_Table.createTable(editorContext, node, creator.createTableModel(node, editorContext), "Table_qbxdb8_a");
    editorCell.setCellId("Table_qbxdb8_a_0");
    editorCell.setBig(true);
    editorCell.setAction(CellActionType.COMMENT, new CellAction_Comment(node));
    return editorCell;
  }
}
