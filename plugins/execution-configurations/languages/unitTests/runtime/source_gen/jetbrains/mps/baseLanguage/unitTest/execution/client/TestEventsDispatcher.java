package jetbrains.mps.baseLanguage.unitTest.execution.client;

/*Generated by MPS */

import java.util.List;
import com.intellij.openapi.util.Key;
import jetbrains.mps.baseLanguage.unitTest.execution.TestEvent;
import java.util.regex.Pattern;

public class TestEventsDispatcher {
  private final TestRunState myState;

  public TestEventsDispatcher(TestRunState testState) {
    this.myState = testState;
  }

  public void onProcessTerminated(String message) {
    message = REPLREGEXP_a0a0e.matcher(message).replaceAll("");
    if (REGEXP_d0rws9_a0a1a4.matcher(message).matches()) {
      // message looks like "Process exited with code 0" 
      // something, space, zero, then non-digit and maybe something else, or line end 
      // normal termination means we lost all unused tests 
      // (which means they has errors -- could not be found or something) 
      List<String> lostTests = this.myState.getUnusedMethods();
      for (String lostTest : lostTests) {
        String lostMethodName = lostTest.substring(lostTest.lastIndexOf(".") + 1);
        String lostClassName = lostTest.substring(0, lostTest.lastIndexOf("."));
        this.myState.looseTest(lostClassName, lostMethodName);
      }
    }
    this.myState.terminate();
  }

  public void onSimpleTextAvailable(String text, Key key) {
    this.myState.outputText(text, key);
  }

  public void onTestEvent(TestEvent event) {
    this.myState.setToken(event.getToken());
    if (TestEvent.START_TEST_PREFIX.equals(event.getToken())) {
      this.myState.onTestStarted(event);
    } else if (TestEvent.FINISH_TEST_PREFIX.equals(event.getToken())) {
      this.myState.onTestFinished(event);
    } else if (TestEvent.ASSUMPTION_FAILURE_TEST_PREFIX.equals(event.getToken())) {
      this.myState.onTestAssumptionFailure(event);
    } else if (TestEvent.FAILURE_TEST_PREFIX.equals(event.getToken())) {
      this.myState.onTestFailure(event);
    }
  }
  private static Pattern REPLREGEXP_a0a0e = Pattern.compile("\\n", 0);
  private static Pattern REGEXP_d0rws9_a0a1a4 = Pattern.compile(".*\\s0(?:\\D+.*|$)", 0);
}
