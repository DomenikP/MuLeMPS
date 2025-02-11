package jetbrains.mps.execution.settings.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.runtime.CheckingNodeContext;
import java.util.Map;
import jetbrains.mps.smodel.adapter.ids.SReferenceLinkId;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor;
import java.util.HashMap;
import jetbrains.mps.smodel.runtime.base.BaseReferenceConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.ReferenceScopeProvider;
import jetbrains.mps.smodel.runtime.base.BaseReferenceScopeProvider;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;

public class EditorPropertyReference_Constraints extends BaseConstraintsDescriptor {
  public EditorPropertyReference_Constraints() {
    super(MetaIdFactory.conceptId(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f910133L));
  }
  @Override
  public boolean hasOwnCanBeChildMethod() {
    return true;
  }
  @Override
  public boolean canBeChild(@Nullable SNode node, SNode parentNode, SNode link, SNode childConcept, final IOperationContext operationContext, @Nullable final CheckingNodeContext checkingNodeContext) {
    boolean result = static_canBeAChild(node, parentNode, link, childConcept, operationContext);

    if (!(result) && checkingNodeContext != null) {
      checkingNodeContext.setBreakingNode(canBeChildBreakingPoint);
    }

    return result;
  }
  @Override
  protected Map<SReferenceLinkId, ReferenceConstraintsDescriptor> getNotDefaultSReferenceLinks() {
    Map<SReferenceLinkId, ReferenceConstraintsDescriptor> references = new HashMap<SReferenceLinkId, ReferenceConstraintsDescriptor>();
    references.put(MetaIdFactory.refId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L), new BaseReferenceConstraintsDescriptor(MetaIdFactory.refId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L), this) {
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
            return SLinkOperations.getChildren(SNodeOperations.getNodeAncestor(_context.getEnclosingNode(), MetaAdapterFactory.getConcept(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f91013dL, "jetbrains.mps.execution.settings.structure.SettingsEditor"), false, false), MetaAdapterFactory.getContainmentLink(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f91013dL, 0xd244b712f910142L, "propertyDeclaration"));
          }
          @Override
          public SNodeReference getSearchScopeValidatorNode() {
            return breakingNode_fgw7og_a0a1a0a0a1a0b0a1a3;
          }
        };
      }
    });
    return references;
  }
  public static boolean static_canBeAChild(SNode node, SNode parentNode, SNode link, SNode childConcept, final IOperationContext operationContext) {
    return (SNodeOperations.getNodeAncestor(parentNode, MetaAdapterFactory.getConcept(0x756e911c3f1f4a48L, 0xbdf5a2ceb91b723cL, 0xd244b712f91013dL, "jetbrains.mps.execution.settings.structure.SettingsEditor"), false, false) != null);
  }
  private static SNodePointer canBeChildBreakingPoint = new SNodePointer("r:26cd452e-c5c2-4d47-ad13-dda4362e8616(jetbrains.mps.execution.settings.constraints)", "946964771156067191");
  private static SNodePointer breakingNode_fgw7og_a0a1a0a0a1a0b0a1a3 = new SNodePointer("r:26cd452e-c5c2-4d47-ad13-dda4362e8616(jetbrains.mps.execution.settings.constraints)", "2228878981387169228");
}
