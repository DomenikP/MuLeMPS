package jetbrains.mps.baseLanguage.closures.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import java.util.List;

public class UnrestrictedFunctionType_Behavior {
  public static void init(SNode thisNode) {
  }
  public static String virtual_getPresentation_1213877396640(SNode thisNode) {
    StringBuffer sb = new StringBuffer("{");
    String sep = "";
    for (SNode pt : SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xfd3920347849419dL, 0x907112563d152375L, 0x1174a4d19ffL, 0x1174a4e013cL, "parameterType"))) {
      sb.append(sep).append(BehaviorReflection.invokeVirtual(String.class, pt, "virtual_getPresentation_1213877396640", new Object[]{}));
      sep = ",";
    }
    sb.append("==>").append(BehaviorReflection.invokeVirtual(String.class, SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0xfd3920347849419dL, 0x907112563d152375L, 0x11e505b9d83L, 0x11eda2b270fL, "terminateType")), "virtual_getPresentation_1213877396640", new Object[]{}));
    return sb.append("}").toString();
  }
  public static String virtual_getRuntimeClassName_1230472987259(SNode thisNode) {
    return "_UnrestrictedFunctionTypes";
  }
  public static String virtual_getRuntimeSignature_1213877404927(SNode thisNode) {
    StringBuilder sb = new StringBuilder();
    if ((BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), thisNode, "virtual_getResultType_1230475757059", new Object[]{}) != null)) {
      sb.append("_return");
    } else {
      sb.append("_void");
    }
    if ((BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), thisNode, "virtual_getTerminateType_1232032188607", new Object[]{}) != null)) {
      sb.append("_terminate");
    } else {
      sb.append("_void");
    }
    sb.append("_P").append(ListSequence.fromList(SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xfd3920347849419dL, 0x907112563d152375L, 0x1174a4d19ffL, 0x1174a4e013cL, "parameterType"))).count());
    sb.append("_E").append(ListSequence.fromList(FunctionType_Behavior.call_getNormalizedThrowsTypes_3448422702164385781(thisNode)).count());
    return sb.toString();
  }
  public static String call_getRuntimeAdapterClassName_1231423631922(SNode thisNode) {
    return "_UnrestrictedClosures";
  }
  public static SNode virtual_getTerminateType_1232032188607(SNode thisNode) {
    SNode tt = SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0xfd3920347849419dL, 0x907112563d152375L, 0x11e505b9d83L, 0x11eda2b270fL, "terminateType"));
    if (SNodeOperations.isInstanceOf(tt, MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x114b68ad132L, "jetbrains.mps.lang.typesystem.structure.MeetType"))) {
      List<SNode> args = SLinkOperations.getChildren(SNodeOperations.cast(tt, MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x114b68ad132L, "jetbrains.mps.lang.typesystem.structure.MeetType")), MetaAdapterFactory.getContainmentLink(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x114b68ad132L, 0x114b68b040bL, "argument"));
      tt = ListSequence.fromList(args).getElement(0);
    }
    return ((tt != null) && !(SNodeOperations.isInstanceOf(tt, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc6bf96dL, "jetbrains.mps.baseLanguage.structure.VoidType"))) ? tt : null);
  }
}
