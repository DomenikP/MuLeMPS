package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import jetbrains.mps.lang.core.behavior.BaseConcept_BehaviorDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;

public class GetAccessor_BehaviorDescriptor extends BaseConcept_BehaviorDescriptor implements IMethodLike_BehaviorDescriptor, IStatementListContainer_BehaviorDescriptor {
  public GetAccessor_BehaviorDescriptor() {
  }
  public SNode virtual_getBody_1239354440022(SNode thisNode) {
    return GetAccessor_Behavior.virtual_getBody_1239354440022(thisNode);
  }
  public SNode virtual_getExpectedRetType_1239354342632(SNode thisNode) {
    return GetAccessor_Behavior.virtual_getExpectedRetType_1239354342632(thisNode);
  }
  public SNode virtual_getLastStatement_1239354409446(SNode thisNode) {
    return IMethodLike_Behavior.virtual_getLastStatement_1239354409446(thisNode);
  }
  public List<SNode> virtual_getThrowableTypes_6204026822016975623(SNode thisNode) {
    return GetAccessor_Behavior.virtual_getThrowableTypes_6204026822016975623(thisNode);
  }
  public boolean virtual_implicitThrows_4989157187872658723(SNode thisNode) {
    return IMethodLike_Behavior.virtual_implicitThrows_4989157187872658723(thisNode);
  }
  public boolean virtual_isClosure_3262277503800835439(SNode thisNode) {
    return IStatementListContainer_Behavior.virtual_isClosure_3262277503800835439(thisNode);
  }
  public boolean virtual_isExecuteSynchronous_1230212745736(SNode thisNode) {
    return IStatementListContainer_Behavior.virtual_isExecuteSynchronous_1230212745736(thisNode);
  }
  public boolean virtual_supportsCheckedExceptions_8510677279630867629(SNode thisNode) {
    return IMethodLike_Behavior.virtual_supportsCheckedExceptions_8510677279630867629(thisNode);
  }
  public boolean virtual_suppress_3393165121846091591(SNode thisNode, SNode child) {
    return IMethodLike_Behavior.virtual_suppress_3393165121846091591(thisNode, child);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.structure.GetAccessor";
  }
}
