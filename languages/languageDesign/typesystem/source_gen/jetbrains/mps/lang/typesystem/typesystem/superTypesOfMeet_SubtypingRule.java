package jetbrains.mps.lang.typesystem.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.SubtypingRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.ISubtypingRule_Runtime;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class superTypesOfMeet_SubtypingRule extends SubtypingRule_Runtime implements ISubtypingRule_Runtime {
  public superTypesOfMeet_SubtypingRule() {
  }
  public List<SNode> getSubOrSuperTypes(SNode meet, TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    List<SNode> result = new ArrayList<SNode>();
    for (SNode arg : ListSequence.fromList(SLinkOperations.getChildren(meet, MetaAdapterFactory.getContainmentLink(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x114b68ad132L, 0x114b68b040bL, "argument")))) {
      ListSequence.fromList(result).addElement(SNodeOperations.copyNode(arg));
    }
    return result;
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x114b68ad132L, "jetbrains.mps.lang.typesystem.structure.MeetType");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean isWeak() {
    return false;
  }
}
