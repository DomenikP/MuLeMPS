package jetbrains.mps.lang.generator.generationContext.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;

public class GenerationContextOp_ContextVarRef_Behavior {
  public static void init(SNode thisNode) {
  }
  public static String virtual_getPresentation_1213877396640(SNode thisNode) {
    return (SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x671e792f3dbdfe7eL, 0x671e792f3dbdffa2L, "contextVarName")) == null ? SNodeOperations.getConcept(thisNode).getName() : SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x671e792f3dbdfe7eL, 0x671e792f3dbdffa2L, "contextVarName")));
  }
}
