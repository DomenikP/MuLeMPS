/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.newTypesystem.operation.equation;

import jetbrains.mps.newTypesystem.operation.PresentationKind;
import jetbrains.mps.newTypesystem.state.State;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.typesystem.inference.EquationInfo;

public class AddEquationOperation extends AbstractEquationOperation {
  public AddEquationOperation(SNode child, SNode parent, SNode source, EquationInfo info) {
    super(child, parent, source, info);
  }

  @Override
  public void doUndo(State state) {
    state.getEquations().remove(myChild);
  }

  @Override
  public void doRedo(jetbrains.mps.newTypesystem.state.State state) {
    state.getEquations().add(myChild, myParent);
  }

  @Override
  public void execute(State state) {
    super.execute(state);
    state.substitute(myChild, myParent);
    state.getInequalities().onEquationAdded(myChild, myParent);
  }

  public SNode getChild() {
    return myChild;
  }

  public SNode getParent() {
    return myParent;
  }

  @Override
  public String getPresentation() {
    return getShortPresentation()+ "   added";
  }

  @Override
  public String getPresentationKind() {
    return PresentationKind.EQUATION_ADDED;
  }
}
