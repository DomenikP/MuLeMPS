package jetbrains.mps.samples.SwingBuilder.generator.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.template.PropertyMacroContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.generator.template.ReferenceMacroContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.generator.template.IfMacroContext;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodeContext;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodesContext;
import jetbrains.mps.generator.template.MapSrcMacroContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;

@Generated
public class QueriesGenerated {
  public static Object propertyMacro_GetPropertyValue_5340361359451604916(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xb4dbff0c8c314a79L, 0xa45a98e5fd0530e7L, 0x4a1cc65caa543023L, 0x4a1cc65caa543030L, "text"));
  }
  public static Object propertyMacro_GetPropertyValue_5340361359451621591(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xb4dbff0c8c314a79L, 0xa45a98e5fd0530e7L, 0x4a1cc65caa543043L, 0x4a1cc65caa543050L, "text"));
  }
  public static Object propertyMacro_GetPropertyValue_3986501926311607482(final PropertyMacroContext _context) {
    return (SPropertyOperations.getBoolean(_context.getNode(), MetaAdapterFactory.getProperty(0xb4dbff0c8c314a79L, 0xa45a98e5fd0530e7L, 0x4a1cc65caa543033L, 0x3752e6616e34d13dL, "vertical")) ? ListSequence.fromList(SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xb4dbff0c8c314a79L, 0xa45a98e5fd0530e7L, 0x4a1cc65caa543033L, 0x4a1cc65caa543040L, "components"))).count() : 1);
  }
  public static Object propertyMacro_GetPropertyValue_3986501926311631789(final PropertyMacroContext _context) {
    return (SPropertyOperations.getBoolean(_context.getNode(), MetaAdapterFactory.getProperty(0xb4dbff0c8c314a79L, 0xa45a98e5fd0530e7L, 0x4a1cc65caa543033L, 0x3752e6616e34d13dL, "vertical")) ? 1 : ListSequence.fromList(SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xb4dbff0c8c314a79L, 0xa45a98e5fd0530e7L, 0x4a1cc65caa543033L, 0x4a1cc65caa543040L, "components"))).count());
  }
  public static Object propertyMacro_GetPropertyValue_941086956891246481(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_941086956891291269(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_941086956891329209(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object propertyMacro_GetPropertyValue_5575318041730335147(final PropertyMacroContext _context) {
    return SPropertyOperations.getString(_context.getNode(), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
  }
  public static Object referenceMacro_GetReferent_5340361359451617747(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "components");
  }
  public static Object referenceMacro_GetReferent_5340361359451715513(final ReferenceMacroContext _context) {
    return SLinkOperations.getTarget(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xb4dbff0c8c314a79L, 0xa45a98e5fd0530e7L, 0x4a1cc65caa543043L, 0x4a1cc65caa548641L, "action")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"));
  }
  public static Object referenceMacro_GetReferent_5340361359451748710(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(_context.getNode(), "components");
  }
  public static Object referenceMacro_GetReferent_5340361359451861310(final ReferenceMacroContext _context) {
    return SLinkOperations.getTarget(SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xb4dbff0c8c314a79L, 0xa45a98e5fd0530e7L, 0x4a1cc65caa54931bL, 0x4a1cc65caa549328L, "field")), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration"));
  }
  public static Object referenceMacro_GetReferent_941086956891227810(final ReferenceMacroContext _context) {
    return ListSequence.fromList(SModelOperations.nodes(_context.getOutputModel(), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration"))).findFirst(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return eq_x583g4_a0a0a0a0a0a0m(SPropertyOperations.getString(it, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")), "getData");
      }
    });
  }
  public static Object referenceMacro_GetReferent_941086956891289534(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.as(ListSequence.fromList(SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, 0x4a9a46de59132803L, "member"))).findFirst(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xc7d5b9dda05f4be2L, 0xbc73f2e16994cc67L, 0x340eb2bd2e03d154L, "jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodInstance"));
      }
    }), MetaAdapterFactory.getConcept(0xc7d5b9dda05f4be2L, 0xbc73f2e16994cc67L, 0x340eb2bd2e03d154L, "jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodInstance")), "injectedMethods");
  }
  public static Object referenceMacro_GetReferent_941086956891300591(final ReferenceMacroContext _context) {
    return _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.as(ListSequence.fromList(SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, 0x4a9a46de59132803L, "member"))).findFirst(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xc7d5b9dda05f4be2L, 0xbc73f2e16994cc67L, 0x340eb2bd2e03d154L, "jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodInstance"));
      }
    }), MetaAdapterFactory.getConcept(0xc7d5b9dda05f4be2L, 0xbc73f2e16994cc67L, 0x340eb2bd2e03d154L, "jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodInstance")), "injectedMethods");
  }
  public static boolean ifMacro_Condition_3986501926311670723(final IfMacroContext _context) {
    return SPropertyOperations.getBoolean(_context.getNode(), MetaAdapterFactory.getProperty(0xb4dbff0c8c314a79L, 0xa45a98e5fd0530e7L, 0x4a1cc65caa543033L, 0x3752e6616e34d13dL, "vertical"));
  }
  public static boolean ifMacro_Condition_941086956891836399(final IfMacroContext _context) {
    return !(SNodeOperations.isInstanceOf(_context.getNode(), MetaAdapterFactory.getConcept(0xc7d5b9dda05f4be2L, 0xbc73f2e16994cc67L, 0x340eb2bd2e03d154L, "jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodInstance")));
  }
  public static boolean ifMacro_Condition_941086956891897656(final IfMacroContext _context) {
    return SNodeOperations.isInstanceOf(_context.getNode(), MetaAdapterFactory.getConcept(0xc7d5b9dda05f4be2L, 0xbc73f2e16994cc67L, 0x340eb2bd2e03d154L, "jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodInstance"));
  }
  public static SNode sourceNodeQuery_5340361359451803598(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xb4dbff0c8c314a79L, 0xa45a98e5fd0530e7L, 0x4a1cc65caa5245c9L, 0x4a1cc65caa52753fL, "frame"));
  }
  public static SNode sourceNodeQuery_5340361359451564393(final SourceSubstituteMacroNodeContext _context) {
    return SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xb4dbff0c8c314a79L, 0xa45a98e5fd0530e7L, 0x4a1cc65caa543006L, 0x4a1cc65caa547a6fL, "title"));
  }
  public static SNode sourceNodeQuery_941086956891227797(final SourceSubstituteMacroNodeContext _context) {
    return _context.getNode();
  }
  public static SNode sourceNodeQuery_941086956891849184(final SourceSubstituteMacroNodeContext _context) {
    return _context.getNode();
  }
  public static Iterable<SNode> sourceNodesQuery_5340361359451601218(final SourceSubstituteMacroNodesContext _context) {
    return ListSequence.fromList(SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xb4dbff0c8c314a79L, 0xa45a98e5fd0530e7L, 0x4a1cc65caa543006L, 0x4a1cc65caa543113L, "components"))).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return !(SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xb4dbff0c8c314a79L, 0xa45a98e5fd0530e7L, 0x4a1cc65caa545621L, "jetbrains.mps.samples.SwingBuilder.structure.EmptyComponent")));
      }
    });
  }
  public static Iterable<SNode> sourceNodesQuery_5340361359451732328(final SourceSubstituteMacroNodesContext _context) {
    return ListSequence.fromList(SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xb4dbff0c8c314a79L, 0xa45a98e5fd0530e7L, 0x4a1cc65caa543033L, 0x4a1cc65caa543040L, "components"))).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return !(SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xb4dbff0c8c314a79L, 0xa45a98e5fd0530e7L, 0x4a1cc65caa545621L, "jetbrains.mps.samples.SwingBuilder.structure.EmptyComponent")));
      }
    });
  }
  public static Iterable<SNode> sourceNodesQuery_941086956891367121(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xb4dbff0c8c314a79L, 0xa45a98e5fd0530e7L, 0xd0f6999e83a1e78L, 0xd0f6999e83a1e88L, "elements"));
  }
  public static Iterable<SNode> sourceNodesQuery_941086956891227790(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, 0x4a9a46de59132803L, "member"));
  }
  public static Iterable<SNode> sourceNodesQuery_941086956891283133(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, 0x4a9a46de59132803L, "member"));
  }
  public static Iterable<SNode> sourceNodesQuery_941086956891294221(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, 0x4a9a46de59132803L, "member"));
  }
  public static Iterable<SNode> sourceNodesQuery_5575318041730350785(final SourceSubstituteMacroNodesContext _context) {
    return SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, 0x4a9a46de59132803L, "member"));
  }
  public static SNode mapSrcMacro_mapper_941086956891669561(final MapSrcMacroContext _context) {
    SNode creator = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x2724644c0ac833a5L, "jetbrains.mps.baseLanguage.structure.DefaultClassCreator")));
    SLinkOperations.setTarget(creator, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x2724644c0ac833a5L, 0x2724644c0ac833a6L, "classifier"), SLinkOperations.getTarget(_context.getNode(), MetaAdapterFactory.getReferenceLink(0xb4dbff0c8c314a79L, 0xa45a98e5fd0530e7L, 0xd0f6999e83a1e8aL, 0xd0f6999e83a1e8bL, "element")));
    return creator;
  }
  public static SNode mapSrcMacro_mapper_941086956891977030(final MapSrcMacroContext _context) {
    SNode call = SNodeFactoryOperations.createNewNode(SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x6c6b6a1e379f9404L, "jetbrains.mps.baseLanguage.structure.LocalMethodCall")), null);
    SLinkOperations.setTarget(call, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11857355952L, 0xf8c78301adL, "baseMethodDeclaration"), _context.getOutputNodeByInputNodeAndMappingLabel(SNodeOperations.as(ListSequence.fromList(SLinkOperations.getChildren(_context.getNode(), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x101d9d3ca30L, 0x4a9a46de59132803L, "member"))).findFirst(new IWhereFilter<SNode>() {
      public boolean accept(SNode it) {
        return SNodeOperations.isInstanceOf(it, MetaAdapterFactory.getConcept(0xb4dbff0c8c314a79L, 0xa45a98e5fd0530e7L, 0xd0f6999e83a1e78L, "jetbrains.mps.samples.SwingBuilder.structure.Transformers"));
      }
    }), MetaAdapterFactory.getConcept(0xb4dbff0c8c314a79L, 0xa45a98e5fd0530e7L, 0xd0f6999e83a1e78L, "jetbrains.mps.samples.SwingBuilder.structure.Transformers")), "transformers"));
    return call;
  }
  private static boolean eq_x583g4_a0a0a0a0a0a0m(Object a, Object b) {
    return (a != null ? a.equals(b) : a == b);
  }
}
