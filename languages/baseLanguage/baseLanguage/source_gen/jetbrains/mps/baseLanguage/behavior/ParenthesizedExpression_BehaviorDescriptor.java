package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.annotations.NotNull;

public class ParenthesizedExpression_BehaviorDescriptor extends Expression_BehaviorDescriptor implements IConditional_BehaviorDescriptor {
  public ParenthesizedExpression_BehaviorDescriptor() {
  }
  public Object virtual_eval_1213877519769(SNode thisNode, SModule module) {
    return ParenthesizedExpression_Behavior.virtual_eval_1213877519769(thisNode, module);
  }
  public Object virtual_getCompileTimeConstantValue_1238860310638(SNode thisNode, SModule module) {
    return ParenthesizedExpression_Behavior.virtual_getCompileTimeConstantValue_1238860310638(thisNode, module);
  }
  public NextProgramPoint virtual_getNextProgramPoint_4235809288648213009(SNode thisNode, @NotNull SNode child, boolean value) {
    return ParenthesizedExpression_Behavior.virtual_getNextProgramPoint_4235809288648213009(thisNode, child, value);
  }
  public boolean virtual_isCompileTimeConstant_1238860258777(SNode thisNode) {
    return ParenthesizedExpression_Behavior.virtual_isCompileTimeConstant_1238860258777(thisNode);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.baseLanguage.structure.ParenthesizedExpression";
  }
}
