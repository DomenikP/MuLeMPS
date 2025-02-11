package jetbrains.mps.lang.editor.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;

public class DefaultBaseLine_Behavior {
  public static void init(SNode thisNode) {
  }
  public static boolean virtual_isApplicableTo_1214304723440(SNode thisNode, SNode cellModel) {
    {
      SNode matchedNode_q0zywl_a0a = cellModel;
      {
        boolean matches_q0zywl_a0a0 = false;
        {
          SNode matchingNode_q0zywl_a0a0 = cellModel;
          if (matchingNode_q0zywl_a0a0 != null) {
            matches_q0zywl_a0a0 = matchingNode_q0zywl_a0a0.getConcept().isSubConceptOf(MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xf9eb0ad38eL, "jetbrains.mps.lang.editor.structure.CellModel_RefNodeList"));
          }
        }
        if (matches_q0zywl_a0a0) {
          return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(matchedNode_q0zywl_a0a, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1098c8cf48aL, 0x1098c8e38e8L, "cellLayout")), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10192dd4cbeL, "jetbrains.mps.lang.editor.structure.CellLayout_Vertical")) || (SNodeOperations.isInstanceOf(SLinkOperations.getTarget(matchedNode_q0zywl_a0a, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1098c8cf48aL, 0x1098c8e38e8L, "cellLayout")), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x52915e535decd581L, "jetbrains.mps.lang.editor.structure.CellLayout_Table"))) || SNodeOperations.isInstanceOf(SLinkOperations.getTarget(matchedNode_q0zywl_a0a, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x1098c8cf48aL, 0x1098c8e38e8L, "cellLayout")), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x120150bb441L, "jetbrains.mps.lang.editor.structure.CellLayout_Indent"));
        } else {
          boolean matches_q0zywl_b0a0 = false;
          {
            SNode matchingNode_q0zywl_b0a0 = cellModel;
            if (matchingNode_q0zywl_b0a0 != null) {
              matches_q0zywl_b0a0 = matchingNode_q0zywl_b0a0.getConcept().isSubConceptOf(MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xf9eaff2517L, "jetbrains.mps.lang.editor.structure.CellModel_Collection"));
            }
          }
          if (matches_q0zywl_b0a0) {
            return SNodeOperations.isInstanceOf(SLinkOperations.getTarget(matchedNode_q0zywl_a0a, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xf9eaff2517L, 0x10192e0d3baL, "cellLayout")), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10192dd4cbeL, "jetbrains.mps.lang.editor.structure.CellLayout_Vertical")) || (SNodeOperations.isInstanceOf(SLinkOperations.getTarget(matchedNode_q0zywl_a0a, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xf9eaff2517L, 0x10192e0d3baL, "cellLayout")), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x52915e535decd581L, "jetbrains.mps.lang.editor.structure.CellLayout_Table"))) || SNodeOperations.isInstanceOf(SLinkOperations.getTarget(matchedNode_q0zywl_a0a, MetaAdapterFactory.getContainmentLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xf9eaff2517L, 0x10192e0d3baL, "cellLayout")), MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x120150bb441L, "jetbrains.mps.lang.editor.structure.CellLayout_Indent"));
          } else
          return false;
        }
      }
    }
  }
}
