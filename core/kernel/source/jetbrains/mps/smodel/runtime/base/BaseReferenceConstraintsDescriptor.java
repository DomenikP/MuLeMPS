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
package jetbrains.mps.smodel.runtime.base;

import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.adapter.ids.SReferenceLinkId;
import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.smodel.runtime.ConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.PropertyConstraintsDispatchable;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsDescriptor;
import jetbrains.mps.smodel.runtime.ReferenceConstraintsDispatchable;
import jetbrains.mps.smodel.runtime.ReferenceScopeProvider;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;

public class BaseReferenceConstraintsDescriptor implements ReferenceConstraintsDispatchable {
  private final SReferenceLinkId myReferenceLink;
  private final ConstraintsDescriptor container;

  private final ReferenceConstraintsDescriptor scopeProviderDescriptor;
  private final ReferenceConstraintsDescriptor onReferenceSetHandlerDescriptor;

  @Deprecated
  public BaseReferenceConstraintsDescriptor(String refName, ConstraintsDescriptor container) {
    this(ConceptRegistry.getInstance().getConceptDescriptor(container.getConceptId()).getRefDescriptor(refName).getId(), container);
  }

  public BaseReferenceConstraintsDescriptor(SReferenceLinkId referenceLink, ConstraintsDescriptor container) {
    this.myReferenceLink = referenceLink;
    this.container = container;

    if (hasOwnScopeProvider()) {
      scopeProviderDescriptor = this;
    } else {
      scopeProviderDescriptor = getSomethingUsingInheritance(getContainer().getConceptId(), referenceLink, SCOPE_INHERITANCE_PARAMETERS);
    }

    if (hasOwnOnReferenceSetHandler()) {
      onReferenceSetHandlerDescriptor = this;
    } else {
      onReferenceSetHandlerDescriptor = getSomethingUsingInheritance(getContainer().getConceptId(), referenceLink, ON_SET_HANDLER_INHERITANCE_PARAMETERS);
    }
  }


  @Nullable
  private static ReferenceConstraintsDescriptor getSomethingUsingInheritance(SConceptId concept, SReferenceLinkId referenceLinkId, InheritanceCalculateParameters parameters) {
    for (SConceptId parent : ConceptRegistry.getInstance().getConceptDescriptor(concept).getParentsIds()) {
      if (ConceptRegistry.getInstance().getConceptDescriptor(parent).getRefDescriptor(referenceLinkId) == null) {
        continue;
      }

      ConstraintsDescriptor parentDescriptor = ConceptRegistry.getInstance().getConstraintsDescriptor(parent);
      ReferenceConstraintsDescriptor parentReferenceDescriptor = parentDescriptor.getReference(referenceLinkId);

      ReferenceConstraintsDescriptor parentCalculated;

      if (parentReferenceDescriptor instanceof BaseReferenceConstraintsDescriptor) {
        parentCalculated = parameters.getParentCalculatedDescriptor((BaseReferenceConstraintsDescriptor) parentReferenceDescriptor);
      } else if (parentReferenceDescriptor instanceof PropertyConstraintsDispatchable) {
        if (parameters.hasOwn((ReferenceConstraintsDispatchable) parentReferenceDescriptor)) {
          parentCalculated = parentReferenceDescriptor;
        } else {
          parentCalculated = getSomethingUsingInheritance(parent, referenceLinkId, parameters);
        }
      } else {
        parentCalculated = parentReferenceDescriptor;
      }

      if (parentCalculated != null) {
        return parentCalculated;
      }
    }

    return null;
  }

  @Override
  public SReferenceLinkId getReferenceLink() {
    return myReferenceLink;
  }

  @Override
  public String getName() {
    return ConceptRegistry.getInstance().getConceptDescriptor(getContainer().getConceptId()).getRefDescriptor(myReferenceLink).getName();
  }

  @Override
  public ConstraintsDescriptor getContainer() {
    return container;
  }

  @Nullable
  @Override
  public ReferenceScopeProvider getScopeProvider() {
    return scopeProviderDescriptor != null ? scopeProviderDescriptor.getScopeProvider() : null;
  }

  @Override
  public boolean validate(SNode referenceNode, SNode oldReferentNode, SNode newReferentNode) {
    return onReferenceSetHandlerDescriptor == null || onReferenceSetHandlerDescriptor.validate(referenceNode, oldReferentNode, newReferentNode);
  }

  @Override
  public void onReferenceSet(SNode referenceNode, SNode oldReferentNode, SNode newReferentNode) {
    if (onReferenceSetHandlerDescriptor != null) {
      onReferenceSetHandlerDescriptor.onReferenceSet(referenceNode, oldReferentNode, newReferentNode);
    }
  }

  @Override
  public boolean hasOwnScopeProvider() {
    return false;
  }

  @Override
  public boolean hasOwnOnReferenceSetHandler() {
    return false;
  }

  private static interface InheritanceCalculateParameters {
    ReferenceConstraintsDescriptor getParentCalculatedDescriptor(BaseReferenceConstraintsDescriptor parentDescriptor);

    boolean hasOwn(ReferenceConstraintsDispatchable parentDescriptor);
  }

  private static final InheritanceCalculateParameters SCOPE_INHERITANCE_PARAMETERS = new InheritanceCalculateParameters() {
    @Override
    public ReferenceConstraintsDescriptor getParentCalculatedDescriptor(BaseReferenceConstraintsDescriptor parentDescriptor) {
      return parentDescriptor.scopeProviderDescriptor;
    }

    @Override
    public boolean hasOwn(ReferenceConstraintsDispatchable parentDescriptor) {
      return parentDescriptor.hasOwnScopeProvider();
    }
  };
  private static final InheritanceCalculateParameters ON_SET_HANDLER_INHERITANCE_PARAMETERS = new InheritanceCalculateParameters() {
    @Override
    public ReferenceConstraintsDescriptor getParentCalculatedDescriptor(BaseReferenceConstraintsDescriptor parentDescriptor) {
      return parentDescriptor.onReferenceSetHandlerDescriptor;
    }

    @Override
    public boolean hasOwn(ReferenceConstraintsDispatchable parentDescriptor) {
      return parentDescriptor.hasOwnOnReferenceSetHandler();
    }
  };
}
