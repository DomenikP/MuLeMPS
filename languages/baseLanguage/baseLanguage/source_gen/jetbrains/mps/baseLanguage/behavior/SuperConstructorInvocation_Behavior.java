package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import java.util.ArrayList;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;

public class SuperConstructorInvocation_Behavior {
  public static void init(SNode thisNode) {
  }
  public static Iterable<SNode> virtual_getAvailableMethodDeclarations_5776618742611315379(SNode thisNode, String methodName) {
    SNode classConcept = SNodeOperations.getNodeAncestor(thisNode, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"), false, false);
    SNode superclassType = BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), classConcept, "virtual_getSuperclass_1240936569950", new Object[]{});
    if ((superclassType == null)) {
      return new ArrayList<SNode>();
    }

    SNode superClassifier = SLinkOperations.getTarget(superclassType, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"));

    if ((superClassifier == null) || !(SNodeOperations.isInstanceOf(superClassifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept")))) {
      return new ArrayList<SNode>();
    }

    SNode superclass = SNodeOperations.cast(superClassifier, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"));
    return ClassConcept_Behavior.call_constructors_5292274854859503373(superclass);
  }
}
