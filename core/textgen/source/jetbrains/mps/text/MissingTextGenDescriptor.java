/*
 * Copyright 2003-2015 JetBrains s.r.o.
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
package jetbrains.mps.text;

import jetbrains.mps.text.impl.TextGenTransitionContext;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.rt.TextGenDescriptor;
import jetbrains.mps.textGen.TextGenBuffer;
import jetbrains.mps.util.SNodeOperations;
import org.jetbrains.mps.openapi.model.SNode;

/**
 * React to missing textgen for a concept.
 * @author Artem Tikhomirov
 */
public class MissingTextGenDescriptor implements TextGenDescriptor {
  @Override
  public void generateText(TextGenContext context) {
    TextGenTransitionContext tc = (TextGenTransitionContext) context;
    TextGenBuffer buffer = tc.getLegacyBuffer();
    SNode node = tc.getPrimaryInput();
    buffer.append("<!TextGen not found for '" + node.getConcept() + "'!>");
    buffer.foundError("No textgen for " + node.getConcept() + " in " + SNodeOperations.getDebugText(node), node, null);
  }
}
