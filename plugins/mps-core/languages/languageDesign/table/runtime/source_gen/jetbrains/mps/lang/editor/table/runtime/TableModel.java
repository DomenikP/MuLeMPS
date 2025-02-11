package jetbrains.mps.lang.editor.table.runtime;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.cells.SubstituteInfo;

public interface TableModel {
  public int getColumnCount();
  public int getRowCount();
  public void deleteRow(int rowNumber);
  public SNode getValueAt(int row, int column);
  public void createElement(int row, int column);
  public SubstituteInfo getSubstituteInfo(int row, int column);
  public void insertRow(int rowNumber);
  public void deleteColumn(int columnNumber);
  public void insertColumn(int columnNumber);
  public int getMaxColumnWidth(int columnNumber);
}
