package jetbrains.mps.lang.behavior.intentions;

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
import java.util.Collections;
import jetbrains.mps.intentions.IntentionExecutableBase;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.intentions.IntentionDescriptor;

public final class MakeStatic_Intention extends IntentionDescriptorBase implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public MakeStatic_Intention() {
    super(MetaAdapterFactory.getConcept(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d4348057eL, "jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration"), IntentionType.NORMAL, true, new SNodePointer("r:dbb111e4-8af4-4e6d-b49d-e07620d0c285(jetbrains.mps.lang.behavior.intentions)", "4748945189160275754"));
  }
  @Override
  public String getPresentation() {
    return "MakeStatic";
  }
  @Override
  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    if (!(isApplicableToNode(node, editorContext))) {
      return false;
    }
    return true;
  }
  private boolean isApplicableToNode(final SNode node, final EditorContext editorContext) {
    return true;
  }
  @Override
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new MakeStatic_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  /*package*/ final class IntentionImplementation extends IntentionExecutableBase {
    public IntentionImplementation() {
    }
    @Override
    public String getDescription(final SNode node, final EditorContext editorContext) {
      if (SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d4348057eL, 0x51613f7fe129b24dL, "isStatic"))) {
        return "Make Non-Static";
      } else {
        return "Make Static";
      }
    }
    @Override
    public void execute(final SNode node, final EditorContext editorContext) {
      SPropertyOperations.set(node, MetaAdapterFactory.getProperty(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d4348057eL, 0x51613f7fe129b24dL, "isStatic"), "" + (!(SPropertyOperations.getBoolean(node, MetaAdapterFactory.getProperty(0xaf65afd8f0dd4942L, 0x87d963a55f2a9db1L, 0x11d4348057eL, 0x51613f7fe129b24dL, "isStatic")))));
    }
    @Override
    public IntentionDescriptor getDescriptor() {
      return MakeStatic_Intention.this;
    }
  }
}
