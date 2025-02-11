package jetbrains.mps.tool.builder.unittest;

/*Generated by MPS */


public interface UnitTestListener {
  public void testStarted(String testName);
  public void testFailed(String test, String message, String details);
  public void testFinished(String testName);
  public void logMessage(String message);
  public void logError(String errorMessage);
}
