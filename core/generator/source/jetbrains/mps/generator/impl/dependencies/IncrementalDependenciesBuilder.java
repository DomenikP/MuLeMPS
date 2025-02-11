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
package jetbrains.mps.generator.impl.dependencies;

import jetbrains.mps.InternalFlag;
import jetbrains.mps.extapi.model.GeneratableSModel;
import jetbrains.mps.generator.IncrementalGenerationStrategy;
import jetbrains.mps.generator.impl.GenerationFailureException;
import jetbrains.mps.generator.impl.GeneratorMappings;
import jetbrains.mps.generator.impl.cache.BrokenCacheException;
import jetbrains.mps.generator.impl.cache.IntermediateCacheHelper;
import jetbrains.mps.generator.impl.cache.MappingsMemento;
import jetbrains.mps.generator.impl.cache.TransientModelWithMetainfo;
import jetbrains.mps.util.IterableUtil;
import jetbrains.mps.util.SNodeOperations;
import jetbrains.mps.util.annotation.ToRemove;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.module.SRepository;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Dependencies collector. Created once per model generation.
 * <p/>
 * Evgeny Gryaznov, May 11, 2010
 */
public class IncrementalDependenciesBuilder implements DependenciesBuilder {

  private static final Logger LOG = LogManager.getLogger(IncrementalDependenciesBuilder.class);

  /* generation data */
  private Map<String, String> myDependenciesTraces;
  private final Map<SNode, RootDependenciesBuilder> myRootBuilders = new HashMap<SNode, RootDependenciesBuilder>();
  private final String myModelHash;
  private final String myParametersHash;
  private final IntermediateCacheHelper myCache;
  private RootDependenciesBuilder myConditionalsBuilder;
  private RootDependenciesBuilder[] myAllBuilders;

  /* next step input -> original */
  Map<SNode, SNode> nextStepToOriginalMap;

  /* current step data */
  Map<SNode, SNode> currentToOriginalMap;
  SModel originalInputModel;
  SModel currentInputModel;
  SModel currentOutputModel;
  private TransientModelWithMetainfo myCachedModel;
  private int myMajorStep = -1;
  private int myMinorStep = -1;

  /* make data */
  private Map<String, SNode> myUnchangedSet;
  private Map<String, SNode> myRequiredSet;

  public IncrementalDependenciesBuilder(SModel originalInputModel, @Nullable Map<String, String> generationHashes,
                      String parametersHash, IntermediateCacheHelper cache) {
    this.originalInputModel = currentInputModel = originalInputModel;
    myParametersHash = parametersHash;
    myCache = cache;
    currentOutputModel = null;
    myModelHash = generationHashes == null ? null : generationHashes.get(GeneratableSModel.FILE);
    initData(getRoots(originalInputModel), generationHashes);
  }

  private void initData(SNode[] roots, Map<String, String> generationHashes) {
    myConditionalsBuilder = new RootDependenciesBuilder(null, this, generationHashes != null ? generationHashes.get(GeneratableSModel.HEADER) : "");
    currentToOriginalMap = new HashMap<SNode, SNode>(roots.length * 3 / 2);
    myAllBuilders = new RootDependenciesBuilder[roots.length + 1];
    int e = 0;
    myAllBuilders[e++] = myConditionalsBuilder;
    for (SNode root : roots) {
      myAllBuilders[e] = new RootDependenciesBuilder(root, this, generationHashes != null ? generationHashes.get(root.getNodeId().toString()) : null);
      myRootBuilders.put(root, myAllBuilders[e++]);
      currentToOriginalMap.put(root, root);
    }
  }

  public void traceDependencyOrigins() {
    if (!InternalFlag.isInternalMode()) return;

    myDependenciesTraces = new HashMap<String, String>();
  }

  // there's nobody using dependency traces, and as long as incremental story needs complete refactoring, no reason to keep them
  @ToRemove(version = 3.2)
  void reportModelAccess(SModel model, SNode root) {
    if (myDependenciesTraces == null) return;
    String key = model.getReference().toString() + " in " + (root == null ? "common" : root.getNodeId().toString());
    if (myDependenciesTraces.containsKey(key)) return;

    StringWriter stringWriter = new StringWriter();
    final Throwable stackTrace = new Throwable();
    stackTrace.printStackTrace(new PrintWriter(stringWriter));
    final String v = stringWriter.toString();
    myDependenciesTraces.put(key, v);
    if (myDependenciesTraces.containsKey(null)) {
      throw new IllegalStateException("Got null key in dep traces after adding key " + key, stackTrace);
    }
    if (!v.equals(myDependenciesTraces.get(key))) {
      throw new IllegalStateException("Mismatch in recorded value for key " + key, stackTrace);
    }
  }

