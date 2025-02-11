package jetbrains.mps.lang.pattern.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.runtime.CheckingNodeContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.SNodePointer;

public class ActionAsPattern_Constraints extends BaseConstraintsDescriptor {
  public ActionAsPattern_Constraints() {
    super(MetaIdFactory.conceptId(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x3d3ef1fc1814cb54L));
  }
  @Override
  public boolean hasOwnCanBeParentMethod() {
    return true;
  }
  @Override
  public boolean canBeParent(SNode node, @Nullable SNode childNode, SNode childConcept, SNode link, IOperationContext operationContext, @Nullable CheckingNodeContext checkingNodeContext) {
    boolean result = static_canBeAParent(node, childNode, childConcept, link, operationContext);

    if (!(result) && checkingNodeContext != null) {
      checkingNodeContext.setBreakingNode(canBeParentBreakingPoint);
    }

    return result;
  }
  public static boolean static_canBeAParent(SNode node, SNode childNode, SNode childConcept, SNode link, final IOperationContext operationContext) {
    if (link == SLinkOperations.findLinkDeclaration(MetaAdapterFactory.getContainmentLink(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x3d3ef1fc1814cb54L, 0x3d3ef1fc1814cb59L, "action"))) {
      return SConceptOperations.isSubConceptOf(SNodeOperations.asSConcept(childConcept), MetaAdapterFactory.getConcept(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x3d3ef1fc1815d960L, "jetbrains.mps.lang.pattern.structure.ActionStatement"));
    }
    if (link == SLinkOperations.findLinkDeclaration(MetaAdapterFactory.getContainmentLink(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x3d3ef1fc1814cb54L, 0x7cc3195fc1d254beL, "position"))) {
      return SConceptOperations.isSubConceptOf(SNodeOperations.asSConcept(childConcept), MetaAdapterFactory.getConcept(0xd4615e3bd6714ba9L, 0xaf012b78369b0ba7L, 0x16e4c142caf2bd3cL, "jetbrains.mps.lang.pattern.structure.InsertPosition"));
    }
    return false;
  }
  private static SNodePointer canBeParentBreakingPoint = new SNodePointer("r:00000000-0000-4000-0000-011c89590340(jetbrains.mps.lang.pattern.constraints)", "1483902774837520155");
}
