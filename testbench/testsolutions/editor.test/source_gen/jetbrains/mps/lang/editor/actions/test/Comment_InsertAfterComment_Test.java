package jetbrains.mps.lang.editor.actions.test;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;

@MPSLaunch
public class Comment_InsertAfterComment_Test extends BaseTransformationTest {
  public Comment_InsertAfterComment_Test() {
  }
  @Test
  public void test_Comment_InsertAfterComment() throws Throwable {
    this.initTest("${mps_home}", "r:c44f4b8c-137c-4225-8bd9-38d232a9b736(jetbrains.mps.lang.editor.actions.test)");
    this.runTest("jetbrains.mps.lang.editor.actions.test.Comment_InsertAfterComment_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("4247887444754063989", "4247887444754064009");
      this.invokeAction("jetbrains.mps.ide.editor.actions.Insert_Action");
    }
  }
}
