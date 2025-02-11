package jetbrains.mps.lang.editor.table.stateMachine.test;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;

@MPSLaunch
public class Create_Test extends BaseTransformationTest {
  public Create_Test() {
  }
  @Test
  public void test_Create() throws Throwable {
    this.initTest("${mps_home}", "r:dc1400b5-0aa4-448e-8f15-11fb0ccb5c23(jetbrains.mps.lang.editor.table.stateMachine.test@tests)");
    this.runTest("jetbrains.mps.lang.editor.table.stateMachine.test.Create_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("6170050146384276052", "6170050146384276054");
      this.invokeAction("jetbrains.mps.ide.editor.actions.Insert_Action");
    }
  }
}
