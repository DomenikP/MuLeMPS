package jetbrains.mps.lang.extension.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractInferenceRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.InferenceRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.typesystem.inference.EquationInfo;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class typeof_ExtensionFieldReference_InferenceRule extends AbstractInferenceRule_Runtime implements InferenceRule_Runtime {
  public typeof_ExtensionFieldReference_InferenceRule() {
  }
  public void applyRule(final SNode efr, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    {
      SNode _nodeToCheck_1029348928467 = efr;
      EquationInfo _info_12389875345 = new EquationInfo(_nodeToCheck_1029348928467, null, "r:4b1ddbe6-5067-4a27-8697-eb786b50451b(jetbrains.mps.lang.extension.typesystem)", "7036359038356115138", 0, null);
      typeCheckingContext.createEquation((SNode) typeCheckingContext.typeOf(_nodeToCheck_1029348928467, "r:4b1ddbe6-5067-4a27-8697-eb786b50451b(jetbrains.mps.lang.extension.typesystem)", "7036359038356115126", true), (SNode) SLinkOperations.getTarget(SLinkOperations.getTarget(efr, MetaAdapterFactory.getReferenceLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x61a62b43e1534e9eL, 0x61a62b43e1534e9fL, "declaration")), MetaAdapterFactory.getContainmentLink(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x61a62b43e1534e99L, 0x61a62b43e1534e9dL, "fieldType")), _info_12389875345);
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0xc0080a477e374558L, 0xbee99ae18e690549L, 0x61a62b43e1534e9eL, "jetbrains.mps.lang.extension.structure.ExtensionFieldReference");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }
}
