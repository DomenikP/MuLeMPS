package jetbrains.mps.ide.modelchecker.platform.actions;

/*Generated by MPS */

import java.util.List;
import jetbrains.mps.ide.findusages.model.SearchResult;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.util.ProgressMonitor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import org.apache.log4j.Level;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.errors.MessageStatus;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public abstract class SpecificChecker {
  public SpecificChecker() {
  }
  public abstract List<SearchResult<ModelCheckerIssue>> checkModel(SModel model, ProgressMonitor progressContext);
  protected static void addIssue(List<SearchResult<ModelCheckerIssue>> results, SNode node, String message, String severity, String issueType, IModelCheckerFix fix) {
    if (filterIssue(node)) {
      if (SNodeOperations.getContainingRoot(node) == null) {
        if (LOG.isEnabledFor(Level.ERROR)) {
          LOG.error("Node without containing root", new IllegalStateException());
        }
      }
      ListSequence.fromList(results).addElement(ModelCheckerIssue.getSearchResultForNode(node, message, fix, severity, issueType));
    }
  }
  public static String getResultCategory(MessageStatus messageStatus) {
    switch (messageStatus) {
      case ERROR:
        return ModelChecker.SEVERITY_ERROR;
      case WARNING:
        return ModelChecker.SEVERITY_WARNING;
      case OK:
        return ModelChecker.SEVERITY_INFO;
      default:
        return ModelChecker.SEVERITY_ERROR;
    }
  }
  public static boolean filterIssue(SNode node) {
    SNode container = AttributeOperations.getAttribute(node, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07a3d4b5L, "jetbrains.mps.lang.test.structure.NodeOperationsContainer")));
    if (container == null) {
      return true;
    }
    for (SNode property : SLinkOperations.getChildren(container, MetaAdapterFactory.getContainmentLink(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b07a3d4b5L, 0x11b07abae7cL, "nodeOperations"))) {
      if (SNodeOperations.isInstanceOf(property, MetaAdapterFactory.getConcept(0x8585453e6bfb4d80L, 0x98deb16074f1d86cL, 0x11b01e7283dL, "jetbrains.mps.lang.test.structure.NodeErrorCheckOperation"))) {
        return false;
      }
    }
    return true;
  }
  protected static Logger LOG = LogManager.getLogger(SpecificChecker.class);
}
