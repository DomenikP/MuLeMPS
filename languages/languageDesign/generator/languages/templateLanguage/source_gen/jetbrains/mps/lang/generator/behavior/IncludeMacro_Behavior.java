package jetbrains.mps.lang.generator.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.pattern.GeneratedMatchingPattern;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.pattern.IMatchingPattern;
import org.jetbrains.mps.openapi.language.SConcept;

public class IncludeMacro_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode virtual_getInputNodeTypeInsideOfMacro_1213877290799(SNode thisNode) {
    {
      GeneratedMatchingPattern pattern_wfrqja_a0a = new IncludeMacro_Behavior.Pattern_wfrqja_a0a0a0a1();
      SNode coercedNode_wfrqja_a0a = TypeChecker.getInstance().getRuntimeSupport().coerce_(TypeChecker.getInstance().getTypeOf(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getContainmentLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0x11621ab7715L, 0x11621abebb5L, "sourceNodeQuery"))), pattern_wfrqja_a0a);
      if (coercedNode_wfrqja_a0a != null) {
        return ((SNode) pattern_wfrqja_a0a.getFieldValue("patternVar_concept"));
      } else {
      }
    }
    return BehaviorReflection.invokeSuper((Class<SNode>) ((Class) Object.class), thisNode, "jetbrains.mps.lang.generator.structure.SourceSubstituteMacro", "virtual_getInputNodeTypeInsideOfMacro_1213877290799", new Object[]{});
  }
  public static class Pattern_wfrqja_a0a0a0a1 extends GeneratedMatchingPattern implements IMatchingPattern {
    /*package*/ SNode patternVar_concept;
    public Pattern_wfrqja_a0a0a0a1() {
    }
    public SConcept getConcept() {
      return MetaAdapterFactory.getConcept(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x108f968b3caL, "jetbrains.mps.lang.smodel.structure.SNodeType");
    }
    public boolean match(SNode nodeToMatch) {
      {
        SNode nodeToMatch_wfrqja_a0a0a0 = nodeToMatch;
        if (!(MetaAdapterFactory.getConcept(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x108f968b3caL, "jetbrains.mps.lang.smodel.structure.SNodeType").equals(nodeToMatch_wfrqja_a0a0a0.getConcept()))) {
          return false;
        }
        patternVar_concept = nodeToMatch_wfrqja_a0a0a0.getReferenceTarget(MetaAdapterFactory.getReferenceLink(0x7866978ea0f04cc7L, 0x81bc4d213d9375e1L, 0x108f968b3caL, 0x1090e46ca51L, "concept"));
      }
      return true;
    }
    public boolean hasAntiquotations() {
      return false;
    }
    public void fillFieldValuesFrom(GeneratedMatchingPattern pattern) {
      if (pattern != null && pattern.getClass() == this.getClass()) {
        patternVar_concept = (SNode) pattern.getFieldValue("patternVar_concept");
      }
    }
    public Object getFieldValue(String fieldName) {
      if ("patternVar_concept".equals(fieldName)) {
        return patternVar_concept;
      }
      return null;
    }
    public void performActions(Object o) {
    }
  }
}
