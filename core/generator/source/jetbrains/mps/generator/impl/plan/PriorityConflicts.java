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
package jetbrains.mps.generator.impl.plan;

import jetbrains.mps.generator.impl.plan.PriorityGraph.Cycle;
import jetbrains.mps.generator.runtime.TemplateMappingConfiguration;
import jetbrains.mps.generator.runtime.TemplateModule;
import jetbrains.mps.project.structure.modules.mappingpriorities.MappingPriorityRule;
import jetbrains.mps.util.Pair;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.openapi.module.SModuleReference;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * @author Artem Tikhomirov
 */
final class PriorityConflicts {
  /*package*/enum Kind { SelfLock, PastTopPri, LoPriLocksHiPri, CoherentWithStrict, CoherentPrioMix, Invalid, Cycle}

  private final Collection<TemplateModule> myGenerators;
  private final Map<Kind, List<Conflict>> myConflictingRules;

  PriorityConflicts(Collection<TemplateModule> generators) {
    myGenerators = generators;
    myConflictingRules = new HashMap<Kind, List<Conflict>>();
    for (Kind k : Kind.values()) {
      myConflictingRules.put(k, new ArrayList<Conflict>());
    }
  }

  void registerSelfLock(Group g1, Group g2, Collection<MappingPriorityRule> rules) {
    SModuleReference origin = getOrigin(rules);
    String msg = String.format("Self-locking rule: %s", describeCollection(rules));
    register(Kind.SelfLock, new Conflict(origin, msg, rules));
  }

  void registerCoherentPriorityMix(Group g1, Group g2, MappingPriorityRule rule) {
    final Set<MappingPriorityRule> rules = Collections.singleton(rule);
    SModuleReference origin = getOrigin(rules);
    String msg = String.format("Coherent configurations with different 'top priority' setting: %s", String.valueOf(rule));
    register(Kind.CoherentPrioMix, new Conflict(origin, msg, rules));
  }

  void registerCoherentWithStrict(Group coherent, Group g, Collection<MappingPriorityRule> rules) {
    SModuleReference origin = getOrigin(rules);
    String msg = String.format("Coherent configurations on both sides of strict rule: %s", describeCollection(rules));
    register(Kind.CoherentWithStrict, new Conflict(origin, msg, rules));
  }

  void registerLoPriLocksHiPri(Group g1, Group g2, Collection<MappingPriorityRule> rules) {
    SModuleReference origin = getOrigin(rules);
    String msg = String.format("Configuration with lower priority blocks high-priority configuration: %s", describeCollection(rules));
    register(Kind.LoPriLocksHiPri, new Conflict(origin, msg, rules));
  }

  void registerLeftovers(Collection<MappingPriorityRule> rules) {
    SModuleReference origin = getOrigin(rules);
    String msg = String.format("Rules left after all top-priority rules were consumed: %s", describeCollection(rules));
    register(Kind.PastTopPri, new Conflict(origin, msg, rules));
  }

  void registerCycle(Cycle c) {
    ArrayList<String> cycleElements = new ArrayList<String>();
    for (Group g : c.elements) {
      StringBuilder sb = new StringBuilder();
      for (Pair<String, TemplateMappingConfiguration> p : GenerationPartitioningUtil.toStrings(g.getElements())) {
        sb.append(p.o1);
        sb.append(',');
      }
      sb.setLength(sb.length() - 1); // we're safe - there should be at least 3 elements to constitute a cycle.
      cycleElements.add(sb.toString());
    }
    String msg = String.format("Cycle detected: %s", describeCollection(cycleElements));
    final Collection<MappingPriorityRule> rules = c.getRules();
    register(Kind.Cycle, new Conflict(getOrigin(rules), msg, rules));
  }

  void registerInvalid(SModuleReference origin, @NotNull String message, MappingPriorityRule badRule) {
    register(Kind.Invalid, new Conflict(origin, message, Collections.singleton(badRule)));
  }

  private void register(Kind kind, Conflict conflict) {
    myConflictingRules.get(kind).add(conflict);
  }

  public boolean hasConflicts() {
    return hasConflicts(Arrays.asList(Kind.values()));
  }

  public boolean hasConflicts(Collection<Kind> kinds) {
    for (Kind k : kinds) {
      if (!myConflictingRules.get(k).isEmpty()) {
        return  true;
      }
    }
    return false;
  }

  public List<Conflict> getConflicts() {
    return getConflicts(Arrays.asList(Kind.values()));
  }

  public List<Conflict> getConflicts(Collection<Kind> kinds) {
    ArrayList<Conflict> rv = new ArrayList<Conflict>();
    for (Kind k : kinds) {
      rv.addAll(myConflictingRules.get(k));
    }
    return rv;
  }

  /*package*/ Collection<Conflict> get(Kind kind) {
    return myConflictingRules.get(kind);
  }

  private static String describeCollection(Collection<?> coll) {
    if (coll.isEmpty()) {
      return "";
    }
    if (coll.size() == 1) {
      return coll.iterator().next().toString();
    }
    StringBuilder sb = new StringBuilder();
    sb.append('\n');
    for (Object r : coll) {
      sb.append('\t');
      sb.append(r);
      sb.append('\n');
    }
    return sb.toString();
  }

  private SModuleReference getOrigin(Collection<MappingPriorityRule> rules) {
    for (MappingPriorityRule r : rules) {
      for (TemplateModule tm : myGenerators) {
        if (tm.getPriorities().contains(r)) {
          return tm.getReference();
        }
      }
    }
    return null;
  }
}
