package jetbrains.mps.lang.editor.selection.test;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;

@MPSLaunch
public class Up_Test extends BaseTransformationTest {
  public Up_Test() {
  }
  @Test
  public void test_Up() throws Throwable {
    this.initTest("${mps_home}", "r:f429894b-858b-4e34-87ae-2cfe2a061928(jetbrains.mps.lang.editor.selection.test)");
    this.runTest("jetbrains.mps.lang.editor.selection.test.Up_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("789834969242091858", "789834969242110804");
      this.invokeAction("jetbrains.mps.ide.editor.actions.SelectUp_Action");
    }
  }
}