  public void propagateDependencies(Set<SNode> unchangedRoots, Set<SNode> requiredRoots, boolean conditionalsUnchanged, boolean conditionalsRequired, GenerationDependencies saved) {
    myUnchangedSet = new HashMap<String, SNode>(unchangedRoots.size() + 1);
    myRequiredSet = new HashMap<String, SNode>(requiredRoots.size() + 1);
    for (SNode root : unchangedRoots) {
      propagateDependencies(getRootBuilder(root), saved.getDependenciesFor(root.getNodeId().toString()), false);
    }
    for (SNode root : requiredRoots) {
      propagateDependencies(getRootBuilder(root), saved.getDependenciesFor(root.getNodeId().toString()), true);
    }
    if (conditionalsUnchanged || conditionalsRequired) {
      propagateDependencies(getRootBuilder(null), saved.getDependenciesFor(GeneratableSModel.HEADER), conditionalsRequired);
    }
  }

  private void propagateDependencies(RootDependenciesBuilder builder, GenerationRootDependencies deps, boolean isRequired) {
    assert deps.getHash().equals(builder.getHash());
    builder.loadDependencies(deps);
    SNode root = builder.getOriginalRoot();
    (isRequired ? myRequiredSet : myUnchangedSet).put(root != null ? root.getNodeId().toString() : TransientModelWithMetainfo.CONDITIONALS_ID, root);
  }

  private static SNode[] getRoots(SModel model) {
    Collection<SNode> collection = IterableUtil.asCollection(model.getRootNodes());
    return collection.toArray(new SNode[collection.size()]);
  }

  @Override
  public void scriptApplied(SModel newmodel) {
    Map<SNodeId, SNode> oldidsToOriginal = new HashMap<SNodeId, SNode>();
    for (Map.Entry<SNode, SNode> entry : currentToOriginalMap.entrySet()) {
      oldidsToOriginal.put(entry.getKey().getNodeId(), entry.getValue());
    }
    currentToOriginalMap = new HashMap<SNode, SNode>();
    for (SNode root : newmodel.getRootNodes()) {
      SNodeId id = root.getNodeId();
      SNode original = oldidsToOriginal.get(id);
      if (original == null) {
        // TODO if original is null -> new root added, warning/error(strict)?
        LOG.debug("script created a new node");
      }
      currentToOriginalMap.put(root, original);
    }
    currentInputModel = newmodel;
    currentOutputModel = null;
  }

  @Override
  public void registerRoot(SNode outputRoot, SNode inputNode) {
    // XXX in fact, not sure there's need to keep this map if I can use TracingUtil and userobjects with original input?
    if (nextStepToOriginalMap == null) {
      nextStepToOriginalMap = new HashMap<SNode, SNode>();
    }
    if (inputNode == null) {
      nextStepToOriginalMap.put(outputRoot, null);
      return;
    }
    SNode originalRoot = currentToOriginalMap.get(inputNode.getContainingRoot());
    nextStepToOriginalMap.put(outputRoot, originalRoot);
  }

  @Override
  public void rootReplaced(SNode oldOutputRoot, SNode newOutputRoot) {
    if (nextStepToOriginalMap != null && nextStepToOriginalMap.containsKey(oldOutputRoot)) {
      SNode original = nextStepToOriginalMap.remove(oldOutputRoot);
      nextStepToOriginalMap.put(newOutputRoot, original);
    }
  }

  @Override
  public void updateModel(SModel newInputModel) {
    if (nextStepToOriginalMap != null) {
      currentToOriginalMap = nextStepToOriginalMap;
      nextStepToOriginalMap = null;
    } else {
      currentToOriginalMap = new HashMap<SNode, SNode>();
    }
    currentInputModel = newInputModel;
    currentOutputModel = null;
  }

  @Override
  public void dropModel() {
    nextStepToOriginalMap = null;
    currentOutputModel = null;
  }

  @Override
  public void setOutputModel(SModel model, int majorStep, int minorStep) {
    currentOutputModel = model;
    myMajorStep = majorStep;
    myMinorStep = minorStep;
    myCachedModel = null;
  }

  @Override
  public SNode getOriginalForOutput(SNode outputNode) {
    if (nextStepToOriginalMap == null) {
      return null;
    }
    return nextStepToOriginalMap.get(outputNode);
  }

  @Override
  public SNode getOriginalForInput(SNode inputNode) {
    if (currentToOriginalMap == null) {
      return null;
    }
    return currentToOriginalMap.get(inputNode);
  }

  @Override
  public RootDependenciesBuilder getRootBuilder(SNode inputNode) {
    if (inputNode == null || inputNode.getModel() == null) {
      return myConditionalsBuilder;
    }
    final SNode initial = inputNode;
    inputNode = inputNode.getContainingRoot();
    SNode originalRoot = currentToOriginalMap.get(inputNode);
    if (originalRoot != null) {
      return myRootBuilders.get(originalRoot);
    } else if (currentToOriginalMap.containsKey(inputNode)) {
      return myConditionalsBuilder;
    }
    // shouldn't happen
    LOG.error("consistency problem in dependencies map", new IllegalStateException());
    LOG.error("INPUT: " + SNodeOperations.getDebugText(inputNode));
    if (initial != inputNode) {
      LOG.error("getRootBuilder invoked for: " + SNodeOperations.getDebugText(initial));
    }
    LOG.error("current to original map:");
    for (SNode n : currentToOriginalMap.keySet()) {
      final SNode o = currentToOriginalMap.get(n);
      LOG.error(String.format("%s --> %s", SNodeOperations.getDebugText(n), o == null ? String.valueOf(o) : SNodeOperations.getDebugText(o)));
    }
    return null;
  }

