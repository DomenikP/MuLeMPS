package jetbrains.mps.baseLanguage.collections.typesystem;

/*Generated by MPS */

import jetbrains.mps.lang.typesystem.runtime.SubtypingRule_Runtime;
import jetbrains.mps.lang.typesystem.runtime.ISubtypingRule_Runtime;
import jetbrains.mps.lang.pattern.GeneratedMatchingPattern;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.TypeCheckingContext;
import jetbrains.mps.lang.typesystem.runtime.IsApplicableStatus;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.pattern.IMatchingPattern;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.lang.pattern.runtime.PatternUtil;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.util.IterableUtil;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.lang.typesystem.runtime.HUtil;
import jetbrains.mps.smodel.SNodePointer;

public class SortedMap_comparableTo_sorted_map_SubtypingRule extends SubtypingRule_Runtime implements ISubtypingRule_Runtime {
  /*package*/ GeneratedMatchingPattern myMatchingPattern;
  public SortedMap_comparableTo_sorted_map_SubtypingRule() {
  }
  public SNode getSubOrSuperType(SNode sortedMap, TypeCheckingContext typeCheckingContext, IsApplicableStatus status) {
    return _quotation_createNode_nagdzg_a0a2(((SNode) status.getPattern().getFieldValue("patternVar_VALUE")), ((SNode) status.getPattern().getFieldValue("patternVar_KEY")));
  }
  public SAbstractConcept getApplicableConcept() {
    return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType");
  }
  public IsApplicableStatus isApplicableAndPattern(SNode argument) {
    {
      GeneratedMatchingPattern pattern = new SortedMap_comparableTo_sorted_map_SubtypingRule.Pattern_nagdzg_a0a0a0a4();
      this.myMatchingPattern = pattern;
      boolean b = pattern.match(argument);
      return new IsApplicableStatus(b, pattern);
    }
  }
  public boolean isWeak() {
    return true;
  }
  public static class Pattern_nagdzg_a0a0a0a4 extends GeneratedMatchingPattern implements IMatchingPattern {
    /*package*/ SNode patternVar_KEY;
    /*package*/ SNode patternVar_VALUE;
    public Pattern_nagdzg_a0a0a0a4() {
    }
    public SConcept getConcept() {
      return MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType");
    }
    public boolean match(SNode nodeToMatch) {
      {
        SNode nodeToMatch_1q5lf6_a0a = nodeToMatch;
        if (!(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, "jetbrains.mps.baseLanguage.structure.ClassifierType").equals(nodeToMatch_1q5lf6_a0a.getConcept()))) {
          return false;
        }
        {
          SNodeReference pointer = SNODE_POINTER_nagdzg_a0a0a0a0b0b0a0b0a0a0a0e;
          if (!(PatternUtil.matchReferentWithNode(pointer, nodeToMatch_1q5lf6_a0a.getReferenceTarget(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x101de490babL, "classifier"))))) {
            return false;
          }
        }
        {
          SContainmentLink childRole_1q5lf6_ = MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101de48bf9eL, 0x102419671abL, "parameter");
          if (!(PatternUtil.hasNChildren(nodeToMatch_1q5lf6_a0a, childRole_1q5lf6_, 2))) {
            return false;
          }
          {
            SNode childVar_1q5lf6_a0a0 = IterableUtil.get(nodeToMatch_1q5lf6_a0a.getChildren(childRole_1q5lf6_), 0);
            this.patternVar_KEY = childVar_1q5lf6_a0a0;
          }
          {
            SNode childVar_1q5lf6_b0a0 = IterableUtil.get(nodeToMatch_1q5lf6_a0a.getChildren(childRole_1q5lf6_), 1);
            this.patternVar_VALUE = childVar_1q5lf6_b0a0;
          }
        }
      }
      return true;
    }
    public boolean hasAntiquotations() {
      return false;
    }
    public void fillFieldValuesFrom(GeneratedMatchingPattern pattern) {
      if (pattern != null && pattern.getClass() == this.getClass()) {
        patternVar_KEY = (SNode) pattern.getFieldValue("patternVar_KEY");
        patternVar_VALUE = (SNode) pattern.getFieldValue("patternVar_VALUE");
      }
    }
    public Object getFieldValue(String fieldName) {
      if ("patternVar_KEY".equals(fieldName)) {
        return patternVar_KEY;
      }
      if ("patternVar_VALUE".equals(fieldName)) {
        return patternVar_VALUE;
      }
      return null;
    }
    public void performActions(Object o) {
    }
  }
  private static SNode _quotation_createNode_nagdzg_a0a2(Object parameter_1, Object parameter_2) {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_3 = null;
    SNode quotedNode_4 = null;
    SNode quotedNode_5 = null;
    quotedNode_3 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x120c4067207L, "jetbrains.mps.baseLanguage.collections.structure.SortedMapType"), null, null, false);
    quotedNode_4 = (SNode) parameter_1;
    if (quotedNode_4 != null) {
      quotedNode_3.addChild(MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x116db7e6bcbL, 0x116db7f8516L, "valueType"), HUtil.copyIfNecessary(quotedNode_4));
    }
    quotedNode_5 = (SNode) parameter_2;
    if (quotedNode_5 != null) {
      quotedNode_3.addChild(MetaAdapterFactory.getContainmentLink(0x8388864671ce4f1cL, 0x9c53c54016f6ad4fL, 0x116db7e6bcbL, 0x116db7f62a8L, "keyType"), HUtil.copyIfNecessary(quotedNode_5));
    }
    return quotedNode_3;
  }
  private static SNodePointer SNODE_POINTER_nagdzg_a0a0a0a0b0b0a0b0a0a0a0e = new SNodePointer("6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)", "~SortedMap");
}
