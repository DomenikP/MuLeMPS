package jetbrains.mps.baseLanguage.jdk7;

/*Generated by MPS */

import jetbrains.mps.generator.runtime.TemplateModuleBase;
import java.util.Collection;
import jetbrains.mps.generator.runtime.TemplateMappingPriorityRule;
import jetbrains.mps.generator.runtime.TemplateModel;
import jetbrains.mps.generator.runtime.TemplateUtil;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.language.LanguageRuntime;
import jetbrains.mps.module.ReloadableModule;
import jetbrains.mps.smodel.ModuleRepositoryFacade;
import jetbrains.mps.generator.runtime.TemplateModule;

public class Generator extends TemplateModuleBase {
  public static String MODULE_REF = "2ec34c1e-7442-4656-9a59-44fa731a9286(jetbrains.mps.baseLanguage.jdk7#616711547384942258)";
  private Language sourceLanguage;
  private final Collection<TemplateMappingPriorityRule> priorities;
  private final Collection<TemplateModel> models;
  private Collection<String> usedLanguages;
  public Generator(Language sourceLanguage) {
    this.sourceLanguage = sourceLanguage;
    priorities = TemplateUtil.asCollection(TemplateUtil.createBeforeOrTogetherRule(TemplateUtil.createRefExternal("2ec34c1e-7442-4656-9a59-44fa731a9286(jetbrains.mps.baseLanguage.jdk7#616711547384942258)", TemplateUtil.createRefLocal()), TemplateUtil.createRefExternal("46ef3033-ce72-4166-b19e-6ceed23b6844(jetbrains.mps.baseLanguageInternal#1238251529692)", TemplateUtil.createRefLocal())));
    models = TemplateUtil.<TemplateModel>asCollection(getTemplateModel("jetbrains.mps.baseLanguage.jdk7.generator.template.main.TemplateModelImpl"));
    usedLanguages = TemplateUtil.<String>asCollection("jetbrains.mps.baseLanguage", "jetbrains.mps.baseLanguageInternal");
  }
  @Override
  public String getAlias() {
    return "jetbrains.mps.baseLanguage.jdk7/baseLanguage";
  }
  @Override
  public Collection<TemplateModel> getModels() {
    return models;
  }
  @Override
  public Collection<TemplateMappingPriorityRule> getPriorities() {
    return priorities;
  }
  @Override
  public SModuleReference getReference() {
    return PersistenceFacade.getInstance().createModuleReference(MODULE_REF);
  }
  @Override
  public Collection<String> getUsedLanguages() {
    return usedLanguages;
  }
  @Override
  public LanguageRuntime getSourceLanguage() {
    return sourceLanguage;
  }
  @Override
  public Collection<String> getReferencedModules() {
    return null;
  }
  private TemplateModel getTemplateModel(String modelName) {
    ReloadableModule module = (ReloadableModule) ModuleRepositoryFacade.getInstance().getModule(getReference());
    Class<TemplateModel> clazz = null;
    if (module != null && module.willLoad()) {
      try {
        clazz = (Class<TemplateModel>) module.getClass(modelName);
      } catch (ClassNotFoundException e) {
        throw new IllegalStateException("Class not found for model " + modelName, e);
      }
    }
    if (clazz == null) {
      throw new IllegalStateException(String.format("Failed to obtain generator runtime class for model %s", modelName));
    }
    try {
      return clazz.getConstructor(TemplateModule.class).newInstance(this);
    } catch (RuntimeException ex) {
      throw ex;
    } catch (Exception ex) {
      throw new RuntimeException(ex);
    }
  }
}
