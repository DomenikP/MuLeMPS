package jetbrains.mps.core.xml.sax.behavior;

/*Generated by MPS */

import jetbrains.mps.baseLanguage.behavior.ConceptFunction_BehaviorDescriptor;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SConcept;

public class XMLSAXChildRuleCondition_BehaviorDescriptor extends ConceptFunction_BehaviorDescriptor {
  public XMLSAXChildRuleCondition_BehaviorDescriptor() {
  }
  public List<SNode> virtual_getApplicableConceptFunctionParameter_3044950653914717136(SConcept thisConcept) {
    return XMLSAXChildRuleCondition_Behavior.virtual_getApplicableConceptFunctionParameter_3044950653914717136(thisConcept);
  }
  public SNode virtual_getExpectedReturnType_1213877374441(SNode thisNode) {
    return XMLSAXChildRuleCondition_Behavior.virtual_getExpectedReturnType_1213877374441(thisNode);
  }
  public List<SNode> virtual_getThrowableTypes_6204026822016975623(SNode thisNode) {
    return XMLSAXChildRuleCondition_Behavior.virtual_getThrowableTypes_6204026822016975623(thisNode);
  }
  @Override
  public String getConceptFqName() {
    return "jetbrains.mps.core.xml.sax.structure.XMLSAXChildRuleCondition";
  }
}
