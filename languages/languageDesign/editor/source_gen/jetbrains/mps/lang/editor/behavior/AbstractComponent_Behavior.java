package jetbrains.mps.lang.editor.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class AbstractComponent_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode virtual_getConceptDeclaration_7055725856388417603(SNode thisNode) {
    return SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10f7df344a9L, 0x10f7df451aeL, "conceptDeclaration"));
  }
}
