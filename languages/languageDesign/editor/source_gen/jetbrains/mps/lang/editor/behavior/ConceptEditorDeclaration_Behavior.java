package jetbrains.mps.lang.editor.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.List;
import jetbrains.mps.lang.structure.behavior.AbstractConceptDeclaration_Behavior;
import jetbrains.mps.smodel.LanguageAspect;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;

public class ConceptEditorDeclaration_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode virtual_getBaseConcept_2621449412040133768(SNode thisNode) {
    return SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10f7df344a9L, 0x10f7df451aeL, "conceptDeclaration"));
  }
  public static void virtual_setBaseConcept_6261424444345963020(SNode thisNode, SNode baseConcept) {
    SLinkOperations.setTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0x10f7df344a9L, 0x10f7df451aeL, "conceptDeclaration"), baseConcept);
  }
  public static boolean virtual_isApplicable_7839831476331657915(SNode thisNode, SNode candidate) {
    List<SNode> createdEditors = AbstractConceptDeclaration_Behavior.call_findConceptAspectCollection_1567570417158062208(candidate, LanguageAspect.EDITOR);
    for (SNode createdEditor : createdEditors) {
      if (SNodeOperations.isInstanceOf(createdEditor, MetaAdapterFactory.getConcept(0x18bc659203a64e29L, 0xa83a7ff23bde13baL, 0xf9845363abL, "jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration"))) {
        return false;
      }
    }
    return true;
  }
  public static void call_createDefaultEditor_2970389781192937380(SNode thisNode, boolean multiline) {
    if (multiline) {
      new DefaultEditorBuilder(thisNode).buildStatementLike();
    } else {
      new DefaultEditorBuilder(thisNode).buildExpressionLike();
    }
  }
}
