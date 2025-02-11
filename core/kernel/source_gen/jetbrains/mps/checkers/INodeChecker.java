package jetbrains.mps.checkers;

/*Generated by MPS */

import java.util.Set;
import jetbrains.mps.errors.IErrorReporter;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SRepository;

public interface INodeChecker {
  public Set<IErrorReporter> getErrors(SNode node, SRepository repoitory);
}
