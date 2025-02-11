package jetbrains.mps.build.mps.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.internal.collections.runtime.ISelector;

public class BuildMps_IdeaPluginGroup_Behavior {
  public static void init(SNode thisNode) {
  }
  public static boolean virtual_exports_6547494638219603457(SNode thisNode, Object object) {
    if (object instanceof SNode) {
      SNode node = (SNode) object;
      if (SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d333ebL, "jetbrains.mps.build.mps.structure.BuildMps_AbstractModule"))) {
        return ListSequence.fromList(SLinkOperations.getChildren(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x5b7be37b4deb1201L, 0x5b7be37b4deb1202L, "group")), MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x14d3fb6fb843ebddL, 0x14d3fb6fb843ebdeL, "modules"))).contains(SNodeOperations.cast(node, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d333ebL, "jetbrains.mps.build.mps.structure.BuildMps_AbstractModule")));
      }
    }
    return BehaviorReflection.invokeSuper(Boolean.TYPE, thisNode, "jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginContent", "virtual_exports_6547494638219603457", new Object[]{object});
  }
  public static boolean call_isCustomPackaging_8301447434616552323(SNode thisNode, SNode module) {
    return ListSequence.fromList(SLinkOperations.getChildren(thisNode, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x5b7be37b4deb1201L, 0x37fdb3de482e2b2fL, "customPackaging"))).select(new ISelector<SNode, SNode>() {
      public SNode select(SNode it) {
        return SLinkOperations.getTarget(it, MetaAdapterFactory.getReferenceLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x37fdb3de482e2b27L, 0x37fdb3de482e2b28L, "target"));
      }
    }).contains(module);
  }
}
