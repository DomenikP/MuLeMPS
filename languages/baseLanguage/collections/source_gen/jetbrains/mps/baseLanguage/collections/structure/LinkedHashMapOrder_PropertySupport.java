package jetbrains.mps.baseLanguage.collections.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.PropertySupport;
import java.util.Iterator;
import jetbrains.mps.internal.collections.runtime.ListSequence;

public class LinkedHashMapOrder_PropertySupport extends PropertySupport {
  public boolean canSetValue(String value) {
    if (value == null) {
      return true;
    }
    Iterator<LinkedHashMapOrder> constants = ListSequence.fromList(LinkedHashMapOrder.getConstants()).iterator();
    while (constants.hasNext()) {
      LinkedHashMapOrder constant = constants.next();
      if (value.equals(constant.getName())) {
        return true;
      }
    }
    return false;
  }
  public String toInternalValue(String value) {
    if (value == null) {
      return null;
    }
    Iterator<LinkedHashMapOrder> constants = ListSequence.fromList(LinkedHashMapOrder.getConstants()).iterator();
    while (constants.hasNext()) {
      LinkedHashMapOrder constant = constants.next();
      if (value.equals(constant.getName())) {
        return constant.getValueAsString();
      }
    }
    return null;
  }
  public String fromInternalValue(String value) {
    LinkedHashMapOrder constant = LinkedHashMapOrder.parseValue(value);
    if (constant != null) {
      return constant.getName();
    }
    return "";
  }
}
