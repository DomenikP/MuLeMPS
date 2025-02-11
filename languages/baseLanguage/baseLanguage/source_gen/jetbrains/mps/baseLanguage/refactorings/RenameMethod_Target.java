package jetbrains.mps.baseLanguage.refactorings;

/*Generated by MPS */

import jetbrains.mps.refactoring.framework.IRefactoringTarget;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class RenameMethod_Target implements IRefactoringTarget {
  public RenameMethod_Target() {
  }
  public IRefactoringTarget.TargetType getTarget() {
    return IRefactoringTarget.TargetType.NODE;
  }
  public boolean allowMultipleTargets() {
    return false;
  }
  public boolean isApplicableToEntityType(Object entity) {
    return true;
  }
  public boolean isApplicable(final Object entity) {
    if (!(this.isApplicableToEntityType(entity))) {
      return false;
    }
    return SNodeOperations.isInstanceOf(((SNode) entity), MetaAdapterFactory.getInterfaceConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, "jetbrains.mps.baseLanguage.structure.IMethodCall")) && !(SNodeOperations.isInstanceOf(((SNode) entity), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc367388b3L, "jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration"))) || SNodeOperations.isInstanceOf(((SNode) entity), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, "jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration")) && !(SNodeOperations.isInstanceOf(((SNode) entity), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b204L, "jetbrains.mps.baseLanguage.structure.ConstructorDeclaration")));
  }
}
