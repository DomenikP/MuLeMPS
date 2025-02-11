package jetbrains.mps.console.internalCommands.behavior;

/*Generated by MPS */

import jetbrains.mps.baseLanguage.behavior.Expression_BehaviorDescriptor;
import jetbrains.mps.lang.smodel.query.behavior.ExpressionHelpProvider_BehaviorDescriptor;
import org.jetbrains.mps.openapi.language.SConcept;
import jetbrains.mps.lang.smodel.query.behavior.HelpProvider_Behavior;
import jetbrains.mps.lang.smodel.query.behavior.ExpressionHelpProvider_Behavior;
import org.jetbrains.mps.openapi.model.SNode;

public class InternalMode_BehaviorDescriptor extends Expression_BehaviorDescriptor implements ExpressionHelpProvider_BehaviorDescriptor {
  public InternalMode_BehaviorDescriptor() {
  }
  public String virtual_getDisplayString_6891027939994892943(SConcept thisConcept) {
    return HelpProvider_Behavior.virtual_getDisplayString_6891027939994892943(thisConcept);
  }
  public String virtual_getGroup_6928665434441162387(SConcept thisConcept) {
    return HelpProvider_Behavior.virtual_getGroup_6928665434441162387(thisConcept);
  }
  public String virtual_getHelpPage_7006261637493125297(SConcept thisConcept) {
    return HelpProvider_Behavior.virtual_getHelpPage_7006261637493125297(thisConcept);
  }
  public String virtual_getKind_7006261637493126084(SConcept thisConcept) {
    return ExpressionHelpProvider_Behavior.virtual_getKind_7006261637493126084(thisConcept);
  }
  public String virtual_getShortDisplayString_7006261637493126103(SConcept thisConcept) {
    return HelpProvider_Behavior.virtual_getShortDisplayString_7006261637493126103(thisConcept);
  }
  public String virtual_getShortHelp_473081947982699339(SConcept thisConcept) {
    return InternalMode_Behavior.virtual_getShortHelp_473081947982699339(thisConcept);
  }
  public boolean virtual_isLValue_1213877519786(SNode thisNode) {
    return InternalMode_Behavior.virtual_isLValue_1213877519786(thisNode);
  }
  public boolean virtual_isLegalAsStatement_1239211900844(SNode thisNode) {
    return InternalMode_Behavior.virtual_isLegalAsStatement_1239211900844(thisNode);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.console.internalCommands.structure.InternalMode";
  }
}
