package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class PrefixIncrementExpression_Behavior {
  public static void init(SNode thisNode) {
  }
  public static boolean virtual_isLegalAsStatement_1239211900844(SNode thisNode) {
    return true;
  }
  public static boolean virtual_canPropagateUnmatchedParenUp_1742226163722653670(SNode thisNode, SNode leaf, boolean rightParen) {
    return BehaviorReflection.invokeSuper(Boolean.TYPE, thisNode, "jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation", "virtual_canPropagateUnmatchedParenUp_1742226163722653670", new Object[]{leaf, rightParen}) && rightParen;
  }
  public static SNode virtual_getSyntacticallyRightSideExpression_1742226163722653714(SNode thisNode) {
    return SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x120a4c1f269L, 0x120a4c433a6L, "expression"));
  }
}
