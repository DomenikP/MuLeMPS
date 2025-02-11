package jetbrains.mps.lang.editor.styleTests;

/*Generated by MPS */

import jetbrains.mps.smodel.language.LanguageRuntime;
import jetbrains.mps.smodel.adapter.ids.SLanguageId;
import java.util.UUID;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateModule;
import jetbrains.mps.smodel.runtime.ILanguageAspect;
import jetbrains.mps.openapi.editor.descriptor.EditorAspectDescriptor;
import jetbrains.mps.lang.editor.styleTests.editor.EditorAspectDescriptorImpl;
import jetbrains.mps.smodel.runtime.StructureAspectDescriptor;

public class Language extends LanguageRuntime {
  public static String MODULE_REF = "a936c42c-cb2c-4d64-a1dc-12986579a998(jetbrains.mps.lang.editor.styleTests)";
  public Language() {
  }
  @Override
  public String getNamespace() {
    return "jetbrains.mps.lang.editor.styleTests";
  }

  @Override
  public int getVersion() {
    return 0;
  }

  public SLanguageId getId() {
    return new SLanguageId(UUID.fromString("a936c42c-cb2c-4d64-a1dc-12986579a998"));
  }
  @Override
  protected String[] getExtendedLanguageIDs() {
    return new String[]{};
  }
  @Override
  public Collection<TemplateModule> getGenerators() {
    return null;
  }
  @Override
  protected <T extends ILanguageAspect> T createAspect(Class<T> aspectClass) {
    if (aspectClass == EditorAspectDescriptor.class) {
      return (T) new EditorAspectDescriptorImpl();
    }
    if (aspectClass == StructureAspectDescriptor.class) {
      return (T) new jetbrains.mps.lang.editor.styleTests.structure.StructureAspectDescriptor();
    }


    return super.createAspect(aspectClass);
  }
}
