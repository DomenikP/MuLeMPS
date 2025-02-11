package jetbrains.mps.transformation.test.outputLang.generator.baseLanguage.template.main;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.Generated;
import jetbrains.mps.generator.runtime.TemplateDeclarationBase;
import jetbrains.mps.generator.runtime.TemplateDeclarationWeavingAware;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import java.util.Map;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import java.util.HashMap;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.runtime.GenerationException;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import java.util.Collection;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodeContext;
import jetbrains.mps.generator.runtime.TemplateUtil;
import jetbrains.mps.generator.runtime.NodeWeaveFacility;

@Generated
public class TemplateconvertMult extends TemplateDeclarationBase implements TemplateDeclarationWeavingAware {
  private SNode myLeft;
  private SNode myRight;
  public TemplateconvertMult(SNode left, SNode right) {
    this.myLeft = left;
    this.myRight = right;
  }
  public SNodeReference getTemplateNode() {
    return new SNodePointer("r:00000000-0000-4000-0000-011c89590606(jetbrains.mps.transformation.test.outputLang.generator.baseLanguage.template.main@generator)", "4146564171992617065");
  }
  private Map<String, Object> getParametersAsMap() {
    Map<String, Object> result = MapSequence.fromMap(new HashMap<String, Object>());
    MapSequence.fromMap(result).put("left", myLeft);
    MapSequence.fromMap(result).put("right", myRight);
    return result;
  }
  protected SNode applyPart0(@NotNull final TemplateExecutionEnvironment environment, @NotNull final TemplateContext context) throws GenerationException {
    final SNode tnode1 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, "jetbrains.mps.baseLanguage.structure.ExpressionStatement"));
    try {
      environment.nodeCopied(context, tnode1, "tpl/r:00000000-0000-4000-0000-011c89590606/4146564171992617074");
      {
        final SNode tnode2 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x617aa860be8616ecL, "jetbrains.mps.baseLanguage.structure.MulAssignmentExpression"));
        try {
          environment.nodeCopied(context, tnode2, "tpl/r:00000000-0000-4000-0000-011c89590606/4146564171992617076");
          {
            Collection<SNode> tlist3 = null;
            final SNode copySrcInput3 = QueriesGenerated.sourceNodeQuery_4146564171992617089(new SourceSubstituteMacroNodeContext(context, copySrcMacro_eum2xg_b0a0c0b0b0b0b0f));
            tlist3 = environment.copyNodes(TemplateUtil.singletonList(copySrcInput3), copySrcMacro_eum2xg_b0a0c0b0b0b0b0f, "tpl/r:00000000-0000-4000-0000-011c89590606/4265636116363093718", context);
            for (SNode child4 : TemplateUtil.asNotNull(tlist3)) {
              tnode2.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11b0d00332cL, 0xf8c77f1e97L, "lValue"), child4);
            }
            // TODO validate child 
          }
          {
            Collection<SNode> tlist5 = null;
            final SNode copySrcInput5 = QueriesGenerated.sourceNodeQuery_4146564171992617085(new SourceSubstituteMacroNodeContext(context, copySrcMacro_eum2xg_b0a0c0c0b0b0b0f));
            tlist5 = environment.copyNodes(TemplateUtil.singletonList(copySrcInput5), copySrcMacro_eum2xg_b0a0c0c0b0b0b0f, "tpl/r:00000000-0000-4000-0000-011c89590606/4146564171992617079", context);
            for (SNode child6 : TemplateUtil.asNotNull(tlist5)) {
              tnode2.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11b0d00332cL, 0xf8c77f1e99L, "rValue"), child6);
            }
            // TODO validate child 
          }
        } finally {
        }
        if (tnode2 != null) {
          tnode1.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, 0xf8cc56b214L, "expression"), tnode2);
        }
        // TODO validate child 
      }
    } finally {
    }
    return tnode1;
  }
  public Collection<SNode> apply(@NotNull TemplateExecutionEnvironment environment, @NotNull TemplateContext context) throws GenerationException {
    TemplateContext contextWithParams = context.subContext(getParametersAsMap());
    return TemplateUtil.singletonList(applyPart0(environment, contextWithParams));
  }
  public Collection<SNode> weave(@NotNull TemplateExecutionEnvironment environment, @NotNull TemplateContext context, @NotNull SNode outputContextNode) throws GenerationException {
    TemplateContext contextWithParams = context.subContext(getParametersAsMap());
    SNode tnodepart0 = applyPart0(environment, contextWithParams);
    SNodeReference weaveTf0 = new SNodePointer("r:00000000-0000-4000-0000-011c89590606(jetbrains.mps.transformation.test.outputLang.generator.baseLanguage.template.main@generator)", "4146564171992617082");
    NodeWeaveFacility weaveSupport0 = environment.weaveNode(contextWithParams, weaveTf0);
    weaveSupport0.weave(outputContextNode, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"), tnodepart0);
    return TemplateUtil.singletonList(tnodepart0);
  }
  private static SNodePointer copySrcMacro_eum2xg_b0a0c0b0b0b0b0f = new SNodePointer("r:00000000-0000-4000-0000-011c89590606(jetbrains.mps.transformation.test.outputLang.generator.baseLanguage.template.main@generator)", "4146564171992617088");
  private static SNodePointer copySrcMacro_eum2xg_b0a0c0c0b0b0b0f = new SNodePointer("r:00000000-0000-4000-0000-011c89590606(jetbrains.mps.transformation.test.outputLang.generator.baseLanguage.template.main@generator)", "4146564171992617084");
}
