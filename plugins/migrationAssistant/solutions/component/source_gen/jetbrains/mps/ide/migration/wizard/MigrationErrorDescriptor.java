package jetbrains.mps.ide.migration.wizard;

/*Generated by MPS */

import jetbrains.mps.ide.migration.check.Problem;

public abstract class MigrationErrorDescriptor {
  public MigrationErrorDescriptor() {
  }

  /**
   * 
   * @return text to display on next step
   */
  public abstract String getMessage();

  /**
   * 
   * @return problems to show in model checker tool
   */
  public abstract Iterable<Problem> getProblems();
}
