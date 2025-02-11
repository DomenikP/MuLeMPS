package jetbrains.mps.baseLanguageInternal.actions;

/*Generated by MPS */

import java.util.List;
import jetbrains.mps.openapi.editor.cells.SubstituteAction;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.smodel.action.NodeSubstituteActionsFactoryContext;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import jetbrains.mps.smodel.action.ChildSubstituteActionsHelper;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.action.NodeSubstitutePreconditionContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;

public class QueriesGenerated {
  public static List<SubstituteAction> nodeSubstituteActionsBuilder_ActionsFactory_Expression_499690473982088312(final IOperationContext operationContext, final NodeSubstituteActionsFactoryContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    ListSequence.fromList(result).addSequence(ListSequence.fromList(ChildSubstituteActionsHelper.createDefaultSubstituteActions(MetaAdapterFactory.getConcept(0xdf345b11b8c74213L, 0xac6648d2a9b75d88L, 0x7a00a2a7a8b080daL, "jetbrains.mps.baseLanguageInternal.structure.WeakClassReference").getDeclarationNode(), _context.getParentNode(), _context.getCurrentTargetNode(), _context.getChildSetter())));
    return result;
  }
  public static List<SubstituteAction> nodeSubstituteActionsBuilder_ActionsFactory_InternalClassifierType_4672968395964803373(final IOperationContext operationContext, final NodeSubstituteActionsFactoryContext _context) {
    List<SubstituteAction> result = ListSequence.fromList(new ArrayList<SubstituteAction>());
    ListSequence.fromList(result).addSequence(ListSequence.fromList(ChildSubstituteActionsHelper.createDefaultSubstituteActions(MetaAdapterFactory.getConcept(0xdf345b11b8c74213L, 0xac6648d2a9b75d88L, 0x1118e558c6dL, "jetbrains.mps.baseLanguageInternal.structure.InternalClassifierType").getDeclarationNode(), _context.getParentNode(), _context.getCurrentTargetNode(), _context.getChildSetter())));
    return result;
  }
  public static boolean nodeSubstituteActionsBuilder_Precondition_InternalClassifierType_4672968395964803374(final IOperationContext operationContext, final NodeSubstitutePreconditionContext _context) {
    return SNodeOperations.isInstanceOf(_context.getParentNode(), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept")) && (SPropertyOperations.hasValue(_context.getLink(), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98052f333L, "role"), SPropertyOperations.getString(SLinkOperations.findLinkDeclaration(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0x10f6353296dL, "superclass")), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98052f333L, "role"))) || SPropertyOperations.hasValue(_context.getLink(), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98052f333L, "role"), SPropertyOperations.getString(SLinkOperations.findLinkDeclaration(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, 0xff2ac0b419L, "implementedInterface")), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98052f333L, "role")))) || SNodeOperations.isInstanceOf(_context.getParentNode(), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101edd46144L, "jetbrains.mps.baseLanguage.structure.Interface")) && SPropertyOperations.hasValue(_context.getLink(), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98052f333L, "role"), SPropertyOperations.getString(SLinkOperations.findLinkDeclaration(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101edd46144L, 0x101eddadad7L, "extendedInterface")), MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xf979bd086aL, 0xf98052f333L, "role")));
  }
}
