package jetbrains.mps.console.ideCommands.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;

public class AbsractMake_Behavior {
  public static void init(SNode thisNode) {
  }
  public static Iterable<SNode> virtual_getSupportedParameters_4307205004146936444(SAbstractConcept thisConcept) {
    return null;
  }
  public static String virtual_getDisplayString_6891027939994892943(SAbstractConcept thisConcept) {
    return BehaviorReflection.invokeVirtualStatic(String.class, SNodeOperations.asSConcept(SConceptOperations.findConceptDeclaration(thisConcept.getQualifiedName())), "virtual_getShortDisplayString_7006261637493126103", new Object[]{});
  }
}
