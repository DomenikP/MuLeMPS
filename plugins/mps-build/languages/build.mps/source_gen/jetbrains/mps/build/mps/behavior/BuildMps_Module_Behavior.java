package jetbrains.mps.build.mps.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.build.util.VisibleArtifacts;
import jetbrains.mps.build.util.RequiredDependenciesBuilder;
import jetbrains.mps.build.mps.util.MPSModulesClosure;
import java.util.List;
import java.util.ArrayList;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.baseLanguage.tuples.runtime.Tuples;
import jetbrains.mps.build.behavior.BuildSource_JavaExternalJarRef_Behavior;
import jetbrains.mps.build.util.JavaExportUtil;

public class BuildMps_Module_Behavior {
  public static void init(SNode thisNode) {
  }
  public static boolean virtual_isCompilable_7454762407073969360(SNode thisNode) {
    return SPropertyOperations.getBoolean(thisNode, MetaAdapterFactory.getProperty(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508331930cL, 0x14d3fb6fb84ac614L, "doNotCompile")) == false;
  }
  public static void virtual_fetchDependencies_5908258303322131137(SNode thisNode, VisibleArtifacts artifacts, RequiredDependenciesBuilder builder) {
    MPSModulesClosure closure = new MPSModulesClosure(thisNode).closure();

    boolean needsFetch = false;
    List<SNode> requiredJars = new ArrayList<SNode>();
    for (SNode m : Sequence.fromIterable(closure.getModules())) {
      SNode artifact;
      if (SNodeOperations.getContainingRoot(m) != SNodeOperations.getContainingRoot(thisNode) && BehaviorReflection.invokeVirtual(Boolean.TYPE, m, "virtual_isCompilable_7454762407073969360", new Object[]{})) {
        artifact = SNodeOperations.as(artifacts.findArtifact(m), MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x668c6cfbafac4c85L, "jetbrains.mps.build.structure.BuildLayout_Node"));
        if (artifact != null) {
          builder.add(artifact, m);
          needsFetch = true;
        }
      }

      for (SNode dep : Sequence.fromIterable(SNodeOperations.ofConcept(ListSequence.fromList(SLinkOperations.getChildren(m, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x48e82d508331930cL, 0x48e82d5083341cb8L, "dependencies"))).select(new ISelector<SNode, SNode>() {
        public SNode select(SNode it) {
          return (SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x64bd442e1cf7aaeeL, "jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency")) ? SLinkOperations.getTarget(SNodeOperations.cast(it, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x64bd442e1cf7aaeeL, "jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency")), MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x64bd442e1cf7aaeeL, 0x64bd442e1cf7aaefL, "dependency")) : it);
        }
      }), MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x3b60c4a45c197e19L, "jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyJar")))) {
        if ((SLinkOperations.getTarget(dep, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x3b60c4a45c197e19L, 0x26d578f4b6e3757fL, "customLocation")) != null)) {
          Tuples._2<SNode, Boolean> dependencyTarget = BuildSource_JavaExternalJarRef_Behavior.call_getDependencyTarget_5610619299014309566(SLinkOperations.getTarget(dep, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x3b60c4a45c197e19L, 0x26d578f4b6e3757fL, "customLocation")), artifacts);
          if (dependencyTarget != null) {
            if ((boolean) dependencyTarget._1()) {
              builder.addWithContent(dependencyTarget._0());
            } else {
              builder.add(dependencyTarget._0());
            }
            needsFetch = true;
          }
        } else {
          if (SNodeOperations.getContainingRoot(m) == SNodeOperations.getContainingRoot(thisNode)) {
            continue;
          }

          ListSequence.fromList(requiredJars).addElement(SLinkOperations.getTarget(dep, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x3b60c4a45c197e19L, 0x3b60c4a45c197e1aL, "path")));
        }
      }
    }

    for (SNode lr : Sequence.fromIterable(closure.getLanguagesWithRuntime())) {
      for (SNode runtime : SLinkOperations.getChildren(lr, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c446791464290f8L, 0x2c4467914643be24L, "runtime"))) {
        if (!(SNodeOperations.isInstanceOf(runtime, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x3b60c4a45c192890L, "jetbrains.mps.build.mps.structure.BuildMps_ModuleJarRuntime")))) {
          continue;
        }

        SNode jarRuntime = SNodeOperations.cast(runtime, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x3b60c4a45c192890L, "jetbrains.mps.build.mps.structure.BuildMps_ModuleJarRuntime"));
        if ((SLinkOperations.getTarget(jarRuntime, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x3b60c4a45c192890L, 0x26d578f4b6e3757eL, "customLocation")) != null)) {
          Tuples._2<SNode, Boolean> dependencyTarget = BuildSource_JavaExternalJarRef_Behavior.call_getDependencyTarget_5610619299014309566(SLinkOperations.getTarget(jarRuntime, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x3b60c4a45c192890L, 0x26d578f4b6e3757eL, "customLocation")), artifacts);
          if (dependencyTarget != null) {
            if ((boolean) dependencyTarget._1()) {
              builder.addWithContent(dependencyTarget._0());
            } else {
              builder.add(dependencyTarget._0());
            }
            needsFetch = true;
          }
        } else {
          if (SNodeOperations.getContainingRoot(lr) == SNodeOperations.getContainingRoot(thisNode)) {
            continue;
          }

          ListSequence.fromList(requiredJars).addElement(SLinkOperations.getTarget(jarRuntime, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x3b60c4a45c192890L, 0x3b60c4a45c192894L, "path")));
        }
      }
    }

    for (SNode path : ListSequence.fromList(requiredJars)) {
      Tuples._2<SNode, String> resource = artifacts.getResource(SNodeOperations.cast(artifacts.toOriginalNode(path), MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x668c6cfbafacdc3eL, "jetbrains.mps.build.structure.BuildSourcePath")));
      SNode artifact = SNodeOperations.as(resource._0(), MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x668c6cfbafac4c85L, "jetbrains.mps.build.structure.BuildLayout_Node"));
      if (artifact != null) {
        if (isNotEmptyString(resource._1())) {
          builder.addWithContent(artifact);
        } else {
          builder.add(artifact);
        }
        needsFetch = true;
        if (SNodeOperations.isInstanceOf(artifact, MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x7f76698a394d9b91L, "jetbrains.mps.build.structure.BuildLayout_AbstractCopy"))) {
          SNode file = SNodeOperations.as(SLinkOperations.getTarget(SNodeOperations.cast(artifact, MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x7f76698a394d9b91L, "jetbrains.mps.build.structure.BuildLayout_AbstractCopy")), MetaAdapterFactory.getContainmentLink(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x7f76698a394d9b91L, 0x48d5d03db92339baL, "fileset")), MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x48d5d03db9224596L, "jetbrains.mps.build.structure.BuildInputSingleFile"));
          if ((file != null)) {
            // again, register real path here to enable "import jar ...." construction 
            artifacts.findArtifact(SLinkOperations.getTarget(file, MetaAdapterFactory.getContainmentLink(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x48d5d03db9224596L, 0x48d5d03db922459aL, "path")));
          }
        }
      }
    }

    MPSModulesClosure.RequiredJavaModules requiredJava = closure.getRequiredJava();
    for (SNode jm : Sequence.fromIterable(requiredJava.getModules())) {
      if (requiredJava.isReexported(jm)) {
        JavaExportUtil.requireModule(artifacts, jm, thisNode, builder);
      } else {
        if (SNodeOperations.getContainingRoot(jm) == SNodeOperations.getContainingRoot(thisNode)) {
          continue;
        }

        SNode artifact = SNodeOperations.as(artifacts.findArtifact(jm), MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x668c6cfbafac4c85L, "jetbrains.mps.build.structure.BuildLayout_Node"));
        if (artifact != null) {
          needsFetch = true;
          builder.add(artifact, jm);
        }
      }
    }

    // fetch generation time dependencies 
    MPSModulesClosure genClosure = new MPSModulesClosure(thisNode).trackDevkits().runtimeClosure().generationDependenciesClosure();
    for (SNode m : Sequence.fromIterable(genClosure.getAllModules())) {
      SNode artifact;
      if (SNodeOperations.getContainingRoot(m) != SNodeOperations.getContainingRoot(thisNode)) {
        artifact = SNodeOperations.as(artifacts.findArtifact(m), MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x668c6cfbafac4c85L, "jetbrains.mps.build.structure.BuildLayout_Node"));
        if (artifact != null) {
          builder.add(artifact, m);
        } else if (SNodeOperations.isInstanceOf(m, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d2060eL, "jetbrains.mps.build.mps.structure.BuildMps_DevKit"))) {
          artifact = SNodeOperations.as(artifacts.findArtifact(SLinkOperations.getTarget(SNodeOperations.cast(m, MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d2060eL, "jetbrains.mps.build.mps.structure.BuildMps_DevKit")), MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d333ebL, 0x4780308f5d47f25L, "path"))), MetaAdapterFactory.getConcept(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x668c6cfbafac4c85L, "jetbrains.mps.build.structure.BuildLayout_Node"));
          if (artifact != null) {
            builder.add(artifact, m);
          }
        }
      }
    }

    if (needsFetch) {
      artifacts.needsFetch(thisNode);
    }
  }
  private static boolean isNotEmptyString(String str) {
    return str != null && str.length() > 0;
  }
}
