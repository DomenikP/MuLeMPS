package jetbrains.mps.baseLanguage.unitTest.execution.tool;

/*Generated by MPS */

import com.intellij.icons.AllIcons;
import javax.swing.Icon;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public enum TestState {
  NOT_RAN(AllIcons.RunConfigurations.TestNotRan),
  IN_PROGRESS(AllIcons.RunConfigurations.TestInProgress1),
  PAUSED(AllIcons.RunConfigurations.TestPaused),
  IGNORED(AllIcons.RunConfigurations.TestIgnored),
  PASSED(AllIcons.RunConfigurations.TestPassed),
  FAILED(AllIcons.RunConfigurations.TestFailed),
  ERROR(AllIcons.RunConfigurations.TestError),
  TERMINATED(AllIcons.RunConfigurations.TestTerminated);

  private final Icon myIcon;
  TestState(Icon icon) {
    Language language = Language.getLanguageFor(SNodeOperations.getModel(MetaAdapterFactory.getInterfaceConcept(0xf61473f9130f42f6L, 0xb98d6c438812c2f6L, 0x11b2709bd56L, "jetbrains.mps.baseLanguage.unitTest.structure.ITestCase").getDeclarationNode()));
    myIcon = icon;
  }
  public Icon getIcon() {
    if (equals(TestState.IN_PROGRESS)) {
      return TestTreeIconAnimator.getCurrentFrame();
    }
    return myIcon;
  }
}
