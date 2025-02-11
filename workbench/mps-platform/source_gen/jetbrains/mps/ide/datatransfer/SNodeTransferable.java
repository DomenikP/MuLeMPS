package jetbrains.mps.ide.datatransfer;

/*Generated by MPS */

import java.awt.datatransfer.Transferable;
import org.jetbrains.annotations.NotNull;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.ArrayList;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SModelReference;
import java.util.Set;
import java.util.HashSet;
import org.jetbrains.mps.openapi.language.SLanguage;
import java.awt.datatransfer.DataFlavor;
import java.util.Map;
import java.util.Collections;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.io.IOException;
import java.io.StringReader;
import jetbrains.mps.datatransfer.PasteNodeData;

public class SNodeTransferable implements Transferable {
  @NotNull
  private List<SNode> mySNodes = new ArrayList<SNode>();
  @Nullable
  private SNodeReference mySNodeReference;
  @Nullable
  private SModelReference mySourceModel;
  @NotNull
  private Set<SModelReference> myNecessaryModels = new HashSet<SModelReference>();
  @NotNull
  private Set<SLanguage> myNecessaryLanguages = new HashSet<SLanguage>();
  @Nullable
  private String myText;
  @NotNull
  private List<DataFlavor> mySupportedDataFlavors = new ArrayList<DataFlavor>(4);

  public SNodeTransferable(List<SNode> nodes, String text) {
    saveNodes(nodes, null);
    if (nodes.size() == 1) {
      saveNodeReference(nodes.get(0));
    }
    saveText(text);
  }
  /**
   * Deprecated since MPS 3.1 looks like not used anymore
   */
  @Deprecated
  public SNodeTransferable(List<SNode> nodes) {
    saveNodes(nodes, null);
    if (nodes.size() == 1) {
      saveNodeReference(nodes.get(0));
    }
    saveText("");
  }
  public SNodeTransferable(@NotNull List<SNode> nodes, String text, Map<SNode, Set<SNode>> nodesAndAttributes) {
    saveNodes(nodes, nodesAndAttributes);
    if (nodes.size() == 1) {
      saveNodeReference(nodes.get(0));
    }
    saveText(text);
  }
  /**
   * Deprecated since MPS 3.1 looks like not used anymore
   */
  @Deprecated
  public SNodeTransferable(SNode node) {
    saveNodes(Collections.singletonList(node), null);
    saveNodeReference(node);
    saveText("");
  }
  public SNodeTransferable(String text, SNode node) {
    saveText(text);
    saveNodes(Collections.singletonList(node), null);
    saveNodeReference(node);
  }
  @Override
  public DataFlavor[] getTransferDataFlavors() {
    return mySupportedDataFlavors.toArray(new DataFlavor[mySupportedDataFlavors.size()]);
  }
  @Override
  public boolean isDataFlavorSupported(DataFlavor flavor) {
    return mySupportedDataFlavors.contains(flavor);
  }
  @Override
  public Object getTransferData(DataFlavor flavor) throws UnsupportedFlavorException, IOException {
    if (isDataFlavorSupported(flavor)) {
      if (flavor.equals(SModelDataFlavor.sNode)) {
        return this;
      } else if (flavor.equals(SModelDataFlavor.sNodeReference)) {
        return mySNodeReference;
      } else
      if (flavor.equals(DataFlavor.stringFlavor)) {
        return getAsString();
      } else
      if (flavor.equals(DataFlavor.plainTextFlavor)) {
        return new StringReader(getAsString());
      }
    }
    throw new UnsupportedFlavorException(flavor);
  }
  private String getAsString() {
    return myText;
  }
  private void saveNodes(@NotNull List<SNode> nodes, @Nullable Map<SNode, Set<SNode>> nodesAndAttributes) {
    for (SNode node : nodes) {
      assert node.getParent() == nodes.get(0).getParent();
    }
    assert mySNodes.isEmpty();
    PasteNodeData pasteNodeData = CopyPasteUtil.createNodeDataIn(nodes, nodesAndAttributes);
    mySNodes.addAll(pasteNodeData.getNodes());
    mySourceModel = pasteNodeData.getSourceModel();
    myNecessaryModels = pasteNodeData.getNecessaryModels();
    myNecessaryLanguages = pasteNodeData.getNecessaryLanguages();
    mySupportedDataFlavors.add(SModelDataFlavor.sNode);
  }
  private void saveNodeReference(@NotNull SNode node) {
    mySNodeReference = node.getReference();
    mySupportedDataFlavors.add(SModelDataFlavor.sNodeReference);
  }
  private void saveText(String text) {
    myText = text;
    mySupportedDataFlavors.add(DataFlavor.stringFlavor);
    mySupportedDataFlavors.add(DataFlavor.plainTextFlavor);
  }
  public PasteNodeData createNodeData() {
    return CopyPasteUtil.createNodeDataOut(mySNodes, mySourceModel, new HashSet<SLanguage>(myNecessaryLanguages), new HashSet<SModelReference>(myNecessaryModels));
  }
  public boolean containsNodes() {
    return (!(mySNodes.isEmpty()));
  }
}
