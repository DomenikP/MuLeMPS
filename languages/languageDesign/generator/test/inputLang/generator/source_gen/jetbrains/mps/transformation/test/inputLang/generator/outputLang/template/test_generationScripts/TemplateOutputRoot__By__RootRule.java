package jetbrains.mps.transformation.test.inputLang.generator.outputLang.template.test_generationScripts;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.runtime.TemplateDeclarationBase;
import jetbrains.mps.generator.runtime.TemplateDeclaration;
import org.jetbrains.mps.openapi.model.SNodeReference;
import java.util.Collection;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.runtime.GenerationException;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import jetbrains.mps.generator.runtime.TemplateUtil;
import jetbrains.mps.smodel.SNodePointer;

@Generated
public class TemplateOutputRoot__By__RootRule extends TemplateDeclarationBase implements TemplateDeclaration {
  public TemplateOutputRoot__By__RootRule() {
  }
  public SNodeReference getTemplateNode() {
    return template_l7bj61_a0a1;
  }
  public Collection<SNode> apply(@NotNull final TemplateExecutionEnvironment environment, @NotNull final TemplateContext context) throws GenerationException {
    final SNode tnode1 = environment.createOutputNode(MetaAdapterFactory.getConcept(0x157a9668bf58417bL, 0x893e53d86388dc56L, 0x116455d922fL, "jetbrains.mps.transformation.test.outputLang.structure.OutputRoot"));
    try {
      environment.nodeCopied(context, tnode1, "tpl/r:00000000-0000-4000-0000-011c895905f6/1195166061402");
      SNodeAccessUtil.setProperty(tnode1, MetaAdapterFactory.getProperty(0x157a9668bf58417bL, 0x893e53d86388dc56L, 0x116455d922fL, 0x116455e8bf1L, "text"), "OutputRoot by RootRule");
      SNodeAccessUtil.setProperty(tnode1, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), "OutputRoot_By_RootRule");
    } finally {
    }
    return TemplateUtil.singletonList(tnode1);
  }
  private static SNodePointer template_l7bj61_a0a1 = new SNodePointer("r:00000000-0000-4000-0000-011c895905f6(jetbrains.mps.transformation.test.inputLang.generator.outputLang.template.test_generationScripts@generator)", "1195166061402");
}
