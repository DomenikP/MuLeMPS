package jetbrains.mps.baseLanguage.tuples.test;

/*Generated by MPS */

import jetbrains.mps.baseLanguage.tuples.runtime.Tuples;
import jetbrains.mps.baseLanguage.tuples.runtime.MultiTuple;

public class Nulls {
  public Nulls() {
  }
  public Tuples._2<Object, Object> returnsNulls() {
    return MultiTuple.<Object,Object>from(null, null);
  }
  public Tuples._2<String, Integer> returnsNull() {
    return null;
  }
}
