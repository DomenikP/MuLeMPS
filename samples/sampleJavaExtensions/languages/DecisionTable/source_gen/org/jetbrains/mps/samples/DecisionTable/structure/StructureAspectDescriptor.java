package org.jetbrains.mps.samples.DecisionTable.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import jetbrains.mps.smodel.runtime.StaticScope;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {

  /*package*/ final ConceptDescriptor myConceptDecisionTable = new ConceptDescriptorBuilder("org.jetbrains.mps.samples.DecisionTable.structure.DecisionTable", MetaIdFactory.conceptId(0x65c13e6709b64695L, 0xaf8852024b7d2027L, 0x1b942309931b1581L)).super_("jetbrains.mps.baseLanguage.structure.Expression").super_(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL)).parents("jetbrains.mps.baseLanguage.structure.Expression").parentIds(MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL)).childDescriptors(new ConceptDescriptorBuilder.Link(1987251859606934914L, "expectedType", MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506dL), false, false, false), new ConceptDescriptorBuilder.Link(1987251859606934915L, "defaultValue", MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL), false, false, false), new ConceptDescriptorBuilder.Link(1987251859606934916L, "colHeaders", MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL), false, true, false), new ConceptDescriptorBuilder.Link(1987251859606934917L, "rowHeaders", MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL), false, true, false), new ConceptDescriptorBuilder.Link(1987251859606934918L, "resultValues", MetaIdFactory.conceptId(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37f506fL), false, true, false)).children(new String[]{"expectedType", "defaultValue", "colHeaders", "rowHeaders", "resultValues"}, new boolean[]{false, false, true, true, true}).alias("dectab", "").staticScope(StaticScope.NONE).create();

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptDecisionTable);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(String conceptFqName) {
    switch (Arrays.binarySearch(stringSwitchCases_1htk8d_a0a0f, conceptFqName)) {
      case 0:
        return myConceptDecisionTable;
      default:
        return null;
    }
  }
  private static String[] stringSwitchCases_1htk8d_a0a0f = new String[]{"org.jetbrains.mps.samples.DecisionTable.structure.DecisionTable"};
}
