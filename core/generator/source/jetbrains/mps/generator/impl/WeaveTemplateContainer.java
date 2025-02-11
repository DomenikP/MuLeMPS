/*
 * Copyright 2003-2014 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.generator.impl;

import jetbrains.mps.generator.GenerationCanceledException;
import jetbrains.mps.generator.IGeneratorLogger;
import jetbrains.mps.generator.IGeneratorLogger.ProblemDescription;
import jetbrains.mps.generator.runtime.NodeWeaveFacility;
import jetbrains.mps.generator.runtime.TemplateContext;
import jetbrains.mps.generator.runtime.TemplateExecutionEnvironment;
import jetbrains.mps.generator.template.ITemplateProcessor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.model.SNode;

import java.util.ArrayList;
import java.util.List;

/**
 * Container for Template Fragments in weaving macros/rules.
 * Similar to {@link jetbrains.mps.generator.impl.TemplateContainer}, tailored for weavings.
 * @author Artem Tikhomirov
 */
public class WeaveTemplateContainer {

  private final SNode myTemplateNode;
  private List<SNode> myFragments;

  public WeaveTemplateContainer(@NotNull SNode templateContainer) {
    myTemplateNode = templateContainer;
  }

  public void initialize(IGeneratorLogger log) {
    myFragments = extractTemplateFragmentsForWeaving(log);
  }

  public void apply(SNode outputContextNode, @NotNull TemplateContext context)
      throws GenerationFailureException, GenerationCanceledException {
    // for each template fragment create output nodes
    TemplateExecutionEnvironment env = context.getEnvironment();
    ITemplateProcessor templateProcessor = env.getTemplateProcessor();
    for (SNode templateFragment : myFragments) {
      SNode templateFragmentParentNode = templateFragment.getParent();
      SNode contextParentNode = null;
      try {
        contextParentNode = env.getQueryExecutor().getContextNodeForTemplateFragment(templateFragmentParentNode, outputContextNode, context);
      } catch (Exception e) {
        env.getLogger().handleException(e);
      }
      if (contextParentNode != null) {
        try {
          String tfMapLabel = GeneratorUtilEx.getMappingName_TemplateFragment(templateFragment, null);
          List<SNode> outputNodesToWeave = templateProcessor.apply(templateFragmentParentNode, context.subContext(tfMapLabel));
          final SContainmentLink childRole = templateFragmentParentNode.getContainmentLink();
          assert childRole != null;

          final NodeWeaveFacility weaveSupport = env.weaveNode(context, templateFragment.getReference());

          for (SNode outputNodeToWeave : outputNodesToWeave) {
            weaveSupport.weave(contextParentNode, childRole, outputNodeToWeave);
          }
        } catch (DismissTopMappingRuleException e) {
          env.getLogger().error(templateFragment.getReference(), "bad template: dismiss in weave is not supported",
              GeneratorUtil.describe(myTemplateNode, "template node"),
              GeneratorUtil.describe(context.getInput(), "input node"),
              GeneratorUtil.describe(contextParentNode, "output context node"));
        } catch (TemplateProcessingFailureException ex) {
          ProblemDescription[] pd = new ProblemDescription[] {
              GeneratorUtil.describe(myTemplateNode, "template node"),
              GeneratorUtil.describe(context.getInput(), "input node"),
              GeneratorUtil.describe(contextParentNode, "output context node")
          };
          env.getLogger().error(templateFragment.getReference(), "error processing template fragment", GeneratorUtil.concat(pd, ex.asProblemDescription()));
        }
      } else {
        env.getLogger().error(templateFragment.getReference(), "couldn't define 'context' for template fragment",
            GeneratorUtil.describe(myTemplateNode, "template node"),
            GeneratorUtil.describe(context.getInput(), "input node"));
      }
    }
  }

  private List<SNode> extractTemplateFragmentsForWeaving(IGeneratorLogger logger) {
    List<SNode> templateFragments = GeneratorUtilEx.getTemplateFragments(myTemplateNode);
    if (templateFragments.isEmpty()) {
      logger.error(myTemplateNode.getReference(), "nothing to weave: no template fragments found in template");
      return templateFragments;
    }

    // all fragments with <default context> should have the same parent
    boolean sameParent = true;
    SNode defaultContext = null;
    for (SNode templateFragment : templateFragments) {
      if (RuleUtil.getTemplateFragment_ContextNodeQuery(templateFragment) == null) { // uses <default context>
        SNode fragmentContextNode = templateFragment.getParent().getParent();
        if (defaultContext == null) {
          defaultContext = fragmentContextNode;
        } else if (defaultContext != fragmentContextNode) {
          sameParent = false;
          break;
        }
      }
    }
    if (!sameParent) {
      List<ProblemDescription> list = new ArrayList<ProblemDescription>();
      for (SNode templateFragment : templateFragments) {
        if (RuleUtil.getTemplateFragment_ContextNodeQuery(templateFragment) == null) { // uses <default context>
          list.add(GeneratorUtil.describe(templateFragment, "template fragment"));
        }
      }
      logger.error(myTemplateNode.getReference(), "all fragments with <default context> should have the same parent", list.toArray(new ProblemDescription[list.size()]));
    }
    return templateFragments;
  }
}
