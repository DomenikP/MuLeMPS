package jetbrains.mps.lang.editor.figures.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;

public class FigureParameterAttributeViewProperty_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode virtual_getParameterMember_5422656561931910498(SNode thisNode) {
    return FigureParameterAttributeViewProperty_Behavior.call_getStaticFieldDeclaration_7911346875269169672(thisNode);
  }
  public static SNode call_getStaticFieldDeclaration_7911346875269169672(SNode thisNode) {
    return SNodeOperations.cast(SNodeOperations.getParent(thisNode), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf93c84351fL, "jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration"));
  }
  public static SNode virtual_getParameterType_342110547581236128(SNode thisNode) {
    return SNodeOperations.as(SLinkOperations.getTarget(FigureParameterAttributeViewProperty_Behavior.call_getStaticFieldDeclaration_7911346875269169672(thisNode), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type")), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"));
  }
}
