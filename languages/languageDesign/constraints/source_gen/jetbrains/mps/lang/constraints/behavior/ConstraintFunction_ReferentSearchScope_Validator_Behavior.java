package jetbrains.mps.lang.constraints.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import java.util.List;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;

public class ConstraintFunction_ReferentSearchScope_Validator_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode call_getSearchScopeFactory_2990203945683059022(SNode thisNode) {
    SNode node = (SNodeOperations.isInstanceOf(SNodeOperations.getParent(thisNode), MetaAdapterFactory.getConcept(0x3f4bc5f5c6c14a28L, 0x8b10c83066ffa4a1L, 0x10dead47852L, "jetbrains.mps.lang.constraints.structure.NodeDefaultSearchScope")) ? SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(thisNode), MetaAdapterFactory.getConcept(0x3f4bc5f5c6c14a28L, 0x8b10c83066ffa4a1L, 0x10dead47852L, "jetbrains.mps.lang.constraints.structure.NodeDefaultSearchScope")), MetaAdapterFactory.getContainmentLink(0x3f4bc5f5c6c14a28L, 0x8b10c83066ffa4a1L, 0x10dead47852L, 0x10dead647b3L, "searchScopeFactory")) : (SNodeOperations.isInstanceOf(SNodeOperations.getParent(thisNode), MetaAdapterFactory.getConcept(0x3f4bc5f5c6c14a28L, 0x8b10c83066ffa4a1L, 0x10b731752daL, "jetbrains.mps.lang.constraints.structure.NodeReferentConstraint")) ? SLinkOperations.getTarget(SNodeOperations.cast(SNodeOperations.getParent(thisNode), MetaAdapterFactory.getConcept(0x3f4bc5f5c6c14a28L, 0x8b10c83066ffa4a1L, 0x10b731752daL, "jetbrains.mps.lang.constraints.structure.NodeReferentConstraint")), MetaAdapterFactory.getContainmentLink(0x3f4bc5f5c6c14a28L, 0x8b10c83066ffa4a1L, 0x10b731752daL, 0x10b7319e797L, "searchScopeFactory")) : null));
    return SNodeOperations.as(node, MetaAdapterFactory.getConcept(0x3f4bc5f5c6c14a28L, 0x8b10c83066ffa4a1L, 0x10b72e99b73L, "jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_Factory"));
  }
  public static List<SNode> virtual_getApplicableConceptFunctionParameter_3044950653914717136(SAbstractConcept thisConcept) {
    List<SNode> result = BehaviorReflection.invokeSuperStatic((Class<List<SNode>>) ((Class) Object.class), SNodeOperations.asSConcept(thisConcept), "jetbrains.mps.lang.constraints.structure.ConstraintFunction_ReferentSearchScope_AbstractBase", "virtual_getApplicableConceptFunctionParameter_3044950653914717136", new Object[]{});
    ListSequence.fromList(result).addElement(SNodeOperations.getNode("r:00000000-0000-4000-0000-011c8959030d(jetbrains.mps.lang.constraints.structure)", "2990203945683059368"));
    return result;
  }
  public static SNode virtual_getExpectedReturnType_1213877374441(SNode thisNode) {
    return _quotation_createNode_cefu43_a0a2();
  }
  private static SNode _quotation_createNode_cefu43_a0a2() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940d6513eL, "jetbrains.mps.baseLanguage.structure.BooleanType"), null, null, false);
    return quotedNode_1;
  }
}
