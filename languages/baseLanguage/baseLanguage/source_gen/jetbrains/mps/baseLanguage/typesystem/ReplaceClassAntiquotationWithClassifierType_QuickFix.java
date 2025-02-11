package jetbrains.mps.baseLanguage.typesystem;

/*Generated by MPS */

import jetbrains.mps.errors.QuickFix_Runtime;
import jetbrains.mps.smodel.SNodePointer;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor;

public class ReplaceClassAntiquotationWithClassifierType_QuickFix extends QuickFix_Runtime {
  public ReplaceClassAntiquotationWithClassifierType_QuickFix() {
    super(new SNodePointer("r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "1228302110245"));
  }
  public String getDescription(SNode node) {
    return "Replace antiquotation with classifier type with reference antiquotation";
  }
  public void execute(SNode node) {
    SNode expression = SLinkOperations.getTarget(((SNode) ReplaceClassAntiquotationWithClassifierType_QuickFix.this.getField("antiquotation")[0]), MetaAdapterFactory.getContainmentLink(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104656L, 0x1168c104657L, "expression"));
    SNode parent = SNodeOperations.getParent(((SNode) ReplaceClassAntiquotationWithClassifierType_QuickFix.this.getField("antiquotation")[0]));
    parent.removeChild(((SNode) ReplaceClassAntiquotationWithClassifierType_QuickFix.this.getField("antiquotation")[0]));
    SNode classifierType = SNodeOperations.replaceWithNewChild(parent, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"));
    SNode referenceAntiquotation = AttributeOperations.createAndSetAttrbiute(classifierType, new IAttributeDescriptor.LinkAttribute(MetaAdapterFactory.getConcept(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c10465dL, "jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation"), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")), "jetbrains.mps.lang.quotation.structure.ReferenceAntiquotation");
    SLinkOperations.setTarget(referenceAntiquotation, MetaAdapterFactory.getContainmentLink(0x3a13115c633c4c5cL, 0xbbcc75c4219e9555L, 0x1168c104656L, 0x1168c104657L, "expression"), expression);
  }
}
