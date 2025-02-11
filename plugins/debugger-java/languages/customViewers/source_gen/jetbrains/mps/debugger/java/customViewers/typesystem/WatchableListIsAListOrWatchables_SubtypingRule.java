package jetbrains.mps.debugger.java.customViewers.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.SubtypingRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.ISubtypingRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SReference;

public class WatchableListIsAListOrWatchables_SubtypingRule extends SubtypingRule_Runtime implements ISubtypingRule_Runtime {
  public WatchableListIsAListOrWatchables_SubtypingRule() {
  }
  public SNode getSubOrSuperType(SNode watchableListType, TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    return createClassifierType_izre6f_a0a1();
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0xfa8aeae94df94e13L, 0xbfb19b04c67ddb77L, 0x19926b3196c33bb3L, "jetbrains.mps.debugger.java.customViewers.structure.WatchableListType");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean isWeak() {
    return false;
  }
  private static SNode createClassifierType_izre6f_a0a1() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode n1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    {
      n1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), n1, facade.createModelReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)"), facade.createNodeId("~List")));
      SNode n2 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xfa8aeae94df94e13L, 0xbfb19b04c67ddb77L, 0x47047b766556944dL, "jetbrains.mps.debugger.java.customViewers.structure.WatchableType"), null, null, false);
      n1.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x102419671abL, "parameter"), n2);
    }
    return n1;
  }
}
