package jetbrains.mps.console.ideCommands.constraints;

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
import jetbrains.mps.smodel.runtime.base.BaseScopeProvider;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.scope.Scope;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.scopes.runtime.NamedElementsScope;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.smodel.SNodePointer;

public class ActionCallDeclaredParameter_Constraints extends BaseConstraintsDescriptor {
  public ActionCallDeclaredParameter_Constraints() {
    super(MetaIdFactory.conceptId(0xa5e4de5346a344daL, 0xaab368fdf1c34ed0L, 0x4d7759afce9587a7L));
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
    references.put(MetaIdFactory.refId(0xa5e4de5346a344daL, 0xaab368fdf1c34ed0L, 0x4d7759afce9587a7L, 0x4d7759afce9587a8L), new BaseReferenceConstraintsDescriptor(MetaIdFactory.refId(0xa5e4de5346a344daL, 0xaab368fdf1c34ed0L, 0x4d7759afce9587a7L, 0x4d7759afce9587a8L), this) {
      @Override
      public boolean hasOwnScopeProvider() {
        return true;
      }
      @Nullable
      @Override
      public ReferenceScopeProvider getScopeProvider() {
        return new BaseScopeProvider() {
          @Override
          public SNodeReference getSearchScopeValidatorNode() {
            return breakingNode_tpbdkp_a0a0a0a0a1a0b0a1a3;
          }
          @Override
          public Scope createScope(final IOperationContext operationContext, final ReferenceConstraintsContext _context) {
            if (SNodeOperations.isInstanceOf(_context.getEnclosingNode(), MetaAdapterFactory.getConcept(0xa5e4de5346a344daL, 0xaab368fdf1c34ed0L, 0x4d7759afce9587adL, "jetbrains.mps.console.ideCommands.structure.CallActionExpression"))) {
              return new NamedElementsScope(ListSequence.fromList(SNodeOperations.getChildren(SLinkOperations.getTarget(SNodeOperations.cast(_context.getEnclosingNode(), MetaAdapterFactory.getConcept(0xa5e4de5346a344daL, 0xaab368fdf1c34ed0L, 0x4d7759afce9587adL, "jetbrains.mps.console.ideCommands.structure.CallActionExpression")), MetaAdapterFactory.getReferenceLink(0xa5e4de5346a344daL, 0xaab368fdf1c34ed0L, 0x4d7759afce9587adL, 0x4d7759afce9587aeL, "action")))).where(new IWhereFilter<SNode>() {
                public boolean accept(SNode it) {
                  return SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0x28f9e4973b424291L, 0xaeba0a1039153ab1L, 0x11b69e025e0L, "jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration"));
                }
              }).select(new ISelector<SNode, SNode>() {
                public SNode select(SNode it) {
                  return SNodeOperations.cast(it, MetaAdapterFactory.getConcept(0x28f9e4973b424291L, 0xaeba0a1039153ab1L, 0x11b69e025e0L, "jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration"));
                }
              }));
            }
            return null;
          }
        };
      }
    });
    return references;
  }
  public static boolean static_canBeAChild(SNode node, SNode parentNode, SNode link, SNode childConcept, final IOperationContext operationContext) {
    return SNodeOperations.isInstanceOf(parentNode, MetaAdapterFactory.getConcept(0xa5e4de5346a344daL, 0xaab368fdf1c34ed0L, 0x4d7759afce9587adL, "jetbrains.mps.console.ideCommands.structure.CallActionExpression"));
  }
  private static SNodePointer canBeChildBreakingPoint = new SNodePointer("r:64807243-49b2-422a-a08f-a5df76bf508d(jetbrains.mps.console.ideCommands.constraints)", "5582028874769074553");
  private static SNodePointer breakingNode_tpbdkp_a0a0a0a0a1a0b0a1a3 = new SNodePointer("r:64807243-49b2-422a-a08f-a5df76bf508d(jetbrains.mps.console.ideCommands.constraints)", "5582028874769074514");
}
