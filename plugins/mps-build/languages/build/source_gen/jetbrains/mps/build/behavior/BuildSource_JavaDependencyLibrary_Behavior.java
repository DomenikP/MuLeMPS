package jetbrains.mps.build.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.build.util.VisibleArtifacts;
import jetbrains.mps.build.util.RequiredDependenciesBuilder;
import jetbrains.mps.build.util.JavaExportUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;

public class BuildSource_JavaDependencyLibrary_Behavior {
  public static void init(SNode thisNode) {
  }
  public static void virtual_fetchDependencies_5908258303322131137(SNode thisNode, VisibleArtifacts artifacts, RequiredDependenciesBuilder builder) {
    JavaExportUtil.requireLibrary(artifacts, SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x454b730dd9079dceL, 0x454b730dd9079dcfL, "library")), SNodeOperations.getParent(thisNode), builder);
  }
}
