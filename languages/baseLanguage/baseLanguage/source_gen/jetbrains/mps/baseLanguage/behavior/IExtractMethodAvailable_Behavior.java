package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.baseLanguage.util.plugin.refactorings.IExtractMethodRefactoringProcessor;
import java.util.List;
import jetbrains.mps.baseLanguage.util.plugin.refactorings.AbstractExtractMethodRefactoringProcessor;

public class IExtractMethodAvailable_Behavior {
  public static void init(SNode thisNode) {
  }
  public static IExtractMethodRefactoringProcessor virtual_getExtractMethodRefactoringProcessor_1221393367929(SNode thisNode, List<SNode> nodesToExtract) {
    return new AbstractExtractMethodRefactoringProcessor(thisNode, nodesToExtract);
  }
}
