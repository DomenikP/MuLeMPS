package jetbrains.mps.editorTest;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;

@MPSLaunch
public class EmptyEnumConstantCreationWithConstructorTest_Test extends BaseTransformationTest {
  public EmptyEnumConstantCreationWithConstructorTest_Test() {
  }
  @Test
  public void test_EmptyEnumConstantCreationWithConstructorTest() throws Throwable {
    this.initTest("${mps_home}", "r:914ee49a-537d-44b2-a5fb-bac87a54743d(jetbrains.mps.editorTest@tests)");
    this.runTest("jetbrains.mps.editorTest.EmptyEnumConstantCreationWithConstructorTest_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("7045533117182184908", "7045533117182184964");
      this.invokeAction("jetbrains.mps.ide.editor.actions.MoveDown_Action");
      this.pressKeys(ListSequence.fromListAndArray(new ArrayList<String>(), " A"));
      this.typeString("abc");
    }
  }
}
