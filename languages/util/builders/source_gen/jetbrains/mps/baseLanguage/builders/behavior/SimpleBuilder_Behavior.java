package jetbrains.mps.baseLanguage.builders.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import java.util.List;
import org.jetbrains.mps.openapi.model.SModel;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;

public class SimpleBuilder_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode virtual_getResultType_7057666463730718251(SNode thisNode) {
    return SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e24c0baL, 0x6524536b2e24c0bbL, "declaration")), MetaAdapterFactory.getContainmentLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e38L, 0x34f5c07463dbda0bL, "type"));
  }
  public static boolean virtual_isLeaf_7057666463730595159(SNode thisNode) {
    return SPropertyOperations.getBoolean(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e24c0baL, 0x6524536b2e24c0bbL, "declaration")), MetaAdapterFactory.getProperty(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e38L, 0x6524536b2e29deeaL, "leaf"));
  }
  public static List<SNode> call_getPossibleChildren_8969040284892300232(SNode thisNode, SModel model) {
    List<SNode> builders = new ArrayList<SNode>();
    for (SNode child : SimpleBuilderDeclaration_Behavior.call_getChildren_3816167865390856298(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e24c0baL, 0x6524536b2e24c0bbL, "declaration")), model)) {
      ListSequence.fromList(builders).addSequence(ListSequence.fromList(SimpleBuilderDeclaration_Behavior.call_getDescendants_3816167865390609214(SLinkOperations.getTarget(child, MetaAdapterFactory.getReferenceLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1d353aL, 0x6524536b2e1d353bL, "child")), model)).where(new IWhereFilter<SNode>() {
        public boolean accept(SNode it) {
          return !(SPropertyOperations.getBoolean(it, MetaAdapterFactory.getProperty(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e38L, 0x34f5c07463deaa83L, "isAbstract")));
        }
      }));
    }
    return builders;
  }
  public static SNode virtual_getCreatorExpression_7057666463730727863(SNode thisNode, SNode parentRef) {
    SNode result = SNodeOperations.copyNode(SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e24c0baL, 0x6524536b2e24c0bbL, "declaration")), MetaAdapterFactory.getContainmentLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e38L, 0x6524536b2e2bab2eL, "creator")));

    List<SNode> params = SLinkOperations.getChildren(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e24c0baL, 0x6524536b2e24c0bbL, "declaration")), MetaAdapterFactory.getContainmentLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1a1e38L, 0x4b4c01fdd9010b91L, "parameter"));
    List<SNode> args = SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e24c0baL, 0x3be2eb5326d47e60L, "argument"));
    if (ListSequence.fromList(params).count() != ListSequence.fromList(args).count()) {
      throw new RuntimeException();
    }

    for (SNode ref : SNodeOperations.getNodeDescendants(result, MetaAdapterFactory.getConcept(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x4b4c01fdd9029ce4L, "jetbrains.mps.baseLanguage.builders.structure.SimpleBuilderParameterReference"), false, new SAbstractConcept[]{})) {
      int index = ListSequence.fromList(params).indexOf(SLinkOperations.getTarget(ref, MetaAdapterFactory.getReferenceLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x4b4c01fdd9029ce4L, 0x4b4c01fdd9029ce5L, "parameter")));
      SNodeOperations.replaceWithAnother(ref, SNodeOperations.copyNode(ListSequence.fromList(args).getElement(index)));
    }

    return result;
  }
  public static SNode virtual_getAttachStatement_7288041816792215495(SNode thisNode, SNode childBuilder, SNode parentRef, SNode childRef) {

    if (SNodeOperations.isInstanceOf(childBuilder, MetaAdapterFactory.getConcept(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e24c0baL, "jetbrains.mps.baseLanguage.builders.structure.SimpleBuilder"))) {
      SNode simpleBuilder = SNodeOperations.cast(childBuilder, MetaAdapterFactory.getConcept(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e24c0baL, "jetbrains.mps.baseLanguage.builders.structure.SimpleBuilder"));
      for (SNode child : SimpleBuilderDeclaration_Behavior.call_getChildren_3816167865390856298(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e24c0baL, 0x6524536b2e24c0bbL, "declaration")), SNodeOperations.getModel(thisNode))) {
        if (SimpleBuilderDeclaration_Behavior.call_isDescendant_3816167865390595157(SLinkOperations.getTarget(simpleBuilder, MetaAdapterFactory.getReferenceLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e24c0baL, 0x6524536b2e24c0bbL, "declaration")), SLinkOperations.getTarget(child, MetaAdapterFactory.getReferenceLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1d353aL, 0x6524536b2e1d353bL, "child")))) {
          SNode result = SNodeOperations.copyNode(SLinkOperations.getTarget(child, MetaAdapterFactory.getContainmentLink(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1d353aL, 0x6524536b2e1dac5bL, "attachStatement")));
          for (SNode parent : SNodeOperations.getNodeDescendants(result, MetaAdapterFactory.getConcept(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1d353cL, "jetbrains.mps.baseLanguage.builders.structure.SimpleBuilderParentExpression"), false, new SAbstractConcept[]{})) {
            SNodeOperations.replaceWithAnother(parent, SNodeOperations.copyNode(parentRef));
          }
          for (SNode parent : SNodeOperations.getNodeDescendants(result, MetaAdapterFactory.getConcept(0x132aa4d8a3f7441cL, 0xa7eb3fce23492c6aL, 0x6524536b2e1d353eL, "jetbrains.mps.baseLanguage.builders.structure.SimpleBuilderChildExpression"), false, new SAbstractConcept[]{})) {
            SNodeOperations.replaceWithAnother(parent, SNodeOperations.copyNode(childRef));
          }
          return result;
        }
      }
    }

    return BehaviorReflection.invokeSuper((Class<SNode>) ((Class) Object.class), thisNode, "jetbrains.mps.baseLanguage.builders.structure.Builder", "virtual_getAttachStatement_7288041816792215495", new Object[]{childBuilder, parentRef, childRef});
  }
}
