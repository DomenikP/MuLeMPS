package jetbrains.mps.baseLanguage.jdk8.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.project.Project;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.project.SModuleOperations;
import jetbrains.mps.compiler.JavaCompilerOptionsComponent;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.model.SModel;

public class check_SuperInterfaceMethodCall_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_SuperInterfaceMethodCall_NonTypesystemRule() {
  }
  public void applyRule(final SNode superInterfaceMethodCall, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    Project project = null;
    SModule module = check_et794z_a0b0b(SNodeOperations.getModel(superInterfaceMethodCall));
    project = SModuleOperations.getProjectForModule(module);
    if (project == null) {
      return;
    }
    JavaCompilerOptionsComponent.JavaVersion sourceJavaVersion = JavaCompilerOptionsComponent.getInstance().getJavaCompilerOptions(project).getTargetJavaVersion();
    if (sourceJavaVersion.compareTo(JavaCompilerOptionsComponent.JavaVersion.VERSION_1_8) < 0) {
      {
        MessageTarget errorTarget = new NodeMessageTarget();
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(superInterfaceMethodCall, "Super interface method invocations are supported in Java 1.8 or higher. Current java language level:" + sourceJavaVersion.getCompilerVersion(), "r:0396c9ff-0a4d-4e54-9678-835fc58468cd(jetbrains.mps.baseLanguage.jdk8.typesystem)", "7510080655530197744", null, errorTarget);
      }
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0xfdcdc48fbfd84831L, 0xaa765abac2ffa010L, 0x17dbb10eeb72e5d9L, "jetbrains.mps.baseLanguage.jdk8.structure.SuperInterfaceMethodCall");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }
  private static SModule check_et794z_a0b0b(SModel checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getModule();
    }
    return null;
  }
}
