package jetbrains.mps.lang.plugin.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.List;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.internal.collections.runtime.ListSequence;

public class PersistentPropertyDeclaration_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode virtual_getVisiblity_1213877352965(SNode thisNode) {
    return SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x10af9581ff1L, "jetbrains.mps.baseLanguage.structure.PublicVisibility")));
  }
  public static List<SNode> virtual_getOperationConcept_3044950653914717125(SAbstractConcept thisConcept) {
    List<SNode> result = BehaviorReflection.invokeSuperStatic((Class<List<SNode>>) ((Class) Object.class), SNodeOperations.asSConcept(thisConcept), "jetbrains.mps.baseLanguage.classifiers.structure.IMember", "virtual_getOperationConcept_3044950653914717125", new Object[]{});
    ListSequence.fromList(result).addElement(SNodeOperations.getNode("r:00000000-0000-4000-0000-011c89590368(jetbrains.mps.lang.plugin.structure)", "1210180874794"));
    return result;
  }
}
