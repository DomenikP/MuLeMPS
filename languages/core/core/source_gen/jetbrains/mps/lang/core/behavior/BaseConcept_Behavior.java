package jetbrains.mps.lang.core.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import javax.swing.Icon;
import java.util.List;
import java.util.ArrayList;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.presentation.ReferenceConceptUtil;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class BaseConcept_Behavior {
  public static void init(SNode thisNode) {
  }
  public static boolean call_isInTemplates_1213877396627(SNode thisNode) {
    return SModelStereotype.isGeneratorModel(SNodeOperations.getModel(thisNode));
  }
  public static Icon virtual_getAdditionalIcon_5017341185733863694(SNode thisNode) {
    return null;
  }
  public static List<Icon> virtual_getMarkIcons_3923831204883340393(SNode thisNode) {
    return new ArrayList<Icon>();
  }
  public static String virtual_getPresentation_1213877396640(SNode thisNode) {
    if (SNodeOperations.isInstanceOf(thisNode, MetaAdapterFactory.getInterfaceConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, "jetbrains.mps.lang.core.structure.INamedConcept"))) {
      String name = SPropertyOperations.getString(SNodeOperations.cast(thisNode, MetaAdapterFactory.getInterfaceConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, "jetbrains.mps.lang.core.structure.INamedConcept")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
      if (name != null) {
        return name;
      }
      return "<no name>[" + SPropertyOperations.getString(SNodeOperations.getConceptDeclaration(thisNode), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")) + "]";
    }
    // -- 
    String smartRefPresentation = ReferenceConceptUtil.getPresentation(thisNode);
    if (smartRefPresentation != null) {
      return smartRefPresentation;
    }
    // -- 
    String conceptAlias = SPropertyOperations.getString(SNodeOperations.getConceptDeclaration(thisNode), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0x1103553c5ffL, 0x46ab0ad5826c74caL, "conceptAlias"));
    if (conceptAlias != null) {
      return conceptAlias;
    }
    // -- 
    return SPropertyOperations.getString(SNodeOperations.getConceptDeclaration(thisNode), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static String virtual_getDetailedPresentation_2354269628709769373(SNode thisNode) {
    return BehaviorReflection.invokeVirtual(String.class, thisNode, "virtual_getPresentation_1213877396640", new Object[]{});
  }
  public static int virtual_getMetaLevel_3981318653438234726(SNode thisNode) {
    if (jetbrains.mps.util.SNodeOperations.isRoot(thisNode)) {
      return 0;
    }
    int metalevel = 0;
    for (SNode metaLevelChanger : SNodeOperations.getNodeAncestors(thisNode, MetaAdapterFactory.getInterfaceConcept(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x2cc012b1584bd3aL, "jetbrains.mps.lang.core.structure.IMetaLevelChanger"), false)) {
      metalevel += BehaviorReflection.invokeVirtual(Integer.TYPE, metaLevelChanger, "virtual_getMetaLevelChange_201537367881074474", new Object[]{});
    }
    return metalevel;
  }
  public static boolean virtual_substituteInAmbigousPosition_1262430001741498020(SAbstractConcept thisConcept) {
    return false;
  }
}
