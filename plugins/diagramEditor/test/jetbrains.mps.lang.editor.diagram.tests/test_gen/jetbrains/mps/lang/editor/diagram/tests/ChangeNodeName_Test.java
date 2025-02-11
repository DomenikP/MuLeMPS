package jetbrains.mps.lang.editor.diagram.tests;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseEditorTestBody;
import java.awt.Component;
import java.awt.event.MouseEvent;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;

@MPSLaunch
public class ChangeNodeName_Test extends BaseTransformationTest {
  public ChangeNodeName_Test() {
  }
  @Test
  public void test_ChangeNodeName() throws Throwable {
    this.initTest("${mps_home}", "r:e41d7e03-7ef3-4161-a48a-e48d8152e422(jetbrains.mps.lang.editor.diagram.tests@tests)");
    this.runTest("jetbrains.mps.lang.editor.diagram.tests.ChangeNodeName_Test$TestBody", "testMethod", false);
  }
  @MPSLaunch
  public static class TestBody extends BaseEditorTestBody {
    public TestBody() {
    }
    @Override
    public void testMethodImpl() throws Exception {
      initEditor("822550549814786508", "2303280755028869339");
      {
        int x_y5jbv2_a0 = 60;
        int y_y5jbv2_a0 = 25;
        Component eventTargetComponent_y5jbv2_a0 = this.processMouseEvent(x_y5jbv2_a0, y_y5jbv2_a0, MouseEvent.MOUSE_PRESSED);
        this.processSecondaryMouseEvent(eventTargetComponent_y5jbv2_a0, x_y5jbv2_a0, y_y5jbv2_a0, MouseEvent.MOUSE_RELEASED);
        this.processSecondaryMouseEvent(eventTargetComponent_y5jbv2_a0, x_y5jbv2_a0, y_y5jbv2_a0, MouseEvent.MOUSE_CLICKED);
      }
      this.typeString("abCd");
      this.pressKeys(ListSequence.fromListAndArray(new ArrayList<String>(), " DELETE"));
      this.pressKeys(ListSequence.fromListAndArray(new ArrayList<String>(), " DELETE"));

    }
  }
}
