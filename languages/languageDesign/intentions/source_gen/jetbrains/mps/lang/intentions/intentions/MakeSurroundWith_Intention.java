package jetbrains.mps.lang.intentions.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.IntentionDescriptorBase;
import jetbrains.mps.intentions.IntentionFactory;
import java.util.Collection;
import jetbrains.mps.intentions.IntentionExecutable;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.intentions.IntentionType;
import jetbrains.mps.smodel.SNodePointer;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import java.util.Collections;
import jetbrains.mps.intentions.IntentionExecutableBase;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.intentions.IntentionDescriptor;

public final class MakeSurroundWith_Intention extends IntentionDescriptorBase implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public MakeSurroundWith_Intention() {
    super(MetaAdapterFactory.getConcept(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, "jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration"), IntentionType.NORMAL, false, new SNodePointer("r:5a8e1e6d-7386-4281-8e53-bda28bd8edf3(jetbrains.mps.lang.intentions.intentions)", "4203998840477564642"));
  }
  @Override
  public String getPresentation() {
    return "MakeSurroundWith";
  }
  @Override
  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    if (!(isApplicableToNode(node, editorContext))) {
      return false;
    }
    return true;
  }
  private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
    return SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3e6815L, "jetbrains.mps.lang.intentions.structure.SurroundWithIntentionDeclaration")) || SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x115b81b652bL, "jetbrains.mps.lang.intentions.structure.IntentionDeclaration"));
  }
  @Override
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new MakeSurroundWith_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  /*package*/ final class IntentionImplementation extends IntentionExecutableBase {
    public IntentionImplementation() {
    }
    @Override
    public String getDescription(final SNode node, final EditorContext editorContext) {
      if (SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3e6815L, "jetbrains.mps.lang.intentions.structure.SurroundWithIntentionDeclaration"))) {
        return "Make Plain Intention";
      } else {
        return "Make a Surround with Intention";
      }
    }
    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      SNode sd;
      if (SNodeOperations.isInstanceOf(node, MetaAdapterFactory.getConcept(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3e6815L, "jetbrains.mps.lang.intentions.structure.SurroundWithIntentionDeclaration"))) {
        sd = SModelOperations.createNewRootNode(SNodeOperations.getModel(node), SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x115b81b652bL, "jetbrains.mps.lang.intentions.structure.IntentionDeclaration")));
      } else {
        sd = SModelOperations.createNewRootNode(SNodeOperations.getModel(node), SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3e6815L, "jetbrains.mps.lang.intentions.structure.SurroundWithIntentionDeclaration")));
      }
      SPropertyOperations.set(sd, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")));
      SPropertyOperations.set(sd, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, 0x10d34f97574L, "shortDescription"), SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, 0x10d34f97574L, "shortDescription")));
      SPropertyOperations.set(sd, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, 0x10d34fa226eL, "alias"), SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, 0x10d34fa226eL, "alias")));
      SPropertyOperations.set(sd, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, 0x115eca8579fL, "virtualPackage"), SPropertyOperations.getString(node, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x10802efe25aL, 0x115eca8579fL, "virtualPackage")));
      SPropertyOperations.set(sd, MetaAdapterFactory.getProperty(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, 0x2303633a9c3cc67aL, "isAvailableInChildNodes"), "" + (SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, 0x2303633a9c3cc67aL, "isAvailableInChildNodes"))));
      SPropertyOperations.set(sd, MetaAdapterFactory.getProperty(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, 0x2303633a9c3cc679L, "isErrorIntention"), "" + (SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, 0x2303633a9c3cc679L, "isErrorIntention"))));
      SLinkOperations.setTarget(sd, MetaAdapterFactory.getReferenceLink(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, 0x2303633a9c3e6812L, "forConcept"), SLinkOperations.getTarget(node, MetaAdapterFactory.getReferenceLink(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, 0x2303633a9c3e6812L, "forConcept")));
      SLinkOperations.setTarget(sd, MetaAdapterFactory.getContainmentLink(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, 0x2303633a9c3cd0a9L, "descriptionFunction"), SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, 0x2303633a9c3cd0a9L, "descriptionFunction")));
      SLinkOperations.setTarget(sd, MetaAdapterFactory.getContainmentLink(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, 0x2303633a9c3cd0aaL, "childFilterFunction"), SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, 0x2303633a9c3cd0aaL, "childFilterFunction")));
      SLinkOperations.setTarget(sd, MetaAdapterFactory.getContainmentLink(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, 0x2303633a9c3cd0abL, "isApplicableFunction"), SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, 0x2303633a9c3cd0abL, "isApplicableFunction")));
      SLinkOperations.setTarget(sd, MetaAdapterFactory.getContainmentLink(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, 0x2303633a9c3e6813L, "executeFunction"), SLinkOperations.getTarget(node, MetaAdapterFactory.getContainmentLink(0xd7a92d38f7db40d0L, 0x8431763b0c3c9f20L, 0x2303633a9c3cc675L, 0x2303633a9c3e6813L, "executeFunction")));

      SNodeOperations.deleteNode(node);
    }
    @Override
    public IntentionDescriptor getDescriptor() {
      return MakeSurroundWith_Intention.this;
    }
  }
}
