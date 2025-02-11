package jetbrains.mps.baseLanguage.typesystem;

/*Generated by MPS */

import jetbrains.mps.errors.QuickFix_Runtime;
import jetbrains.mps.smodel.SNodePointer;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;

public class SimplifyWholeBinaryLogicalExpressionWithBooleanConstant_QuickFix extends QuickFix_Runtime {
  public SimplifyWholeBinaryLogicalExpressionWithBooleanConstant_QuickFix() {
    super(new SNodePointer("r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "8626468694779185704"));
  }
  public String getDescription(SNode node) {
    return "Simplify Binary Logical Expression " + ExpressionPresentationUtil.getExpressionPresentation(((SNode) SimplifyWholeBinaryLogicalExpressionWithBooleanConstant_QuickFix.this.getField("operation")[0]));
  }
  public void execute(SNode node) {
    SNode constant = SNodeFactoryOperations.replaceWithNewChild(((SNode) SimplifyWholeBinaryLogicalExpressionWithBooleanConstant_QuickFix.this.getField("operation")[0]), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b201L, "jetbrains.mps.baseLanguage.structure.BooleanConstant")));
    SPropertyOperations.set(constant, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b201L, 0xf8cc56b202L, "value"), "" + (((Boolean) SimplifyWholeBinaryLogicalExpressionWithBooleanConstant_QuickFix.this.getField("value")[0])));
  }
}
