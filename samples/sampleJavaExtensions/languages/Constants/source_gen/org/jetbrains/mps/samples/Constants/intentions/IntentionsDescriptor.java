package org.jetbrains.mps.samples.Constants.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.IntentionAspectBase;
import jetbrains.mps.intentions.IntentionFactory;
import org.jetbrains.annotations.Nullable;
import java.util.Collection;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import java.util.Arrays;

public final class IntentionsDescriptor extends IntentionAspectBase {
  private final long[] myId2Index;
  private IntentionFactory[] myIntentions0;
  private IntentionFactory[] myIntentions1;
  private IntentionFactory[] myIntentions2;

  public IntentionsDescriptor() {
    myId2Index = new long[3];
    myId2Index[0] = 0xf8c37f506fL;
    myId2Index[1] = 0x14be6cdec1861419L;
    myId2Index[2] = 0x37600150f5294665L;
  }

  @Override
  @Nullable
  public Collection<IntentionFactory> getIntentions(@NotNull SConceptId conceptId) {
    final int index = Arrays.binarySearch(myId2Index, conceptId.getIdValue());
    switch (index) {
      case 0:
        // Concept: Expression 
        if (myIntentions0 == null) {
          myIntentions0 = new IntentionFactory[1];
          myIntentions0[0] = new IntroduceConstant_Intention();
        }
        return Arrays.asList(myIntentions0);
      case 1:
        // Concept: Constant 
        if (myIntentions1 == null) {
          myIntentions1 = new IntentionFactory[1];
          myIntentions1[0] = new SafeRemoveConstant_Intention();
        }
        return Arrays.asList(myIntentions1);
      case 2:
        // Concept: ConstantReference 
        if (myIntentions2 == null) {
          myIntentions2 = new IntentionFactory[1];
          myIntentions2[0] = new InlineConstant_Intention();
        }
        return Arrays.asList(myIntentions2);
      default:
        return null;
    }
  }

  @NotNull
  @Override
  public Collection<IntentionFactory> getAllIntentions() {
    IntentionFactory[] rv = new IntentionFactory[3];
    rv[0] = new InlineConstant_Intention();
    rv[1] = new SafeRemoveConstant_Intention();
    rv[2] = new IntroduceConstant_Intention();
    return Arrays.asList(rv);
  }
}
