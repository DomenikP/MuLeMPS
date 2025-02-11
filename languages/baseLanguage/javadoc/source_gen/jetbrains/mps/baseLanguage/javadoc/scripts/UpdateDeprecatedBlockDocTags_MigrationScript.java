package jetbrains.mps.baseLanguage.javadoc.scripts;

/*Generated by MPS */

import jetbrains.mps.lang.script.runtime.BaseMigrationScript;
import jetbrains.mps.lang.script.runtime.AbstractMigrationRefactoring;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.action.SNodeFactoryOperations;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

public final class UpdateDeprecatedBlockDocTags_MigrationScript extends BaseMigrationScript {
  public UpdateDeprecatedBlockDocTags_MigrationScript() {
    super("UpdateDeprecatedBlockDocTags");
    this.addRefactoring(new AbstractMigrationRefactoring() {
      @Override
      public String getName() {
        return "Adds the new CommentLine child to all DeprecatedBlockDocTag instance that miss it";
      }
      @Override
      public String getAdditionalInfo() {
        return "Adds the new CommentLine child to all DeprecatedBlockDocTag instance that miss it";
      }
      @Override
      public SAbstractConcept getApplicableConcept() {
        return MetaAdapterFactory.getConcept(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x757ba20a4c87f964L, "jetbrains.mps.baseLanguage.javadoc.structure.DeprecatedBlockDocTag");
      }
      @Override
      public boolean isApplicableInstanceNode(SNode node) {
        return (SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x757ba20a4c87f964L, 0x250631c6c859e113L, "text")) == null);
      }
      @Override
      public void doUpdateInstanceNode(SNode node) {
        SNodeFactoryOperations.setNewChild(node, MetaAdapterFactory.getContainmentLink(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x757ba20a4c87f964L, 0x250631c6c859e113L, "text"), SNodeFactoryOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xf280165065d5424eL, 0xbb1b463a8781b786L, 0x757ba20a4c87f96cL, "jetbrains.mps.baseLanguage.javadoc.structure.CommentLine")));
      }
      @Override
      public boolean isShowAsIntention() {
        return false;
      }
    });
  }

  @Nullable
  @Override
  public SNodeReference getScriptNode() {
    return PersistenceFacade.getInstance().createNodeReference("r:5cc40f3f-8490-4eff-97dc-454147d36c2e(jetbrains.mps.baseLanguage.javadoc.scripts)/992603585967257187");
  }
}
