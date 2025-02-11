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

package jetbrains.mps.idea.core.facet;

import com.intellij.facet.FacetManager;
import com.intellij.facet.ModifiableFacetModel;
import com.intellij.openapi.module.Module;
import com.intellij.openapi.project.ModuleAdapter;
import com.intellij.openapi.project.Project;
import com.intellij.util.Function;
import jetbrains.mps.ide.findusages.model.scopes.ProjectScope;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.progress.EmptyProgressMonitor;
import jetbrains.mps.project.Solution;
import jetbrains.mps.smodel.SModel.ImportElement;
import jetbrains.mps.smodel.SModelInternal;
import jetbrains.mps.smodel.StaticReference;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeUtil;
import org.jetbrains.mps.openapi.model.SReference;
import org.jetbrains.mps.openapi.module.FindUsagesFacade;
import org.jetbrains.mps.openapi.module.ModelAccess;
import org.jetbrains.mps.openapi.module.SearchScope;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by danilla on 6/15/15.
 */
public class ModuleRenameHandler extends ModuleAdapter {
  @Override
  public void modulesRenamed(final Project project, List<Module> modules, Function<Module, String> oldNameProvider) {
    for (final Module module : modules) {
      final FacetManager facetManager = FacetManager.getInstance(module);
      final MPSFacet facet = facetManager.getFacetByType(MPSFacetType.ID);
      if (facet == null) {
        continue;
      }

      ModelAccess modelAccess = ProjectHelper.getModelAccess(project);
      if (modelAccess == null) {
        return;
      }

      modelAccess.executeCommand(new Runnable() {
        @Override
        public void run() {
          Set<SModelReference> renamedModelRefs = new HashSet<SModelReference>();

          // collecting all models of the renamed module, their SModelReferences will be changed
          for (SModel model : facet.getSolution().getModels()) {
            renamedModelRefs.add(model.getReference());
          }

          // finding usages before we modify the solution
          SearchScope projectScope = new ProjectScope(ProjectHelper.toMPSProject(project));
          Set<SModel> modelUsages = FindUsagesFacade.getInstance().findModelUsages(projectScope, renamedModelRefs, new EmptyProgressMonitor());

          // now handling the case when there are usages within the renamed module itself
          // if we don't handle it, we'll end up patching refs in models which are already disposed,
          // becase we patch after solution reload
          Iterator<SModel> usagesIterator = modelUsages.iterator();
          // remembering ids of such in-module usages
          Set<SModelId> ids = new HashSet<SModelId>();
          while (usagesIterator.hasNext()) {
            SModel usage = usagesIterator.next();
            if (usage.getModule() == facet.getSolution() && usage instanceof EditableSModel) {
              // it's in the same module and it's not derived (it's editable)
              ids.add(usage.getModelId());
              // don't want _this_instance_ of SModel in usages, as it will be disposed after we reload the module
              usagesIterator.remove();
            }
          }

          // resetting facet => reloading solution
          final Solution newSolution = resetFacet(facet);

          // adding to usages re-created in-modules models: those models which were found as usages,
          // but which have been re-created by now as a result of solution reload
          for (SModelId id: ids) {
            modelUsages.add(newSolution.getModel(id));
          }

          // actually fixing usages
          renameUsages(renamedModelRefs, modelUsages, new Function<SModelReference, SModelReference>() {
            @Override
            public SModelReference fun(SModelReference mRef) {
              String modelName = mRef.getModelName();
              for (SModel m: newSolution.getModels()) {
                if (modelName.equals(m.getModelName())) {
                  return m.getReference();
                }
              }
              assert false : "Cannot recover model usages after idea module rename";
              return null;
            }
          });
        }
      });
    }
  }

  private Solution resetFacet(MPSFacet facet) {
    Module module = facet.getModule();
    FacetManager facetManager = FacetManager.getInstance(module);

    ModifiableFacetModel mm = facetManager.createModifiableModel();
    mm.removeFacet(facet);
    mm.commit();

    mm = facetManager.createModifiableModel();
    facet.getConfiguration().getBean().setIdByModuleName(module.getName());
    facet.getConfiguration().getBean().getSolutionDescriptor().setNamespace(module.getName());
    final MPSFacet newFacet = new MPSFacet(new MPSFacetType(), module, MPSFacetConstants.MPS_FACET_NAME, facet.getConfiguration(), null);
    mm.addFacet(newFacet);
    mm.commit();

    return newFacet.getSolution();
  }

  // todo reuse from PackageRenameListener
  private void renameUsages(Set<SModelReference> renamedModels, Set<SModel> modelUsages, Function<SModelReference, SModelReference> renameFunc) {
    for (SModel model : modelUsages) {
      assert model instanceof SModelInternal;

      Map<SModelReference, SModelReference> changes = new HashMap<SModelReference, SModelReference>();

      List<ImportElement> importElements = new ArrayList<ImportElement>(((SModelInternal) model).importedModels());
      for (ImportElement imp : importElements) {
        SModelReference mref = imp.getModelReference();
        if (!renamedModels.contains(mref)) {
          continue;
        }

        SModelReference newModelRef = renameFunc.fun(mref);
        ImportElement newImport = new ImportElement(newModelRef, imp.getReferenceID());
        ((SModelInternal) model).deleteModelImport(mref);
        ((SModelInternal) model).addModelImport(newImport);
        changes.put(mref, newModelRef);
      }

      updateSReferences(model, changes);
    }
  }

  private void updateSReferences(SModel model, Map<SModelReference, SModelReference> modelRefChange) {
    for (SNode node : SNodeUtil.getDescendants(model)) {
      for (SReference ref : node.getReferences()) {
        if (!(ref instanceof StaticReference)) {
          continue;
        }
        SModelReference modelRef = ref.getTargetSModelReference();
        if (modelRefChange.containsKey(modelRef)) {
          ((StaticReference) ref).setTargetSModelReference(modelRefChange.get(modelRef));
        }
      }
    }
  }

}
