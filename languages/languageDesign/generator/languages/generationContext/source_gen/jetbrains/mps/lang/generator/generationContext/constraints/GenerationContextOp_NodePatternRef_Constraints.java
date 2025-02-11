package jetbrains.mps.lang.generator.generationContext.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import java.util.Map;
import jetbrains.mps.smodel.adapter.ids.SReferenceLinkId;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor;
import java.util.HashMap;
import jetbrains.mps.smodel.runtime.base.BaseReferenceConstraintsDescriptor;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.smodel.runtime.ReferenceScopeProvider;
import jetbrains.mps.smodel.runtime.base.BaseReferenceScopeProvider;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsContext;
import java.util.List;
import org.jetbrains.mps.openapi.model.SNode;
import java.util.ArrayList;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;

public class GenerationContextOp_NodePatternRef_Constraints extends BaseConstraintsDescriptor {
  public GenerationContextOp_NodePatternRef_Constraints() {
    super(MetaIdFactory.conceptId(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x3fb2d847d55fc21eL));
  }
  @Override
  protected Map<SReferenceLinkId, ReferenceConstraintsDescriptor> getNotDefaultSReferenceLinks() {
    Map<SReferenceLinkId, ReferenceConstraintsDescriptor> references = new HashMap<SReferenceLinkId, ReferenceConstraintsDescriptor>();
    references.put(MetaIdFactory.refId(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x3fb2d847d55fc21eL, 0x3fb2d847d55fdcd5L), new BaseReferenceConstraintsDescriptor(MetaIdFactory.refId(0xd7706f639be2479cL, 0xa3daae92af1e64d5L, 0x3fb2d847d55fc21eL, 0x3fb2d847d55fdcd5L), this) {
      @Override
      public boolean hasOwnScopeProvider() {
        return true;
      }
      @Nullable
      @Override
      public ReferenceScopeProvider getScopeProvider() {
        return new BaseReferenceScopeProvider() {
          @Override
          public Object createSearchScopeOrListOfNodes(final IOperationContext operationContext, final ReferenceConstraintsContext _context) {
            List<SNode> result = new ArrayList<SNode>();
            SNode rule = SNodeOperations.getNodeAncestor(_context.getEnclosingNode(), MetaAdapterFactory.getConcept(0xb401a68083254110L, 0x8fd384331ff25befL, 0x190d31fe6a12ebb4L, "jetbrains.mps.lang.generator.structure.PatternReduction_MappingRule"), false, false);
            if ((rule != null) && (SLinkOperations.getTarget(rule, MetaAdapterFactory.getContainmentLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0x190d31fe6a12ebb4L, 0x190d31fe6a13891aL, "pattern")) != null)) {
              ListSequence.fromList(result).addSequence(ListSequence.fromList(SNodeOperations.getNodeDescendants(SLinkOperations.getTarget(rule, MetaAdapterFactory.getContainmentLink(0xb401a68083254110L, 0x8fd384331ff25befL, 0x190d31fe6a12ebb4L, 0x190d31fe6a13891aL, "pattern")), MetaAdapterFactory.getConcept(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x108a9cb4793L, "jetbrains.mps.lang.pattern.structure.PatternVariableDeclaration"), false, new SAbstractConcept[]{})));
            }
            return result;
          }
          @Override
          public SNodeReference getSearchScopeValidatorNode() {
            return breakingNode_1txhs1_a0a1a0a0a1a0b0a1a1;
          }
        };
      }
    });
    return references;
  }
  private static SNodePointer breakingNode_1txhs1_a0a1a0a0a1a0b0a1a1 = new SNodePointer("r:00000000-0000-4000-0000-011c895902ee(jetbrains.mps.lang.generator.generationContext.constraints)", "4589968773278063864");
}
