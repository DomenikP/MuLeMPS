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
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import jetbrains.mps.generator.runtime.TemplateUtil;
import jetbrains.mps.generator.template.PropertyMacroContext;
import java.util.Collection;
import jetbrains.mps.generator.template.SourceSubstituteMacroNodeContext;
import jetbrains.mps.generator.runtime.NodeWeaveFacility;

@Generated
public class TemplateprocessStatement extends TemplateDeclarationBase implements TemplateDeclarationWeavingAware {
  private String myName;
  private String myName2;
  private SNode myExpr;
  private int myI;
  private boolean myB;
  public TemplateprocessStatement(String name, String name2, SNode expr, int i, boolean b) {
    this.myName = name;
    this.myName2 = name2;
    this.myExpr = expr;
    this.myI = i;
    this.myB = b;
  }
  public SNodeReference getTemplateNode() {
    return new SNodePointer("r:00000000-0000-4000-0000-011c89590606(jetbrains.mps.transformation.test.outputLang.generator.baseLanguage.template.main@generator)", "2681305894288695007");
  }
  private Map<String, Object> getParametersAsMap() {
    Map<String, Object> result = MapSequence.fromMap(new HashMap<String, Object>());
    MapSequence.fromMap(result).put("name", myName);
    MapSequence.fromMap(result).put("name2", myName2);
    MapSequence.fromMap(result).put("expr", myExpr);
    MapSequence.fromMap(result).put("i", myI);
    MapSequence.fromMap(result).put("b", myB);
    return result;
  }
  protected SNode applyPart0(@NotNull final TemplateExecutionEnvironment environment, @NotNull final TemplateContext context) throws GenerationException {
    final SNode tnode1 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, "jetbrains.mps.baseLanguage.structure.BlockStatement"));
    try {
      environment.nodeCopied(context, tnode1, "tpl/r:00000000-0000-4000-0000-011c89590606/2681305894288695026");
      {
        final SNode tnode2 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, "jetbrains.mps.baseLanguage.structure.StatementList"));
        try {
          environment.nodeCopied(context, tnode2, "tpl/r:00000000-0000-4000-0000-011c89590606/2681305894288695027");
          {
            final SNode tnode3 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x57d533a7af15ed3aL, "jetbrains.mps.baseLanguage.structure.SingleLineComment"));
            try {
              environment.nodeCopied(context, tnode3, "tpl/r:00000000-0000-4000-0000-011c89590606/2681305894288695067");
              {
                final SNode tnode4 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x57d533a7af15ed3dL, "jetbrains.mps.baseLanguage.structure.TextCommentPart"));
                try {
                  environment.nodeCopied(context, tnode4, "tpl/r:00000000-0000-4000-0000-011c89590606/2681305894288695068");
                  SNodeAccessUtil.setProperty(tnode4, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x57d533a7af15ed3dL, 0x57d533a7af15ed3eL, "text"), TemplateUtil.asString(QueriesGenerated.propertyMacro_GetPropertyValue_2681305894288695070(new PropertyMacroContext(context, "aa", propertyMacro_slzep9_c0a0c0b0b0b0b0b0b0b0b0i))));
                } finally {
                }
                if (tnode4 != null) {
                  tnode3.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x57d533a7af15ed3aL, 0x57d533a7af16ff73L, "commentPart"), tnode4);
                }
                // TODO validate child 
              }
              {
                final SNode tnode5 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x57d533a7af15ed3dL, "jetbrains.mps.baseLanguage.structure.TextCommentPart"));
                try {
                  environment.nodeCopied(context, tnode5, "tpl/r:00000000-0000-4000-0000-011c89590606/2163819695913280742");
                  SNodeAccessUtil.setProperty(tnode5, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x57d533a7af15ed3dL, 0x57d533a7af15ed3eL, "text"), TemplateUtil.asString(QueriesGenerated.propertyMacro_GetPropertyValue_2163819695913280744(new PropertyMacroContext(context, "ss", propertyMacro_slzep9_c0a0c0b0b0c0b0b0b0b0b0i))));
                } finally {
                }
                if (tnode5 != null) {
                  tnode3.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x57d533a7af15ed3aL, 0x57d533a7af16ff73L, "commentPart"), tnode5);
                }
                // TODO validate child 
              }
            } finally {
            }
            if (tnode3 != null) {
              tnode2.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"), tnode3);
            }
            // TODO validate child 
          }
          {
            final SNode tnode6 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc67c7f0L, "jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement"));
            try {
              environment.nodeCopied(context, tnode6, "tpl/r:00000000-0000-4000-0000-011c89590606/2681305894288695032");
              {
                final SNode tnode7 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc67c7efL, "jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration"));
                try {
                  environment.nodeCopied(context, tnode7, "tpl/r:00000000-0000-4000-0000-011c89590606/2681305894288695033");
                  SNodeAccessUtil.setProperty(tnode7, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), TemplateUtil.asString(QueriesGenerated.propertyMacro_GetPropertyValue_2681305894288695040(new PropertyMacroContext(context, "nvar", propertyMacro_slzep9_c0a0c0b0b0b0b0c0b0b0b0i))));
                  {
                    final SNode tnode8 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940d22479L, "jetbrains.mps.baseLanguage.structure.IntegerType"));
                    try {
                      environment.nodeCopied(context, tnode8, "tpl/r:00000000-0000-4000-0000-011c89590606/2681305894288695034");
                    } finally {
                    }
                    if (tnode8 != null) {
                      tnode7.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type"), tnode8);
                    }
                    // TODO validate child 
                  }
                  {
                    Collection<SNode> tlist9 = null;
                    final SNode copySrcInput9 = QueriesGenerated.sourceNodeQuery_2681305894288695056(new SourceSubstituteMacroNodeContext(context, copySrcMacro_slzep9_b0a0c0d0b0b0b0c0b0b0b0i));
                    tlist9 = environment.copyNodes(TemplateUtil.singletonList(copySrcInput9), copySrcMacro_slzep9_b0a0c0d0b0b0b0c0b0b0b0i, "tpl/r:00000000-0000-4000-0000-011c89590606/2681305894288695053", context);
                    for (SNode child10 : TemplateUtil.asNotNull(tlist9)) {
                      tnode7.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer"), child10);
                    }
                    // TODO validate child 
                  }
                } finally {
                }
                if (tnode7 != null) {
                  tnode6.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc67c7f0L, 0xf8cc67c7f1L, "localVariableDeclaration"), tnode7);
                }
                // TODO validate child 
              }
            } finally {
            }
            if (tnode6 != null) {
              tnode2.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"), tnode6);
            }
            // TODO validate child 
          }
        } finally {
        }
        if (tnode2 != null) {
          tnode1.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, 0xfc092b6b78L, "statements"), tnode2);
        }
        // TODO validate child 
      }
    } finally {
    }
    return tnode1;
  }
  protected SNode applyPart1(@NotNull final TemplateExecutionEnvironment environment, @NotNull final TemplateContext context) throws GenerationException {
    final SNode tnode11 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, "jetbrains.mps.baseLanguage.structure.BlockStatement"));
    try {
      environment.nodeCopied(context, tnode11, "tpl/r:00000000-0000-4000-0000-011c89590606/7870321878389838426");
      {
        final SNode tnode12 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, "jetbrains.mps.baseLanguage.structure.StatementList"));
        try {
          environment.nodeCopied(context, tnode12, "tpl/r:00000000-0000-4000-0000-011c89590606/7870321878389838427");
          {
            final SNode tnode13 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc67c7f0L, "jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement"));
            try {
              environment.nodeCopied(context, tnode13, "tpl/r:00000000-0000-4000-0000-011c89590606/3392060900980649132");
              {
                final SNode tnode14 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc67c7efL, "jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration"));
                try {
                  environment.nodeCopied(context, tnode14, "tpl/r:00000000-0000-4000-0000-011c89590606/3392060900980649133");
                  SNodeAccessUtil.setProperty(tnode14, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), "e");
                  {
                    final SNode tnode15 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940d22479L, "jetbrains.mps.baseLanguage.structure.IntegerType"));
                    try {
                      environment.nodeCopied(context, tnode15, "tpl/r:00000000-0000-4000-0000-011c89590606/3392060900980649134");
                    } finally {
                    }
                    if (tnode15 != null) {
                      tnode14.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x450368d90ce15bc3L, 0x4ed4d318133c80ceL, "type"), tnode15);
                    }
                    // TODO validate child 
                  }
                } finally {
                }
                if (tnode14 != null) {
                  tnode13.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc67c7f0L, 0xf8cc67c7f1L, "localVariableDeclaration"), tnode14);
                }
                // TODO validate child 
              }
            } finally {
            }
            if (tnode13 != null) {
              tnode12.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"), tnode13);
            }
            // TODO validate child 
          }
          {
            final SNode tnode16 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, "jetbrains.mps.baseLanguage.structure.ExpressionStatement"));
            try {
              environment.nodeCopied(context, tnode16, "tpl/r:00000000-0000-4000-0000-011c89590606/3392060900980649136");
              {
                final SNode tnode17 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e96L, "jetbrains.mps.baseLanguage.structure.AssignmentExpression"));
                try {
                  environment.nodeCopied(context, tnode17, "tpl/r:00000000-0000-4000-0000-011c89590606/3392060900980649138");
                  {
                    final SNode tnode18 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, "jetbrains.mps.baseLanguage.structure.VariableReference"));
                    try {
                      environment.nodeCopied(context, tnode18, "tpl/r:00000000-0000-4000-0000-011c89590606/4265636116363100026");
                      environment.resolveInTemplateLater(tnode18, "variableDeclaration", templateNode_slzep9_c0a1a1a1a1a1a1a2a1a1a1a9, "tpl/r:00000000-0000-4000-0000-011c89590606/3392060900980649133", "e", context);
                    } finally {
                    }
                    if (tnode18 != null) {
                      tnode17.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11b0d00332cL, 0xf8c77f1e97L, "lValue"), tnode18);
                    }
                    // TODO validate child 
                  }
                  {
                    final SNode tnode19 = environment.createOutputNode(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc59b314L, "jetbrains.mps.baseLanguage.structure.IntegerConstant"));
                    try {
                      environment.nodeCopied(context, tnode19, "tpl/r:00000000-0000-4000-0000-011c89590606/3392060900980649141");
                      SNodeAccessUtil.setProperty(tnode19, MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc59b314L, 0xf8cc59b315L, "value"), "5");
                    } finally {
                    }
                    if (tnode19 != null) {
                      tnode17.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x11b0d00332cL, 0xf8c77f1e99L, "rValue"), tnode19);
                    }
                    // TODO validate child 
                  }
                } finally {
                }
                if (tnode17 != null) {
                  tnode16.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b213L, 0xf8cc56b214L, "expression"), tnode17);
                }
                // TODO validate child 
              }
            } finally {
            }
            if (tnode16 != null) {
              tnode12.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"), tnode16);
            }
            // TODO validate child 
          }
        } finally {
        }
        if (tnode12 != null) {
          tnode11.addChild(MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xfc092b6b77L, 0xfc092b6b78L, "statements"), tnode12);
        }
        // TODO validate child 
      }
    } finally {
    }
    return tnode11;
  }
  protected Collection<SNode> applyPart2(@NotNull final TemplateExecutionEnvironment environment, @NotNull final TemplateContext context) throws GenerationException {
    Collection<SNode> tlist20 = null;
    tlist20 = new Templateaaaaa(((SNode) context.getVariable("expr"))).apply(environment, context);
    return tlist20;
  }
  public Collection<SNode> apply(@NotNull TemplateExecutionEnvironment environment, @NotNull TemplateContext context) throws GenerationException {
    TemplateContext contextWithParams = context.subContext(getParametersAsMap());
    return TemplateUtil.asList(applyPart0(environment, contextWithParams), applyPart1(environment, contextWithParams), applyPart2(environment, contextWithParams));
  }
  public Collection<SNode> weave(@NotNull TemplateExecutionEnvironment environment, @NotNull TemplateContext context, @NotNull SNode outputContextNode) throws GenerationException {
    TemplateContext contextWithParams = context.subContext(getParametersAsMap());
    SNode tnodepart0 = applyPart0(environment, contextWithParams);
    SNodeReference weaveTf0 = new SNodePointer("r:00000000-0000-4000-0000-011c89590606(jetbrains.mps.transformation.test.outputLang.generator.baseLanguage.template.main@generator)", "2681305894288695031");
    NodeWeaveFacility weaveSupport0 = environment.weaveNode(contextWithParams, weaveTf0);
    weaveSupport0.weave(outputContextNode, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"), tnodepart0);
    SNode tnodepart1 = applyPart1(environment, contextWithParams);
    SNodeReference weaveTf1 = new SNodePointer("r:00000000-0000-4000-0000-011c89590606(jetbrains.mps.transformation.test.outputLang.generator.baseLanguage.template.main@generator)", "7870321878389838429");
    NodeWeaveFacility weaveSupport1 = environment.weaveNode(contextWithParams, weaveTf1);
    weaveSupport1.weave(outputContextNode, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"), tnodepart1);
    Collection<SNode> tlistpart2 = applyPart2(environment, contextWithParams);
    SNodeReference weaveTf2 = new SNodePointer("r:00000000-0000-4000-0000-011c89590606(jetbrains.mps.transformation.test.outputLang.generator.baseLanguage.template.main@generator)", "5005282049926092703");
    NodeWeaveFacility weaveSupport2 = environment.weaveNode(contextWithParams, weaveTf2);
    for (SNode nodeToWeave : TemplateUtil.asNotNull(tlistpart2)) {
      weaveSupport2.weave(outputContextNode, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b200L, 0xf8cc6bf961L, "statement"), nodeToWeave);
    }
    return TemplateUtil.asList(tnodepart0, tnodepart1, tlistpart2);
  }
  private static SNodePointer propertyMacro_slzep9_c0a0c0b0b0b0b0b0b0b0b0i = new SNodePointer("r:00000000-0000-4000-0000-011c89590606(jetbrains.mps.transformation.test.outputLang.generator.baseLanguage.template.main@generator)", "2681305894288695069");
  private static SNodePointer propertyMacro_slzep9_c0a0c0b0b0c0b0b0b0b0b0i = new SNodePointer("r:00000000-0000-4000-0000-011c89590606(jetbrains.mps.transformation.test.outputLang.generator.baseLanguage.template.main@generator)", "2163819695913280743");
  private static SNodePointer propertyMacro_slzep9_c0a0c0b0b0b0b0c0b0b0b0i = new SNodePointer("r:00000000-0000-4000-0000-011c89590606(jetbrains.mps.transformation.test.outputLang.generator.baseLanguage.template.main@generator)", "2681305894288695039");
  private static SNodePointer copySrcMacro_slzep9_b0a0c0d0b0b0b0c0b0b0b0i = new SNodePointer("r:00000000-0000-4000-0000-011c89590606(jetbrains.mps.transformation.test.outputLang.generator.baseLanguage.template.main@generator)", "2681305894288695055");
  private static SNodePointer templateNode_slzep9_c0a1a1a1a1a1a1a2a1a1a1a9 = new SNodePointer("r:00000000-0000-4000-0000-011c89590606(jetbrains.mps.transformation.test.outputLang.generator.baseLanguage.template.main@generator)", "4265636116363100026");
}
