package jetbrains.mps.editorTest;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;

@MPSLaunch
public class SelectionByShiftArrows_Test extends BaseTransformationTest {
  public SelectionByShiftArrows_Test() {
  }
  @Test
  public void test_SelectionByShiftArrows() throws Throwable {
    this.initTest("${mps_home}", "r:914ee49a-537d-44b2-a5fb-bac87a54743d(jetbrains.mps.editorTest@tests)");
    this.runTest("jetbrains.mps.editorTest.SelectionByShiftArrows_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("5109488425462005079", "5109488425462005083");
      this.invokeAction("jetbrains.mps.ide.editor.actions.SelectPrevious_Action");
      this.typeString("2");
    }
  }
}
