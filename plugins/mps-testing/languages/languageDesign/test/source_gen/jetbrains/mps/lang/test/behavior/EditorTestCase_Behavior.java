package jetbrains.mps.lang.test.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;

public class EditorTestCase_Behavior {
  public static void init(SNode thisNode) {
  }
  public static List<SNode> virtual_getTestSet_1216130724401(SNode thisNode) {
    return ListSequence.fromListAndArray(new ArrayList<SNode>(), thisNode);
  }
  public static String virtual_getTestName_1216136419751(SNode thisNode) {
    return "test_" + SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static SNode virtual_getTestCase_1216134500045(SNode thisNode) {
    return thisNode;
  }
  public static List<SNode> virtual_getTestMethods_2148145109766218395(SNode thisNode) {
    List<SNode> result = new ArrayList<SNode>();
    ListSequence.fromList(result).addElement(thisNode);
    return result;
  }
  public static boolean virtual_suppress_3393165121846091591(SNode thisNode, SNode child) {
    return SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11e314b20e0L, 0x11e314b78e4L, "nodeToEdit")) == child || SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11e314b20e0L, 0x11e314bf3d3L, "result")) == child;
  }
  public static boolean virtual_isMpsStartRequired_3310779261129403089(SNode thisNode) {
    return true;
  }
}
