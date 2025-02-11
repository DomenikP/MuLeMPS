package jetbrains.mps.build.mps.runner.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.build.util.VisibleArtifacts;
import jetbrains.mps.build.util.RequiredDependenciesBuilder;
import jetbrains.mps.generator.template.TemplateQueryContext;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.build.mps.util.MPSModulesClosure;
import jetbrains.mps.build.util.DependenciesHelper;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.scope.Scope;
import jetbrains.mps.build.util.DescendantsScope;

public class BuildSolutionRunnerAspect_Behavior {
  public static void init(SNode thisNode) {
  }
  public static String virtual_getClassName_1350734474210951475(SNode thisNode) {
    return "MainClass";
  }
  public static String virtual_getMethodName_1350734474210955274(SNode thisNode) {
    return "mpsMain";
  }
  public static String call_getFQClassName_1350734474211110544(SNode thisNode) {
    return SPropertyOperations.getString(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x427a473d5177432cL, 0x9905bcbceb71b996L, 0x39ea87a41cc0827eL, 0x54b085b5945c6691L, "solution")), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")) + "." + BehaviorReflection.invokeVirtual(String.class, thisNode, "virtual_getClassName_1350734474210951475", new Object[]{});
  }
  public static void virtual_fetchDependencies_5908258303322131137(SNode thisNode, VisibleArtifacts artifacts, RequiredDependenciesBuilder builder) {
    SNode project = artifacts.getProject();
    TemplateQueryContext genContext = artifacts.getGenContext();

    Iterable<SNode> originalModules = Sequence.<SNode>singleton(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x427a473d5177432cL, 0x9905bcbceb71b996L, 0x39ea87a41cc0827eL, 0x54b085b5945c6691L, "solution")));
    Iterable<SNode> modules = Sequence.fromIterable(new MPSModulesClosure(originalModules).trackDevkits().designtimeClosure().getAllModules()).union(Sequence.fromIterable(originalModules));
    for (SNode m : Sequence.fromIterable(modules)) {
      SNode artifact;
      SNode originalModule = DependenciesHelper.getOriginalNode(m, genContext);
      VisibleArtifacts currentArtifacts = artifacts;
      artifact = SNodeOperations.as(currentArtifacts.findArtifact(originalModule), MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x668c6cfbafac4c85L, "jetbrains.mps.build.structure.BuildLayout_Node"));
      if (artifact != null) {
        builder.add(SNodeOperations.as(DependenciesHelper.getOriginalNode(artifact, genContext), MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x668c6cfbafac4c85L, "jetbrains.mps.build.structure.BuildLayout_Node")), originalModule);
      } else if (SNodeOperations.isInstanceOf(originalModule, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d2060eL, "jetbrains.mps.build.mps.structure.BuildMps_DevKit"))) {
        artifact = SNodeOperations.as(currentArtifacts.findArtifact(SLinkOperations.getTarget(SNodeOperations.cast(originalModule, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d2060eL, "jetbrains.mps.build.mps.structure.BuildMps_DevKit")), MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d333ebL, 0x4780308f5d47f25L, "path"))), MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x668c6cfbafac4c85L, "jetbrains.mps.build.structure.BuildLayout_Node"));
        if (artifact != null) {
          builder.add(SNodeOperations.as(DependenciesHelper.getOriginalNode(artifact, genContext), MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x668c6cfbafac4c85L, "jetbrains.mps.build.structure.BuildLayout_Node")), originalModule);
        }
      }
    }
  }
  public static Scope virtual_getScope_3734116213129936182(SNode thisNode, SNode kind, SNode child) {
    return DescendantsScope.forNamedElements(SNodeOperations.getNodeAncestor(thisNode, MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x4df58c6f18f84a13L, "jetbrains.mps.build.structure.BuildProject"), false, false), SLinkOperations.findLinkDeclaration(MetaAdapterFactory.getContainmentLink(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x4df58c6f18f84a13L, 0x668c6cfbafacf6f2L, "parts")), kind);
  }
}