  @Override
  public GenerationDependencies getResult(IncrementalGenerationStrategy incrementalStrategy) {
    List<GenerationRootDependencies> unchanged = new ArrayList<GenerationRootDependencies>();
    List<GenerationRootDependencies> rootDependencies = new ArrayList<GenerationRootDependencies>(myAllBuilders.length);
    fillRootDependencies(rootDependencies, unchanged);
    final Map<String, String> externalHashes = getGenerationHashes(rootDependencies, incrementalStrategy);
    return new GenerationDependencies(rootDependencies, myModelHash, myParametersHash, externalHashes,
        unchanged.isEmpty() ? Collections.<GenerationRootDependencies>emptyList() : unchanged, myUnchangedSet.size(), myRequiredSet.size(), myDependenciesTraces);
  }

  private void fillRootDependencies(List<GenerationRootDependencies> rootDependencies, List<GenerationRootDependencies> unchanged) {
    for (RootDependenciesBuilder l : myAllBuilders) {
      GenerationRootDependencies dep;
      if (l.isUnchanged()) {
        dep = l.getSavedDependencies();
        unchanged.add(dep);
      } else {
        dep = GenerationRootDependencies.fromData(l);
      }
      rootDependencies.add(dep);
    }
  }

  private Map<String,String> getGenerationHashes(List<GenerationRootDependencies> rootDependencies, IncrementalGenerationStrategy incrementalStrategy) {
    Map<String, String> externalHashes = new HashMap<String, String>();
    final SRepository repo = originalInputModel.getRepository();
    for (GenerationRootDependencies dep : rootDependencies) {
      for (String modelReference : dep.getExternal()) {
        if (!externalHashes.containsKey(modelReference)) {
          SModel sm = PersistenceFacade.getInstance().createModelReference(modelReference).resolve(repo);
          Map<String, String> hashes = incrementalStrategy.getModelHashes(sm, null);
          String value = hashes != null ? hashes.get(GeneratableSModel.FILE) : null;
          externalHashes.put(modelReference, value);
        }
      }
    }
    return externalHashes;
  }



  /* working with cache */

  private void loadCachedModel() throws BrokenCacheException {
    TransientModelWithMetainfo model = myCache.retrieve(myMajorStep, myMinorStep, currentOutputModel.getReference());
    if (model == null) {
      throw new BrokenCacheException(currentOutputModel);
    }
    myCachedModel = model;
  }

  @Override
  public boolean isStepRequired() {
    return myCache.isStepCovered(myMajorStep, myMinorStep);
  }

  @Override
  public void reloadRequired(GeneratorMappings mappings) throws GenerationFailureException {
    if (myRequiredSet.isEmpty()) {
      return;
    }

    loadCachedModel();

    List<SNode> toCopy = new ArrayList<SNode>(myRequiredSet.size() * 2 + 16);
    List<MappingsMemento> toImport = new ArrayList<MappingsMemento>(myRequiredSet.size() * 2);

    for (SNode root : myCachedModel.getRoots()) {
      String originalId = myCachedModel.getOriginal(root);
      if (myRequiredSet.containsKey(originalId)) {
        SNode originalRoot = myRequiredSet.get(originalId);
        if (nextStepToOriginalMap == null) {
          nextStepToOriginalMap = new HashMap<SNode, SNode>();
        }
        nextStepToOriginalMap.put(root, originalRoot);
        toCopy.add(root);
        MappingsMemento val = myCachedModel.getMappingsMemento(originalId);
        if (val != null) {
          toImport.add(val);
        }
      }
    }

    for (SNode node : toCopy) {
      currentOutputModel.addRootNode(node);
    }
    for (MappingsMemento val : toImport) {
      mappings.importPersisted(val, currentInputModel, currentOutputModel);
    }
  }

  @Override
  public void updateUnchanged(TransientModelWithMetainfo model) throws GenerationFailureException {
    if (!myCache.hasCache() || myUnchangedSet.isEmpty() || currentOutputModel == null /* do not update after script */) {
      return;
    }

    if (myCachedModel == null) {
      loadCachedModel();
    }

    for (SNode root : myCachedModel.getRoots()) {
      String originalId = myCachedModel.getOriginal(root);
      if (myUnchangedSet.containsKey(originalId)) {
        model.getRoots().add(root);
        model.setOriginal(root.getNodeId(), originalId);
        MappingsMemento mappingsMemento = myCachedModel.getMappingsMemento(originalId);
        if (mappingsMemento != null) {
          model.updateMappings(originalId, mappingsMemento);
        }
      }
    }
  }

  @Override
  public TransientModelWithMetainfo create(SModel model, GeneratorMappings mappings) throws GenerationFailureException {
    TransientModelWithMetainfo rv = TransientModelWithMetainfo.create(model, this);
    mappings.export(rv, this);
    return rv;
  }
}
