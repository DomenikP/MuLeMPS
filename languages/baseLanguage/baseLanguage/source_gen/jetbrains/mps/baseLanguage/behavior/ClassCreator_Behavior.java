package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import org.jetbrains.mps.openapi.model.SReference;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.smodel.StaticReference;
import java.util.Collections;
import org.jetbrains.mps.openapi.model.SNodeId;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.smodel.LanguageID;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;

public class ClassCreator_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode virtual_getInstanceType_8008512149545154471(SNode thisNode) {
    SNode classConcept = SNodeOperations.getNodeAncestor(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"), false, false);
    SNode classifierType = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType")));
    SLinkOperations.setTarget(classifierType, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), classConcept);
    for (SNode typeParameter : SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11a59b0fbceL, 0x11a59c8ffe0L, "typeParameter"))) {
      ListSequence.fromList(SLinkOperations.getChildren(classifierType, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x102419671abL, "parameter"))).addElement(SNodeOperations.copyNode(typeParameter));
    }
    return classifierType;
  }
  public static Iterable<SNode> virtual_getAvailableMethodDeclarations_5776618742611315379(SNode thisNode, String methodName) {
    SNode classConcept = SNodeOperations.getNodeAncestor(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"), false, false);
    if ((classConcept != null)) {
      return ClassConcept_Behavior.call_constructors_5292274854859503373(classConcept);
    }

    // special logic for java stubs 
    SReference cRef = SNodeOperations.getReference(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"));
    if (cRef == null) {
      return ClassConcept_Behavior.call_constructors_5292274854859503373(classConcept);
    }

    SModel targetModel = ((StaticReference) cRef).getTargetSModel();
    if (targetModel == null) {
      return Collections.emptyList();
    }
    SNodeId targetId = cRef.getTargetNodeId();
    if (SModelStereotype.getStubStereotypeForId(LanguageID.JAVA).equals(jetbrains.mps.util.SNodeOperations.getModelStereotype(targetModel)) && targetId != null) {
      String constructorId = targetId.toString();
      String classId = constructorId.substring(0, constructorId.indexOf("."));
      classConcept = SNodeOperations.cast(targetModel.getNode(jetbrains.mps.smodel.SNodeId.fromString(classId)), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"));
    }


    return ClassConcept_Behavior.call_constructors_5292274854859503373(classConcept);
  }
  public static boolean virtual_isInTypeInferenceContext_4837286298388660615(SNode thisNode) {
    return BehaviorReflection.invokeSuper(Boolean.TYPE, thisNode, "jetbrains.mps.baseLanguage.structure.IMethodCall", "virtual_isInTypeInferenceContext_4837286298388660615", new Object[]{});
  }
}
