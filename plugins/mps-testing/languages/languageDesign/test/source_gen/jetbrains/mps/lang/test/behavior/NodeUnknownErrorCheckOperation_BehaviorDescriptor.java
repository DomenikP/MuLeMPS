package jetbrains.mps.lang.test.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.IDontSubstituteByDefault_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;

public class NodeUnknownErrorCheckOperation_BehaviorDescriptor extends AbstractNodeErrorCheckOperation_BehaviorDescriptor implements IDontSubstituteByDefault_BehaviorDescriptor {
  public NodeUnknownErrorCheckOperation_BehaviorDescriptor() {
  }
  public void virtual_attachReference_2893471348147987863(SNode thisNode, SNode reference) {
    NodeUnknownErrorCheckOperation_Behavior.virtual_attachReference_2893471348147987863(thisNode, reference);
  }
  public boolean virtual_canAttachReference_2893471348147804024(SNode thisNode, SNode reference) {
    return NodeUnknownErrorCheckOperation_Behavior.virtual_canAttachReference_2893471348147804024(thisNode, reference);
  }
  public SNode virtual_getReference_8333855927540237654(SNode thisNode) {
    return NodeUnknownErrorCheckOperation_Behavior.virtual_getReference_8333855927540237654(thisNode);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.test.structure.NodeUnknownErrorCheckOperation";
  }
}
