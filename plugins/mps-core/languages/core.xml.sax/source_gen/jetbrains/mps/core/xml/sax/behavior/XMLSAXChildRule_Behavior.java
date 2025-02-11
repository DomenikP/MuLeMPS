package jetbrains.mps.core.xml.sax.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.scope.Scope;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.scope.EmptyScope;
import jetbrains.mps.scope.SimpleRoleScope;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;

public class XMLSAXChildRule_Behavior {
  public static void init(SNode thisNode) {
  }
  public static String call_getTagName_2264311582634140608(SNode thisNode) {
    if ((SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xdcb5a83a19a844ffL, 0xa4cbfc7d324ecc63L, 0x1f6c736337b5e2d8L, 0x1f6c736337b5e2dcL, "rule")) != null) && isNotEmptyString(SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xdcb5a83a19a844ffL, 0xa4cbfc7d324ecc63L, 0x1f6c736337b5e2d8L, 0x1f6c736337b5e2dcL, "rule")), MetaAdapterFactory.getProperty(0xdcb5a83a19a844ffL, 0xa4cbfc7d324ecc63L, 0x1f6c736337b5e2f2L, 0x1f6c736337b5e2f9L, "tagName"))) && (SPropertyOperations.getBoolean(thisNode, MetaAdapterFactory.getProperty(0xdcb5a83a19a844ffL, 0xa4cbfc7d324ecc63L, 0x1f6c736337b5e2d8L, 0x1f6c736337b5e2dbL, "overrideTag")) == false || isEmptyString(SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xdcb5a83a19a844ffL, 0xa4cbfc7d324ecc63L, 0x1f6c736337b5e2d8L, 0x1f6c736337b5e2daL, "tagName"))))) {
      return SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xdcb5a83a19a844ffL, 0xa4cbfc7d324ecc63L, 0x1f6c736337b5e2d8L, 0x1f6c736337b5e2dcL, "rule")), MetaAdapterFactory.getProperty(0xdcb5a83a19a844ffL, 0xa4cbfc7d324ecc63L, 0x1f6c736337b5e2f2L, 0x1f6c736337b5e2f9L, "tagName"));
    }
    return SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xdcb5a83a19a844ffL, 0xa4cbfc7d324ecc63L, 0x1f6c736337b5e2d8L, 0x1f6c736337b5e2daL, "tagName"));
  }
  public static Scope call_getArgumentsScope_4720003541459735421(SNode thisNode, SNode kind) {
    {
      SNode concept_a0b;
      concept_a0b = kind;
      if (SConceptOperations.isSubConceptOf(SNodeOperations.asSConcept(concept_a0b), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, "jetbrains.mps.baseLanguage.structure.VariableDeclaration"))) {
        return new EmptyScope();
      }
      if (SConceptOperations.isSubConceptOf(SNodeOperations.asSConcept(concept_a0b), MetaAdapterFactory.getConcept(0xdcb5a83a19a844ffL, 0xa4cbfc7d324ecc63L, 0x1f6c736337b5e2cbL, "jetbrains.mps.core.xml.sax.structure.XMLSAXAttributeRule"))) {
        return SimpleRoleScope.forNamedElements(SNodeOperations.getNodeAncestor(thisNode, MetaAdapterFactory.getConcept(0xdcb5a83a19a844ffL, 0xa4cbfc7d324ecc63L, 0x1f6c736337b5e2f2L, "jetbrains.mps.core.xml.sax.structure.XMLSAXNodeRule"), false, false), MetaAdapterFactory.getContainmentLink(0xdcb5a83a19a844ffL, 0xa4cbfc7d324ecc63L, 0x1f6c736337b5e2f2L, 0x1f6c736337b5e2f4L, "attrs"));
      }
    }
    return null;
  }
  public static Scope virtual_getScope_3734116213129936182(SNode thisNode, SNode kind, SNode child) {
    if (child != null && child.getRoleInParent().equals("actualArgument")) {
      Scope argumentsScope = XMLSAXChildRule_Behavior.call_getArgumentsScope_4720003541459735421(thisNode, kind);
      if (argumentsScope != null) {
        return argumentsScope;
      }
    }
    if (child == SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0xdcb5a83a19a844ffL, 0xa4cbfc7d324ecc63L, 0x1f6c736337b5e2d8L, 0x4180d2369beda765L, "condition"))) {
      {
        SNode concept_a0b0c;
        concept_a0b0c = kind;
        if (SConceptOperations.isSubConceptOf(SNodeOperations.asSConcept(concept_a0b0c), MetaAdapterFactory.getConcept(0xdcb5a83a19a844ffL, 0xa4cbfc7d324ecc63L, 0x1f6c736337b5e2cbL, "jetbrains.mps.core.xml.sax.structure.XMLSAXAttributeRule"))) {
          return SimpleRoleScope.forNamedElements(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xdcb5a83a19a844ffL, 0xa4cbfc7d324ecc63L, 0x1f6c736337b5e2d8L, 0x1f6c736337b5e2dcL, "rule")), MetaAdapterFactory.getContainmentLink(0xdcb5a83a19a844ffL, 0xa4cbfc7d324ecc63L, 0x1f6c736337b5e2f2L, 0x1f6c736337b5e2f4L, "attrs"));
        }
      }
    }
    return BehaviorReflection.invokeSuper(Scope.class, thisNode, "jetbrains.mps.lang.core.structure.ScopeProvider", "virtual_getScope_3734116213129936182", new Object[]{kind, child});
  }
  public static Scope virtual_getScope_7722139651431880752(SNode thisNode, SNode kind, String role, int index) {
    if (role.equals("actualArgument")) {
      Scope argumentsScope = XMLSAXChildRule_Behavior.call_getArgumentsScope_4720003541459735421(thisNode, kind);
      if (argumentsScope != null) {
        return argumentsScope;
      }
    }
    return BehaviorReflection.invokeSuper(Scope.class, thisNode, "jetbrains.mps.lang.core.structure.ScopeProvider", "virtual_getScope_7722139651431880752", new Object[]{kind, role, index});
  }
  private static boolean isNotEmptyString(String str) {
    return str != null && str.length() > 0;
  }
  private static boolean isEmptyString(String str) {
    return str == null || str.length() == 0;
  }
}
