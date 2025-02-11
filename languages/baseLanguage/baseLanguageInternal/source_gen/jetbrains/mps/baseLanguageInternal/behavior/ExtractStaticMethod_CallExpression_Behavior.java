package jetbrains.mps.baseLanguageInternal.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import java.util.ArrayList;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class ExtractStaticMethod_CallExpression_Behavior {
  public static void init(SNode thisNode) {
  }
  public static Iterable<SNode> virtual_getAvailableMethodDeclarations_5776618742611315379(SNode thisNode, String methodName) {
    List<SNode> result = new ArrayList<SNode>();
    for (SNode bmd : ExtractStaticMethod_CallExpression_Behavior.call_getMethods_5857910569715993654(SNodeOperations.asSConcept(MetaAdapterFactory.getConcept(0xdf345b11b8c74213L, 0xac6648d2a9b75d88L, 0x31c3f88088ed999aL, "jetbrains.mps.baseLanguageInternal.structure.ExtractStaticMethod_CallExpression").getDeclarationNode()), thisNode)) {
      String name = SPropertyOperations.getString(SNodeOperations.cast(bmd, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbbebabf0aL, "jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
      if (name != null && name.equals(methodName)) {
        ListSequence.fromList(result).addElement(SNodeOperations.cast(bmd, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfbbebabf0aL, "jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration")));
      }
    }
    return result;
  }
  public static SNode call_getContainingExtractExpr_8881995820265485533(SNode thisNode) {
    for (SNode es : SNodeOperations.getNodeAncestors(thisNode, MetaAdapterFactory.getConcept(0xdf345b11b8c74213L, 0xac6648d2a9b75d88L, 0x31c3f88088ea0ac4L, "jetbrains.mps.baseLanguageInternal.structure.ExtractStaticMethodExpression"), false)) {
      if (SLinkOperations.getTarget(es, MetaAdapterFactory.getContainmentLink(0xdf345b11b8c74213L, 0xac6648d2a9b75d88L, 0x31c3f88088ea0ac4L, 0x31c3f88088ea0ac6L, "method")) == SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"))) {
        return es;
      }
    }
    return null;
  }
  public static boolean virtual_substituteInAmbigousPosition_1262430001741498020(SAbstractConcept thisConcept) {
    return true;
  }
  public static List<SNode> call_getMethods_5857910569715993654(SAbstractConcept thisConcept, SNode context) {
    List<SNode> smd = new ArrayList<SNode>();
    for (SNode es : SNodeOperations.getNodeAncestors(context, MetaAdapterFactory.getConcept(0xdf345b11b8c74213L, 0xac6648d2a9b75d88L, 0x31c3f88088ea0ac4L, "jetbrains.mps.baseLanguageInternal.structure.ExtractStaticMethodExpression"), true)) {
      ListSequence.fromList(smd).addElement(SLinkOperations.getTarget(es, MetaAdapterFactory.getContainmentLink(0xdf345b11b8c74213L, 0xac6648d2a9b75d88L, 0x31c3f88088ea0ac4L, 0x31c3f88088ea0ac6L, "method")));
    }
    return smd;
  }
}
