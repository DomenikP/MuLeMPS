package jetbrains.mps.baseLanguage.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.AbstractNonTypesystemRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.NonTypesystemRule_Runtime;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.lang.typesystem.runtime.HUtil;
import jetbrains.mps.errors.messageTargets.MessageTarget;
import jetbrains.mps.errors.messageTargets.NodeMessageTarget;
import jetbrains.mps.errors.IErrorReporter;
import jetbrains.mps.baseLanguage.search.ClassifierAndSuperClassifiersScope;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SReference;

public class check_UsingStatement_NonTypesystemRule extends AbstractNonTypesystemRule_Runtime implements NonTypesystemRule_Runtime {
  public check_UsingStatement_NonTypesystemRule() {
  }
  public void applyRule(final SNode usingStatement, final TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
outer:
    for (SNode resource : SLinkOperations.getChildren(usingStatement, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11d0053f19bL, 0x11d0053f19dL, "resource"))) {
      SNode type = TypeChecker.getInstance().getTypeOf(resource);
      if (TypeChecker.getInstance().getSubtypingManager().isSubtype(type, _quotation_createNode_o2kqy_b0a1a0a1())) {
        continue;
      }
      SNode classifierType = TypeChecker.getInstance().getRuntimeSupport().coerce_(type, HUtil.createMatchingPatternByConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType")), false);
      if (classifierType == null || SLinkOperations.getTarget(classifierType, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")) == null) {
        {
          MessageTarget errorTarget = new NodeMessageTarget();
          IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(resource, "resource should be Closeable or should have method dispose()", "r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "3073231036166011751", null, errorTarget);
        }
        continue;
      }
      ClassifierAndSuperClassifiersScope scope = new ClassifierAndSuperClassifiersScope(SLinkOperations.getTarget(classifierType, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier")), ClassifierAndSuperClassifiersScope.INSTANCE_METHOD);
      List<SNode> methodsByName = scope.getMethodsByName("dispose");
      for (SNode bmd : methodsByName) {
        if (ListSequence.fromList(SLinkOperations.getChildren(bmd, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b1fcL, 0xf8cc56b1feL, "parameter"))).isEmpty()) {
          continue outer;
        }
      }
      {
        MessageTarget errorTarget = new NodeMessageTarget();
        IErrorReporter _reporter_2309309498 = typeCheckingContext.reportTypeError(resource, "resource should be Closeable or should have method dispose()", "r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)", "3073231036166011889", null, errorTarget);
      }
    }
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11d0053f19bL, "jetbrains.mps.baseLanguage.structure.UsingStatement");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    return new IsApplicableStatus(argument.getConcept().isSubConceptOf(getApplicableConcept()), null);
  }
  public boolean overrides() {
    return false;
  }
  private static SNode _quotation_createNode_o2kqy_b0a1a0a1() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"), quotedNode_1, facade.createModelReference("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io()"), facade.createNodeId("~Closeable")));
    return quotedNode_1;
  }
}
