package jetbrains.mps.editorTest;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;
import junit.framework.Assert;

@MPSLaunch
public class TryingToLeftTransformNewExpression_Test extends BaseTransformationTest {
  public TryingToLeftTransformNewExpression_Test() {
  }
  @Test
  public void test_TryingToLeftTransformNewExpression() throws Throwable {
    this.initTest("${mps_home}", "r:914ee49a-537d-44b2-a5fb-bac87a54743d(jetbrains.mps.editorTest@tests)");
    this.runTest("jetbrains.mps.editorTest.TryingToLeftTransformNewExpression_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("2907839077756812217", "2907839077756812221");
      this.typeString(" ");
      this.invokeAction("jetbrains.mps.ide.editor.actions.Complete_Action");
      Assert.assertTrue(this.getEditorComponent().getNodeSubstituteChooser().isVisible());
      this.getEditorComponent().getNodeSubstituteChooser().setVisible(false);
      this.invokeAction("jetbrains.mps.ide.editor.actions.MoveUp_Action");
    }
  }
}
