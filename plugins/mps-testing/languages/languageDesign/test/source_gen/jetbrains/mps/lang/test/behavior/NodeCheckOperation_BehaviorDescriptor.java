package jetbrains.mps.lang.test.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import jetbrains.mps.baseLanguage.unitTest.behavior.ITestMethod_BehaviorDescriptor;
import jetbrains.mps.lang.core.behavior.INamedConcept_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.core.behavior.INamedConcept_Behavior;

public abstract class NodeCheckOperation_BehaviorDescriptor extends BaseConcept_BehaviorDescriptor implements ITestMethod_BehaviorDescriptor, INamedConcept_BehaviorDescriptor {
  public NodeCheckOperation_BehaviorDescriptor() {
  }
  public String virtual_getFqName_1213877404258(SNode thisNode) {
    return INamedConcept_Behavior.virtual_getFqName_1213877404258(thisNode);
  }
  public SNode virtual_getTestCase_1216134500045(SNode thisNode) {
    return NodeCheckOperation_Behavior.virtual_getTestCase_1216134500045(thisNode);
  }
  public String virtual_getTestName_1216136419751(SNode thisNode) {
    return NodeCheckOperation_Behavior.virtual_getTestName_1216136419751(thisNode);
  }
  public boolean virtual_isMpsStartRequired_3310779261129403089(SNode thisNode) {
    return NodeCheckOperation_Behavior.virtual_isMpsStartRequired_3310779261129403089(thisNode);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.lang.test.structure.NodeCheckOperation";
  }
  public abstract String virtual_getDefaultName_8578280453511146306(SNode thisNode);
  public abstract void virtual_perform_245688835340859348(SNode thisNode, SNode node);
}
