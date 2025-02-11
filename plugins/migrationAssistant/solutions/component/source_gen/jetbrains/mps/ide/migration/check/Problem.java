package jetbrains.mps.ide.migration.check;

/*Generated by MPS */


public abstract class Problem<T> {
  private T myReason;

  public Problem(T reason) {
    myReason = reason;
  }

  public abstract String getMessage();

  public abstract String getCategory();

  public T getReason() {
    return myReason;
  }
}
