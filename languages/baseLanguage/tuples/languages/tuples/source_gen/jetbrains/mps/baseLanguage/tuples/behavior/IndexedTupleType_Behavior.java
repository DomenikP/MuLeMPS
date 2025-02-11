package jetbrains.mps.baseLanguage.tuples.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import java.util.Map;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class IndexedTupleType_Behavior {
  public static void init(SNode thisNode) {
  }
  public static String virtual_getPresentation_1213877396640(SNode thisNode) {
    StringBuilder sb = new StringBuilder();
    sb.append(BehaviorReflection.invokeVirtualStatic(String.class, SNodeOperations.asSConcept(SNodeOperations.getConceptDeclaration(thisNode)), "virtual_getLeftBracket_1262430001741497978", new Object[]{}));
    String sep = "";
    for (SNode mt : SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xa247e09e243545baL, 0xb8d207e93feba96aL, 0x1207157a8dcL, 0x1207158795cL, "componentType"))) {
      sb.append(sep).append(BehaviorReflection.invokeVirtual(String.class, mt, "virtual_getPresentation_1213877396640", new Object[]{}));
      sep = ", ";
    }
    sb.append(BehaviorReflection.invokeVirtualStatic(String.class, SNodeOperations.asSConcept(SNodeOperations.getConceptDeclaration(thisNode)), "virtual_getRightBracket_1262430001741498044", new Object[]{}));
    return sb.toString();
  }
  public static List<String> virtual_getVariableSuffixes_1213877337304(SNode thisNode) {
    List<String> suffixes = ListSequence.fromList(new ArrayList<String>());
    switch (ListSequence.fromList(SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xa247e09e243545baL, 0xb8d207e93feba96aL, 0x1207157a8dcL, 0x1207158795cL, "componentType"))).count()) {
      case 0:
        ListSequence.fromList(suffixes).addElement("unit");
        break;
      case 1:
        ListSequence.fromList(suffixes).addElement("single");
        break;
      case 2:
        ListSequence.fromList(suffixes).addElement("pair");
        break;
      case 3:
        ListSequence.fromList(suffixes).addElement("triple");
        break;
      case 4:
        ListSequence.fromList(suffixes).addElement("quadruple");
        break;
      default:
        ListSequence.fromList(suffixes).addElement("_" + Integer.valueOf(ListSequence.fromList(SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xa247e09e243545baL, 0xb8d207e93feba96aL, 0x1207157a8dcL, 0x1207158795cL, "componentType"))).count()) + "tuple");
    }
    return suffixes;
  }
  public static void virtual_collectGenericSubstitutions_4107091686347010321(SNode thisNode, Map<SNode, SNode> substitutions) {
    for (SNode ct : ListSequence.fromList(SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xa247e09e243545baL, 0xb8d207e93feba96aL, 0x1207157a8dcL, 0x1207158795cL, "componentType")))) {
      if (SNodeOperations.isInstanceOf(ct, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType"))) {
        BehaviorReflection.invokeVirtual(Void.class, SNodeOperations.cast(ct, MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x38ff5220e0ac710dL, "jetbrains.mps.baseLanguage.structure.IGenericType")), "virtual_collectGenericSubstitutions_4107091686347010321", new Object[]{substitutions});
      }
    }
  }
  public static String virtual_getLeftBracket_1262430001741497978(SAbstractConcept thisConcept) {
    return "[";
  }
  public static String virtual_getRightBracket_1262430001741498044(SAbstractConcept thisConcept) {
    return "]";
  }
}
