package jetbrains.mps.lang.test.constraints;

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
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.ArrayList;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import java.util.List;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;

public class TestNodeReference_Constraints extends BaseConstraintsDescriptor {
  public TestNodeReference_Constraints() {
    super(MetaIdFactory.conceptId(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x119e1d33213L));
  }
  @Override
  protected Map<SReferenceLinkId, ReferenceConstraintsDescriptor> getNotDefaultSReferenceLinks() {
    Map<SReferenceLinkId, ReferenceConstraintsDescriptor> references = new HashMap<SReferenceLinkId, ReferenceConstraintsDescriptor>();
    references.put(MetaIdFactory.refId(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x119e1d33213L, 0x119e1d356c6L), new BaseReferenceConstraintsDescriptor(MetaIdFactory.refId(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x119e1d33213L, 0x119e1d356c6L), this) {
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
            if (SNodeOperations.getNodeAncestor(_context.getEnclosingNode(), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b5a38fc01L, "jetbrains.mps.lang.test.structure.TestNode"), false, false) != null) {
              return new ArrayList<SNode>();
            }
            SNode test = SNodeOperations.getNodeAncestorWhereConceptInList(_context.getEnclosingNode(), new SAbstractConcept[]{MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b55b49e46L, "jetbrains.mps.lang.test.structure.NodesTestCase"), MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11e314b20e0L, "jetbrains.mps.lang.test.structure.EditorTestCase")}, true, false);
            List<SNode> result = new ArrayList<SNode>();
            if (test != null) {
              for (SNode node : ListSequence.fromList(SNodeOperations.getNodeDescendants(test, MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x119e1c6609cL, "jetbrains.mps.lang.test.structure.TestNodeAnnotation"), true, new SAbstractConcept[]{}))) {
                ListSequence.fromList(result).addElement(node);
              }
            }
            return result;
          }
          @Override
          public SNodeReference getSearchScopeValidatorNode() {
            return breakingNode_i5q66v_a0a1a0a0a1a0b0a1a1;
          }
        };
      }
    });
    return references;
  }
  private static SNodePointer breakingNode_i5q66v_a0a1a0a0a1a0b0a1a1 = new SNodePointer("r:00000000-0000-4000-0000-011c89590382(jetbrains.mps.lang.test.constraints)", "1213104844718");
}
