package jetbrains.mps.baseLanguage.tuples.generator.template.helpers;

/*Generated by MPS */


public enum Keys {
  RUNTIME_INTERFACES_GENERATED("runtime_interfaces_generated"),
  RUNTIME_IMPL_GENERATED("runtime_impl_generated"),
  RUNTIME_FROM_GENERATED("runtime_from_generated"),
  RUNTIME_EMPTY_GENERATED("runtime_empty_generated");

  private String name;
  Keys(String name) {
    this.name = PREFIX(name);
  }
  public String compose(Object o) {
    return this.name + "." + String.valueOf(o);
  }
  private static String PREFIX(String str) {
    return "jetbrains.mps.baselanguage.tuples.generator." + str;
  }
}
