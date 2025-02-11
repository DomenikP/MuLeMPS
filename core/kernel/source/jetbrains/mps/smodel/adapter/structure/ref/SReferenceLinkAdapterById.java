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
package jetbrains.mps.smodel.adapter.structure.ref;

import jetbrains.mps.RuntimeFlags;
import jetbrains.mps.smodel.SNodeId;
import jetbrains.mps.smodel.adapter.ids.SReferenceLinkId;
import jetbrains.mps.smodel.language.ConceptRegistryUtil;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.ReferenceDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;

public final class SReferenceLinkAdapterById extends SReferenceLinkAdapter {
  private final SReferenceLinkId myRoleId;
  private final boolean myIsBootstrap;

  public SReferenceLinkAdapterById(@NotNull SReferenceLinkId roleId, @NotNull String refName) {
    this(roleId, refName, false);
  }

  /**
   * @param bootstrap see BOOTSTRAP META OBJECTS javadoc for {@link jetbrains.mps.smodel.adapter.BootstrapAdapterFactory}
   */
  public SReferenceLinkAdapterById(@NotNull SReferenceLinkId roleId, @NotNull String refName, boolean bootstrap) {
    super(refName);
    myRoleId = roleId;
    myIsBootstrap = bootstrap;
  }

  @Override
  public boolean equals(Object obj) {
    if (!(obj instanceof SReferenceLinkAdapter)) return false;
    return (obj instanceof SReferenceLinkAdapterById) ? myRoleId.equals(((SReferenceLinkAdapterById) obj).myRoleId) :
        myName.equals(((SReferenceLinkAdapter) obj).myName);
  }

  @NotNull
  public SReferenceLinkId getRoleId() {
    return myRoleId;
  }
  @Override
  public String getRoleName() {
    if (RuntimeFlags.isMergeDriverMode() || myIsBootstrap) {
      return myName;
    }
    ReferenceDescriptor d = getReferenceDescriptor();
    if (d == null) {
      //invalid property, needed for propertyRead event in SNode until event is rewritten
      return myName;
    }
    return d.getName();
  }

  @Override
  @Nullable
  public ReferenceDescriptor getReferenceDescriptor() {
    ConceptDescriptor cd = ConceptRegistryUtil.getConceptDescriptor(myRoleId.getConceptId());
    if (cd == null) return null;
    return cd.getRefDescriptor(myRoleId);
  }

  @Override
  protected SNode findInConcept(SNode cnode) {
    SModel model = cnode.getModel();
    return model.getNode(new SNodeId.Regular(myRoleId.getIdValue()));
  }
}
