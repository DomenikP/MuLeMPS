package jetbrains.mps.debugger.java.evaluation.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class EvaluatorsSuperMethodCall_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode virtual_getInstanceType_8008512149545154471(SNode thisNode) {
    return DebuggedType_Behavior.call_getHighClassifierType_4544608336420723238(SLinkOperations.getTarget(SLinkOperations.getTarget(SNodeOperations.getNodeAncestor(thisNode, MetaAdapterFactory.getConcept(0x7da4580f9d754603L, 0x816251a896d78375L, 0x53c5060c6b18d925L, "jetbrains.mps.debugger.java.evaluation.structure.EvaluatorConcept"), false, false), MetaAdapterFactory.getContainmentLink(0x7da4580f9d754603L, 0x816251a896d78375L, 0x53c5060c6b18d925L, 0x3f11b1341fa23613L, "thisNode")), MetaAdapterFactory.getContainmentLink(0x7da4580f9d754603L, 0x816251a896d78375L, 0x3c2f40ee0bb3cbf5L, 0x3f11b1341fa2c39cL, "debuggedType")));
  }
}
