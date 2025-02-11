package jetbrains.mps.execution.util.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {

  /*package*/ final ConceptDescriptor myConceptIMainClass = new ConceptDescriptorBuilder("jetbrains.mps.execution.util.structure.IMainClass", MetaIdFactory.conceptId(0x4caf0310491e41f5L, 0x8a9b2006b3a94898L, 0x40c1a7cb987d20d5L)).interface_().create();

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptIMainClass);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(String conceptFqName) {
    switch (Arrays.binarySearch(stringSwitchCases_1htk8d_a0a0f, conceptFqName)) {
      case 0:
        return myConceptIMainClass;
      default:
        return null;
    }
  }
  private static String[] stringSwitchCases_1htk8d_a0a0f = new String[]{"jetbrains.mps.execution.util.structure.IMainClass"};
}
