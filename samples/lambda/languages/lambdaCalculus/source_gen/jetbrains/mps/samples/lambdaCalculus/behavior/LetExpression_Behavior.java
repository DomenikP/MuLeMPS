package jetbrains.mps.samples.lambdaCalculus.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class LetExpression_Behavior {
  public static void init(SNode thisNode) {
  }
  public static List<SNode> virtual_getVariables_8981808925914841576(SNode thisNode) {
    List<SNode> result = new ArrayList<SNode>();
    ListSequence.fromList(result).addElement(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0x7c9e280794ad4afcL, 0xadf0aaee45eb2895L, 0x448ba254edbfc79fL, 0x74076973acb5af30L, "variable")));
    return result;
  }
}
