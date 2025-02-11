package jetbrains.mps.baseLanguage.search;

/*Generated by MPS */

import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.NotNull;
import java.util.List;
import org.jetbrains.mps.util.Condition;
import java.util.ArrayList;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;

@Deprecated
public class SuperMethodCall_InstanceMethodScope extends ClassifierVisibleMembersScope {
  @Deprecated
  public SuperMethodCall_InstanceMethodScope(@Nullable SNode superclassType, @Nullable SNode contextNode) {
    // use classifier.getMembers(concept/SuperMethodKind) 
    super(superclassType, contextNode, IClassifiersSearchScope.INSTANCE_METHOD);
  }
  @NotNull
  @Override
  public List<SNode> getNodes(Condition<SNode> condition) {
    List<SNode> nodes = super.getNodes(condition);
    List<SNode> result = new ArrayList<SNode>();
    for (SNode node : nodes) {
      if (SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration")) && !(BehaviorReflection.invokeVirtual(Boolean.TYPE, SNodeOperations.cast(node, MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration")), "virtual_isAbstract_1232982539764", new Object[]{}))) {
        if (SNodeOperations.isInstanceOf(SNodeOperations.getParent(node), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"))) {
          result.add(node);
        }
      }
    }
    return result;
  }
}
