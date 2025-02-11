package jetbrains.mps.baseLanguage.builders.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.lang.typesystem.runtime.HUtil;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;

public class BeanPropertyBuilder_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode virtual_getResultType_7057666463730718251(SNode thisNode) {
    return BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), SLinkOperations.getTarget(ListSequence.fromList(SLinkOperations.getChildren(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x252efd34f8a58ec7L, 0x252efd34f8a58ec8L, "setter")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))).first(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type")), "virtual_getJavaType_1213877337345", new Object[]{});
  }
  public static SNode virtual_getCreatorExpression_7057666463730727863(SNode thisNode, SNode parentRef) {
    return SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x252efd34f8a58ec7L, 0x252efd34f8a58edaL, "value"));
  }
  public static SNode virtual_getAttachStatementChild_4797501453850305563(SNode thisNode, SNode parentBuilder, SNode parentRef, SNode childRef) {
    return _quotation_createNode_ec1xrx_a0a2(parentRef, childRef, SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x252efd34f8a58ec7L, 0x252efd34f8a58ec8L, "setter")));
  }
  public static boolean virtual_leaf_1262430001741498370(SAbstractConcept thisConcept) {
    return true;
  }
  public static String call_getPropertyName_2679357232284040711(SAbstractConcept thisConcept, String methodName) {
    String prefix = "set";
    if (methodName == null) {
      return null;
    }
    if (!(methodName.startsWith(prefix))) {
      return null;
    }
    if (methodName.length() <= prefix.length()) {
      return null;
    }
    String suffix = methodName.substring(prefix.length());
    return Character.toLowerCase(suffix.charAt(0)) + suffix.substring(1);
  }
  private static SNode _quotation_createNode_ec1xrx_a0a2(Object parameter_1, Object parameter_2, Object parameter_3) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_4 = null;
    SNode quotedNode_5 = null;
    SNode quotedNode_6 = null;
    SNode quotedNode_7 = null;
    SNode quotedNode_8 = null;
    quotedNode_4 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, "jetbrains.mps.baseLanguage.structure.ExpressionStatement"), null, null, false);
    quotedNode_5 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, "jetbrains.mps.baseLanguage.structure.DotExpression"), null, null, false);
    quotedNode_6 = (SNode) parameter_1;
    if (quotedNode_6 != null) {
      quotedNode_5.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46a4416L, "operand"), HUtil.copyIfNecessary(quotedNode_6));
    }
    quotedNode_7 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x118154a6332L, "jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation"), null, null, false);
    SNodeAccessUtil.setReferenceTarget(quotedNode_7, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), (SNode) parameter_3);
    quotedNode_8 = (SNode) parameter_2;
    if (quotedNode_8 != null) {
      quotedNode_7.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301aeL, "actualArgument"), HUtil.copyIfNecessary(quotedNode_8));
    }
    quotedNode_5.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x116b46a08c4L, 0x116b46b36c4L, "operation"), quotedNode_7);
    quotedNode_4.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, 0xf8cc56b214L, "expression"), quotedNode_5);
    return quotedNode_4;
  }
}
