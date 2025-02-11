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
package jetbrains.mps.smodel.adapter.structure.concept;

import jetbrains.mps.smodel.SNodeUtil;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.smodel.language.ConceptRegistry;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SInterfaceConcept;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class SConceptAdapter extends SAbstractConceptAdapter implements SConcept {
  protected SConceptAdapter(String fqName) {
    super(fqName);
  }

  @Override
  public SConcept getSuperConcept() {
    ConceptDescriptor d = getConceptDescriptor();
    if (d == null) {
      return SNodeUtil.concept_BaseConcept;
    }

    SConceptId superConcept = d.getSuperConceptId();
    if (superConcept == null) return d.getId().equals(SNodeUtil.conceptId_BaseConcept) ? null : SNodeUtil.concept_BaseConcept;

    return MetaAdapterFactory.getConcept(superConcept, d.getSuperConcept());
  }

  @Override
  public Iterable<SInterfaceConcept> getSuperInterfaces() {
    ConceptDescriptor d = getConceptDescriptor();
    if (d == null) return Collections.emptyList();

    if (d.isInterfaceConcept()) {
      return Collections.singleton(MetaAdapterFactory.getInterfaceConcept(getConceptDescriptor().getId(), getConceptDescriptor().getConceptFqName()));
    }

    List<SInterfaceConcept> res = new ArrayList<SInterfaceConcept>();
    for (SConceptId id : d.getParentsIds()) {
      if (id.equals(d.getSuperConceptId())) continue;
      String name = ConceptRegistry.getInstance().getConceptDescriptor(id).getConceptFqName();
      res.add(MetaAdapterFactory.getInterfaceConcept(id, name));
    }
    return res;
  }

  @Override
  public int hashCode() {
    return 0;
  }
}
