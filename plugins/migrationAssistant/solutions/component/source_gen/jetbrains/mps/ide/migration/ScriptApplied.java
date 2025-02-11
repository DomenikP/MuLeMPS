package jetbrains.mps.ide.migration;

/*Generated by MPS */

import jetbrains.mps.lang.migration.runtime.base.MigrationScript;
import org.jetbrains.mps.openapi.module.SModule;

public final class ScriptApplied {
  private MigrationScript myScript;
  private SModule myModule;
  public ScriptApplied(MigrationScript script, SModule module) {
    myScript = script;
    myModule = module;
  }
  public MigrationScript getScript() {
    return myScript;
  }
  public SModule getModule() {
    return myModule;
  }
  @Override
  public String toString() {
    return myScript.getCaption() + ": " + myModule.getModuleName();
  }
}
