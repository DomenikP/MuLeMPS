package jetbrains.mps.debugger.api.lang.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.SReference;

public class ConceptFunction_CreateBreakpoint_Behavior {
  public static void init(SNode thisNode) {
  }
  public static List<SNode> virtual_getApplicableConceptFunctionParameter_3044950653914717136(SAbstractConcept thisConcept) {
    List<SNode> result = BehaviorReflection.invokeSuperStatic((Class<List<SNode>>) ((Class) Object.class), SNodeOperations.asSConcept(thisConcept), "jetbrains.mps.baseLanguage.structure.ConceptFunction", "virtual_getApplicableConceptFunctionParameter_3044950653914717136", new Object[]{});
    ListSequence.fromList(result).addElement(SNodeOperations.getNode("r:f516737e-c915-4042-896e-de34190042b2(jetbrains.mps.debugger.api.lang.structure)", "1270798772176052880"));
    ListSequence.fromList(result).addElement(SNodeOperations.getNode("r:f516737e-c915-4042-896e-de34190042b2(jetbrains.mps.debugger.api.lang.structure)", "1270798772176052876"));
    return result;
  }
  public static SNode virtual_getExpectedReturnType_1213877374441(SNode thisNode) {
    return _quotation_createNode_m5jr7m_a0a1();
  }
  public static List<SNode> virtual_getThrowableTypes_6204026822016975623(SNode thisNode) {
    List<SNode> result = BehaviorReflection.invokeSuper((Class<List<SNode>>) ((Class) Object.class), thisNode, "jetbrains.mps.baseLanguage.structure.ConceptFunction", "virtual_getThrowableTypes_6204026822016975623", new Object[]{});
    ListSequence.fromList(result).addSequence(ListSequence.fromList(ListSequence.fromListAndArray(new ArrayList<SNode>(), _quotation_createNode_m5jr7m_a0a0a1a2())));
    return result;
  }
  private static SNode _quotation_createNode_m5jr7m_a0a1() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("r:d910d08e-4a00-41f9-ac8b-b7c374586874(jetbrains.mps.debug.api.breakpoints)"), facade.createNodeId("4474271214082913201")));
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_m5jr7m_a0a0a1a2() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("r:c02662c0-67c5-4c3a-8d3a-cd7ffe189340(jetbrains.mps.debug.api)"), facade.createNodeId("4474271214082915164")));
    return quotedNode_1;
  }
}
