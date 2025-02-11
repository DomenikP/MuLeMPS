package jetbrains.mps.baseLanguage.actions;

/*Generated by MPS */

import jetbrains.mps.datatransfer.PastePostProcessor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.scope.Scope;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;

public class BL_CopyPasteHandlers_PastePostProcessor_0 implements PastePostProcessor {
  public SNode getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940c80846L, "jetbrains.mps.baseLanguage.structure.StaticFieldReference").getDeclarationNode();
  }
  public void postProcesNode(SNode pastedNode) {
    // todo: not working for IVariableReference. Unify and fix it. 
    if (Scope.parent(pastedNode) != null) {
      Scope surroundingScope = Scope.getScope(Scope.parent(pastedNode), pastedNode, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, "jetbrains.mps.baseLanguage.structure.VariableDeclaration").getDeclarationNode());
      if (surroundingScope != null && surroundingScope.contains(BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), pastedNode, "virtual_getVariable_1023687332192481693", new Object[]{}))) {
        SNode variableReference = SNodeFactoryOperations.replaceWithNewChild(pastedNode, SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference")));
        SLinkOperations.setTarget(variableReference, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration"), SNodeOperations.cast(BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), pastedNode, "virtual_getVariable_1023687332192481693", new Object[]{}), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, "jetbrains.mps.baseLanguage.structure.VariableDeclaration")));
      }
    }
  }
}
