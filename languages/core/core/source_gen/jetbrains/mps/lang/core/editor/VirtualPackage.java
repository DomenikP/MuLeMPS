package jetbrains.mps.lang.core.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.descriptor.ConceptEditorComponent;
import java.util.Collection;
import java.util.Collections;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.nodeEditor.cells.EditorCell_Collection;
import jetbrains.mps.nodeEditor.cells.EditorCell_Constant;
import jetbrains.mps.nodeEditor.cellProviders.CellProviderWithRole;
import jetbrains.mps.lang.editor.cellProviders.PropertyCellProvider;
import jetbrains.mps.nodeEditor.EditorManager;

public class VirtualPackage implements ConceptEditorComponent {
  public Collection<String> getContextHints() {
    return Collections.emptyList();
  }
  public EditorCell createEditorCell(EditorContext editorContext, SNode node) {
    return this.createCollection_fwba0d_a(editorContext, node);
  }
  private EditorCell createCollection_fwba0d_a(EditorContext editorContext, SNode node) {
    EditorCell_Collection editorCell = EditorCell_Collection.createIndent2(editorContext, node);
    editorCell.setCellId("Collection_fwba0d_a");
    editorCell.addEditorCell(this.createConstant_fwba0d_a0(editorContext, node));
    editorCell.addEditorCell(this.createProperty_fwba0d_b0(editorContext, node));
    return editorCell;
  }
  private EditorCell createConstant_fwba0d_a0(EditorContext editorContext, SNode node) {
    EditorCell_Constant editorCell = new EditorCell_Constant(editorContext, node, "virtual package:");
    editorCell.setCellId("Constant_fwba0d_a0");
    editorCell.setDefaultText("");
    return editorCell;
  }
  private EditorCell createProperty_fwba0d_b0(EditorContext editorContext, SNode node) {
    CellProviderWithRole provider = new PropertyCellProvider(node, editorContext);
    provider.setRole("virtualPackage");
    provider.setNoTargetText("none");
    provider.setAllowsEmptyTarget(true);
    EditorCell editorCell;
    editorCell = provider.createEditorCell(editorContext);
    editorCell.setCellId("VP_property_virtualPackage");
    editorCell.setSubstituteInfo(provider.createDefaultSubstituteInfo());
    SNode attributeConcept = provider.getRoleAttribute();
    Class attributeKind = provider.getRoleAttributeClass();
    if (attributeConcept != null) {
      EditorManager manager = EditorManager.getInstanceFromContext(editorContext);
      return manager.createNodeRoleAttributeCell(attributeConcept, attributeKind, editorCell);
    } else
    return editorCell;
  }
}
