package jetbrains.mps.lang.plugin.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.util.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import java.util.List;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.ListSequence;

public class PreferencesComponentDeclaration_Behavior {
  public static void init(SNode thisNode) {
  }
  public static String call_getClassName_1213877322095(SNode thisNode) {
    return SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")) + "_PreferencesComponent";
  }
  public static String call_getGeneratedClassFQName_4911466715314111449(SNode thisNode) {
    return SNodeOperations.getModelLongName(jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations.getModel(thisNode)) + "." + PreferencesComponentDeclaration_Behavior.call_getClassName_1213877322095(thisNode);
  }
  public static SNode virtual_createType_1213877527970(SNode thisNode) {
    SNode type = SConceptOperations.createNewNode(jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x28f9e4973b424291L, 0xaeba0a1039153ab1L, 0x119c497fc64L, "jetbrains.mps.lang.plugin.structure.PreferencesComponentType")));
    SLinkOperations.setTarget(type, MetaAdapterFactory.getReferenceLink(0x28f9e4973b424291L, 0xaeba0a1039153ab1L, 0x119c497fc64L, 0x119c4987dc8L, "componentDeclaration"), thisNode);
    return type;
  }
  public static List<SNode> virtual_getMembers_1213877528124(SNode thisNode) {
    List<SNode> members = new ArrayList<SNode>();
    ListSequence.fromList(members).addSequence(ListSequence.fromList(SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0x28f9e4973b424291L, 0xaeba0a1039153ab1L, 0x119c44c226fL, 0x119c456be96L, "persistenPropertyDeclaration"))));
    return members;
  }
}
