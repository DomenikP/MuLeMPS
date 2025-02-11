package jetbrains.mps.refactoringTest;

/*Generated by MPS */

import jetbrains.mps.MPSLaunch;
import jetbrains.mps.lang.test.runtime.BaseTransformationTest;
import org.junit.Test;
import jetbrains.mps.lang.test.runtime.BaseTestBody;
import junit.framework.Assert;
import jetbrains.mps.baseLanguage.util.plugin.refactorings.InlineMethodModel;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

@MPSLaunch
public class InlineRecursiveMethod_Test extends BaseTransformationTest {
  @Test
  public void test_InlineRecursiveMethod() throws Throwable {
    this.initTest("${mps_home}", "r:4dc6ffb5-4bbb-4773-b0b7-e52989ceb56f(jetbrains.mps.refactoringTest@tests)", false);
    this.runTest("jetbrains.mps.refactoringTest.InlineRecursiveMethod_Test$TestBody", "test_InlineRecursiveMethod", true);
  }
  @MPSLaunch
  public static class TestBody extends BaseTestBody {
    public void test_InlineRecursiveMethod() throws Exception {
      this.addNodeById("1230052989283");
      Assert.assertTrue(new InlineMethodModel(SNodeOperations.cast(this.getNodeById("1230052989285"), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8cc56b21dL, "jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration"))).getErrors() != null);
    }
  }
}
