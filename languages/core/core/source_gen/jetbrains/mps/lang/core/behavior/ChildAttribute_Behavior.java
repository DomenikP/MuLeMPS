package jetbrains.mps.lang.core.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.legacy.ConceptMetaInfoConverter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.ids.SContainmentLinkId;
import jetbrains.mps.smodel.adapter.ids.MetaIdHelper;

public class ChildAttribute_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SContainmentLink call_getLink_709746936026609871(SNode thisNode) {
    if (isEmptyString(SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x9d98713f247885aL, 0x9d98713f249b587L, "linkId")))) {
      return ((ConceptMetaInfoConverter) SNodeOperations.getParent(thisNode).getConcept()).convertAggregation(SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x9d98713f247885aL, 0x9d98713f249b585L, "linkRole")));
    }
    return MetaAdapterFactory.getContainmentLink(SContainmentLinkId.deserialize(SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x9d98713f247885aL, 0x9d98713f249b587L, "linkId"))), SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x9d98713f247885aL, 0x9d98713f249b585L, "linkRole")));
  }
  public static void call_setLink_709746936026609906(SNode thisNode, SContainmentLink metaLink) {
    SPropertyOperations.set(thisNode, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x9d98713f247885aL, 0x9d98713f249b585L, "linkRole"), metaLink.getRoleName());
    SPropertyOperations.set(thisNode, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x9d98713f247885aL, 0x9d98713f249b587L, "linkId"), MetaIdHelper.getAggregation(metaLink).toString());
  }
  private static boolean isEmptyString(String str) {
    return str == null || str.length() == 0;
  }
}
