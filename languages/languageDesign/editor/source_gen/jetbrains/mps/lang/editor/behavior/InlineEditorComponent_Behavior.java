package jetbrains.mps.lang.editor.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class InlineEditorComponent_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode virtual_getConceptDeclaration_7055725856388417603(SNode thisNode) {
    return SLinkOperations.getTarget(SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(thisNode), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xfd52a2c922L, "jetbrains.mps.lang.editor.structure.CellModel_RefCell")), MetaAdapterFactory.getReferenceLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10964446123L, 0x10973779681L, "relationDeclaration")), MetaAdapterFactory.getReferenceLink(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98055fef0L, "target"));
  }
}
