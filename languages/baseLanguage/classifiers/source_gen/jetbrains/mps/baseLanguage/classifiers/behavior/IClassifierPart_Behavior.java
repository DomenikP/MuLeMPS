package jetbrains.mps.baseLanguage.classifiers.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import java.util.ArrayList;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.ListSequence;

public class IClassifierPart_Behavior {
  public static void init(SNode thisNode) {
  }
  public static List<SNode> call_getMembers_1213877255431(SNode thisNode) {
    List<SNode> result = new ArrayList<SNode>();
    for (SNode child : SNodeOperations.getChildren(thisNode)) {
      if (SNodeOperations.isInstanceOf(child, MetaAdapterFactory.getInterfaceConcept(0x443f4c36fcf54eb6L, 0x95008d06ed259e3eL, 0x118bc6becc0L, "jetbrains.mps.baseLanguage.classifiers.structure.IMember"))) {
        ListSequence.fromList(result).addElement(SNodeOperations.cast(child, MetaAdapterFactory.getInterfaceConcept(0x443f4c36fcf54eb6L, 0x95008d06ed259e3eL, 0x118bc6becc0L, "jetbrains.mps.baseLanguage.classifiers.structure.IMember")));
      }
    }
    return result;
  }
}
