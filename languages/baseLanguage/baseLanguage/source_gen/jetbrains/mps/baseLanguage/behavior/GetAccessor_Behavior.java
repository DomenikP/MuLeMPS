package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.List;
import java.util.ArrayList;

public class GetAccessor_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode virtual_getExpectedRetType_1239354342632(SNode thisNode) {
    return SLinkOperations.getTarget(SNodeOperations.getNodeAncestor(thisNode, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x117b744dafeL, "jetbrains.mps.baseLanguage.structure.Property"), false, false), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x117b744dafeL, 0x117b752a0b9L, "type"));
  }
  public static SNode virtual_getBody_1239354440022(SNode thisNode) {
    return SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x117b9245fc5L, 0x11800267618L, "statementList"));
  }
  public static List<SNode> virtual_getThrowableTypes_6204026822016975623(SNode thisNode) {
    return new ArrayList<SNode>();
  }
}
