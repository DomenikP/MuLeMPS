package jetbrains.mps.baseLanguage.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import org.jetbrains.mps.openapi.language.SAbstractConcept;

public class check_VariableArityType_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_VariableArityType_NonTypesystemRule() {
  }
  public void applyRule(final SNode variableArityType, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    {
      SNode matchedNode_x4f43m_a0 = SNodeOperations.getParent(variableArityType);
      {
        boolean matches_x4f43m_a0a = false;
        {
          SNode matchingNode_x4f43m_a0a = SNodeOperations.getParent(variableArityType);
          if (matchingNode_x4f43m_a0a != null) {
            matches_x4f43m_a0a = matchingNode_x4f43m_a0a.getConcept().isSubConceptOf(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e94L, "jetbrains.mps.baseLanguage.structure.ParameterDeclaration"));
          }
        }
        if (matches_x4f43m_a0a) {
          if ((SNodeOperations.getNextSibling(matchedNode_x4f43m_a0) != null)) {
            {
              MessageTarget errorTarget = new NodeMessageTarget();
              IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(matchedNode_x4f43m_a0, "parameter of variable arity must be a last one", "r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "1219921711936", null, errorTarget);
            }
          }
        } else {
          MessageTarget errorTarget = new NodeMessageTarget();
          IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(variableArityType, "variable arity types should only be used in method parameters", "r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "1219921506083", null, errorTarget);
        }
      }
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11c08f42e7bL, "jetbrains.mps.baseLanguage.structure.VariableArityType");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }
}
