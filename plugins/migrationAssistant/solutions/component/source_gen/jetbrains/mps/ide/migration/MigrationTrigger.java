package jetbrains.mps.ide.migration;

/*Generated by MPS */

import com.intellij.openapi.components.State;
import com.intellij.openapi.components.Storage;
import com.intellij.openapi.components.StoragePathMacros;
import com.intellij.openapi.components.StorageScheme;
import com.intellij.openapi.components.AbstractProjectComponent;
import com.intellij.openapi.components.PersistentStateComponent;
import jetbrains.mps.ide.migration.wizard.MigrationErrorContainer;
import jetbrains.mps.project.Project;
import jetbrains.mps.migration.global.ProjectMigrationProperties;
import jetbrains.mps.ide.migration.wizard.MigrationErrorDescriptor;
import java.util.concurrent.atomic.AtomicInteger;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.lang.migration.runtime.util.MigrationsUtil;
import com.intellij.openapi.startup.StartupManager;
import com.intellij.openapi.application.ApplicationManager;
import jetbrains.mps.ide.vfs.VirtualFileUtils;
import com.intellij.openapi.vfs.VirtualFileManager;
import jetbrains.mps.ide.platform.watching.ReloadManager;
import javax.swing.SwingUtilities;
import com.intellij.openapi.project.ex.ProjectManagerEx;
import jetbrains.mps.ide.migration.wizard.MigrationErrorWizardStep;
import jetbrains.mps.ide.modelchecker.platform.actions.ModelCheckerViewer;
import jetbrains.mps.ide.modelchecker.platform.actions.ModelCheckerTool;
import jetbrains.mps.ide.findusages.model.SearchResults;
import jetbrains.mps.ide.modelchecker.platform.actions.ModelCheckerIssue;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.internal.collections.runtime.IVisitor;
import jetbrains.mps.ide.migration.check.Problem;
import jetbrains.mps.smodel.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.ide.findusages.model.SearchResult;
import jetbrains.mps.ide.icons.IdeIcons;
import com.intellij.openapi.application.ModalityState;
import jetbrains.mps.project.AbstractModule;
import com.intellij.ide.GeneralSettings;
import jetbrains.mps.smodel.MPSModuleRepository;
import jetbrains.mps.classloading.ClassLoaderManager;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import java.util.Set;
import jetbrains.mps.internal.collections.runtime.SetSequence;
import java.util.HashSet;
import jetbrains.mps.migration.component.util.MigrationComponent;
import jetbrains.mps.smodel.Language;
import java.util.List;
import org.jetbrains.mps.openapi.language.SLanguage;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import org.jetbrains.mps.openapi.module.SRepositoryContentAdapter;
import jetbrains.mps.classloading.MPSClassesListenerAdapter;
import jetbrains.mps.module.ReloadableModuleBase;
import org.jetbrains.annotations.Nullable;

/**
 * At the first startup, migration is not required
 * The need for migration is determined after startup by checking all modules once and then watching the repo
 * Whether some change requires migration to be executed, the user is notified about that and the project is reloaded
 * with myState.migrationRequired set to true.
 * In this case, the migration is executed and no watchers are added (as they could try to run the migration once again)
 * After the migration is completed, myState.migrationRequired is set to false again and the project is reloaded
 * 
 * Reasons to reload project after migration:
 * 1. The reload cycle with migration wizard happens w/o adding repo listeners
 * 2. Models should be unloaded after migration
 */
@State(name = "MigrationTrigger", storages = {@Storage(file = StoragePathMacros.WORKSPACE_FILE, scheme = StorageScheme.DIRECTORY_BASED)
}, reloadable = true)
public class MigrationTrigger extends AbstractProjectComponent implements PersistentStateComponent<MigrationTrigger.MyState>, IStartupMigrationExecutor, MigrationErrorContainer {

  private Project myMpsProject;
  private final MigrationManager myMigrationManager;
  private MigrationTrigger.MyState myState = new MigrationTrigger.MyState();

  private boolean myMigrationQueued = false;

  private ProjectMigrationProperties myProperties;

  private MigrationTrigger.MyRepoListener myRepoListener = new MigrationTrigger.MyRepoListener();
  private MigrationTrigger.MyClassesListener myClassesListener = new MigrationTrigger.MyClassesListener();
  private MigrationTrigger.MyPropertiesListener myPropertiesListener = new MigrationTrigger.MyPropertiesListener();
  private boolean myListenersAdded = false;

  private MigrationErrorDescriptor myErrors = null;

  public MigrationTrigger(com.intellij.openapi.project.Project ideaProject, Project p, MigrationManager migrationManager, ProjectMigrationProperties props) {
    super(ideaProject);
    myMpsProject = p;
    myMigrationManager = migrationManager;
    myProperties = props;
  }

  private final AtomicInteger myBlocked = new AtomicInteger(0);

  public void blockMigrationsCheck() {
    myBlocked.incrementAndGet();
  }

  public void unblockMigrationsCheck() {
    int locks = myBlocked.decrementAndGet();
    assert locks >= 0 : "Non-paired block-unblock method usage";
    if (locks == 0) {
      ModelAccess.instance().runWriteAction(new Runnable() {
        public void run() {
          MigrationTrigger.updateUsedLanguagesVersions(MigrationsUtil.getMigrateableModulesFromProject(myMpsProject));
          checkMigrationNeeded();
        }
      });
    }
  }

  public void projectOpened() {
    if (!(myState.migrationRequired)) {
      addListeners();
      ModelAccess.instance().runWriteAction(new Runnable() {
        public void run() {
          updateUsedLanguagesVersions(MigrationsUtil.getMigrateableModulesFromProject(myMpsProject));
          checkMigrationNeeded();
        }
      });
    } else {
      saveAndSetTipsState();
      StartupManager.getInstance(myProject).registerPostStartupActivity(new Runnable() {
        public void run() {
          ApplicationManager.getApplication().runWriteAction(new Runnable() {
            public void run() {
              VirtualFileUtils.refreshSynchronouslyRecursively(myProject.getBaseDir());
              VirtualFileManager.getInstance().syncRefresh();
              ReloadManager.getInstance().flush();
            }
          });
          SwingUtilities.invokeLater(new Runnable() {
            public void run() {
              myState.migrationRequired = false;

              ModelAccess.instance().runWriteAction(new Runnable() {
                public void run() {
                  updateUsedLanguagesVersions(MigrationsUtil.getMigrateableModulesFromProject(myMpsProject));
                }
              });

              final MigrationAssistantWizard wizard = new MigrationAssistantWizard(myProject, myMigrationManager, MigrationTrigger.this);
              // final reload is needed to cleanup memory (unload models) and do possible switches (e.g. to a new persistence) 
              boolean finished = wizard.showAndGet();
              restoreTipsState();
              if (!(finished)) {
                return;
              }

              if (myErrors == null) {
                ApplicationManager.getApplication().runWriteAction(new Runnable() {
                  public void run() {
                    ProjectManagerEx.getInstance().reloadProject(myProject);
                  }
                });
              } else {
                MigrationErrorWizardStep lastStep = as_feb5zp_a0a0a0k0a0a0a1a0a0a0a1a0a0y(wizard.getCurrentStepObject(), MigrationErrorWizardStep.class);
                if (lastStep == null) {
                  return;
                }

                StartupManager.getInstance(myProject).runWhenProjectIsInitialized(new Runnable() {
                  public void run() {
                    ApplicationManager.getApplication().invokeLater(new Runnable() {
                      public void run() {
                        ModelAccess.instance().runReadAction(new Runnable() {
                          public void run() {
                            ModelCheckerViewer v = new ModelCheckerViewer(myProject) {
                              @Override
                              protected void close() {
                                ModelCheckerTool.getInstance(myProject).closeTab(this);
                                super.close();
                              }
                            };
                            final SearchResults<ModelCheckerIssue> result = new SearchResults<ModelCheckerIssue>();
                            Sequence.fromIterable(myErrors.getProblems()).visitAll(new IVisitor<Problem>() {
                              public void visit(Problem it) {
                                Object r = it.getReason();

                                ModelCheckerIssue mci;
                                if (r instanceof SNode) {
                                  mci = new ModelCheckerIssue.NodeIssue(((org.jetbrains.mps.openapi.model.SNode) r), it.getMessage(), null);
                                } else if (r instanceof SModule) {
                                  mci = new ModelCheckerIssue.ModuleIssue(it.getMessage(), null);
                                } else {
                                  throw new IllegalArgumentException(r.getClass().getName());
                                }
                                result.add(new SearchResult<ModelCheckerIssue>(mci, r, it.getCategory()));
                              }
                            });
                            v.setSearchResults(result);
                            ModelCheckerTool.getInstance(myProject).showTabWithResults(v, "Migration issues", IdeIcons.MODULE_GROUP_CLOSED);
                          }
                        });
                      }
                    }, ModalityState.NON_MODAL);

                  }
                });
              }
            }
          });
        }
      });
    }
  }

  public static void updateUsedLanguagesVersions(Iterable<SModule> modules) {
    Sequence.fromIterable(modules).ofType(AbstractModule.class).visitAll(new IVisitor<AbstractModule>() {
      public void visit(AbstractModule it) {
        it.validateLanguageVersions();
      }
    });
  }

  public void projectClosed() {
    removeListeners();
  }

  private void saveAndSetTipsState() {
    if (myState.tips == null) {
      myState.tips = GeneralSettings.getInstance().showTipsOnStartup();
    }
    GeneralSettings.getInstance().setShowTipsOnStartup(false);
  }

  private void restoreTipsState() {
    if (myState.tips == null) {
      return;
    }
    GeneralSettings.getInstance().setShowTipsOnStartup(myState.tips);
    myState.tips = null;
  }

  private void addListeners() {
    myListenersAdded = true;
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        MPSModuleRepository.getInstance().addRepositoryListener(MigrationTrigger.this.myRepoListener);
        ClassLoaderManager.getInstance().addClassesHandler(MigrationTrigger.this.myClassesListener);
        myProperties.addListener(myPropertiesListener);
      }
    });
  }

  private boolean removeListeners() {
    if (!(myListenersAdded)) {
      return true;
    }
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        myProperties.removeListener(myPropertiesListener);
        ClassLoaderManager.getInstance().removeClassesHandler(myClassesListener);
        MPSModuleRepository.getInstance().removeRepositoryListener(MigrationTrigger.this.myRepoListener);
      }
    });
    return false;
  }

  @NonNls
  @NotNull
  public String getComponentName() {
    return "MigrationTrigger";
  }

  public synchronized void resetMigrationQueuedFlag() {
    myMigrationQueued = false;
  }

  public synchronized void checkMigrationNeeded() {
    postponeMigrationIfNeededOnModuleChange(MigrationsUtil.getMigrateableModulesFromProject(myMpsProject));
  }

  private synchronized void postponeMigrationIfNeededOnModuleChange(Iterable<SModule> modules) {
    if (myMigrationQueued) {
      return;
    }

    // this is because of validateLanguageVersions, to fail ASAP 
    myMpsProject.getModelAccess().checkWriteAccess();

    updateUsedLanguagesVersions(modules);
    Set<SModule> modules2Check = SetSequence.fromSetWithValues(new HashSet<SModule>(), modules);
    if (!(MigrationComponent.isMigrationRequired(myMpsProject, modules2Check))) {
      return;
    }

    postponeMigration();
  }

  private synchronized void postponeMigrationIfNeededOnLanguageReload(Iterable<Language> languages) {
    if (myMigrationQueued) {
      return;
    }

    // this is because of validateLanguageVersions, to fail ASAP 
    myMpsProject.getModelAccess().checkWriteAccess();

    // if a new language is added to a repo, all modules in project using it  
    // should be checked for whether their migration is needed  
    final Set<SModule> modules2Check = SetSequence.fromSet(new HashSet<SModule>());
    final List<SLanguage> addedLanguages = Sequence.fromIterable(languages).select(new ISelector<Language, SLanguage>() {
      public SLanguage select(Language it) {
        return MetaAdapterFactory.getLanguage(it.getModuleReference());
      }
    }).toListSequence();
    Sequence.fromIterable(MigrationsUtil.getMigrateableModulesFromProject(myMpsProject)).visitAll(new IVisitor<SModule>() {
      public void visit(SModule it) {
        Set<SLanguage> used = new HashSet<SLanguage>(it.getUsedLanguages());
        used.retainAll(addedLanguages);
        if (!(used.isEmpty())) {
          SetSequence.fromSet(modules2Check).addElement(it);
        }
      }
    });
    updateUsedLanguagesVersions(modules2Check);
    if (!(MigrationComponent.isLanguageMigrationRequired(modules2Check))) {
      return;
    }

    postponeMigration();
  }

  public synchronized void postponeMigration() {
    if (myBlocked.get() != 0) {
      return;
    }

    final com.intellij.openapi.project.Project ideaProject = myProject;
    final Iterable<SModule> allModules = MigrationsUtil.getMigrateableModulesFromProject(myMpsProject);
    saveAndSetTipsState();

    // wait until project is fully loaded (if not yet) 
    StartupManager.getInstance(ideaProject).runWhenProjectIsInitialized(new Runnable() {
      public void run() {
        // as we use ui, postpone to EDT 
        ApplicationManager.getApplication().invokeLater(new Runnable() {
          public void run() {
            boolean migrate = MigrationDialogUtil.showMigrationConfirmation(myProject, allModules, myMigrationManager);
            restoreTipsState();

            // set flag to execute migration after startup 
            // NOTE we need to set it here as in invokeLater it can  
            // be executed when save session already passed, see MPS-22045 
            myState.migrationRequired = migrate;

            if (!(migrate)) {
              return;
            }

            VirtualFileUtils.refreshSynchronouslyRecursively(myProject.getBaseDir());
            VirtualFileManager.getInstance().asyncRefresh(new Runnable() {
              public void run() {
                ApplicationManager.getApplication().invokeLater(new Runnable() {
                  public void run() {
                    ReloadManager.getInstance().flush();
                    // reload project and start migration assist 
                    ProjectManagerEx.getInstance().reloadProject(ideaProject);
                  }
                });
              }
            });
          }
        });
      }
    });

    myMigrationQueued = true;
  }

  private class MyRepoListener extends SRepositoryContentAdapter {
    public MyRepoListener() {
    }
    @Override
    public void moduleAdded(@NotNull SModule module) {
      super.moduleAdded(module);
      if (!(MPSModuleRepository.getInstance().getOwners(module).contains(myMpsProject))) {
        return;
      }
      if (!(MigrationsUtil.isModuleMigrateable(module))) {
        return;
      }
      postponeMigrationIfNeededOnModuleChange(Sequence.<SModule>singleton(module));
    }

    @Override
    public void moduleChanged(SModule module) {
      super.moduleChanged(module);
      if (!(MPSModuleRepository.getInstance().getOwners(module).contains(myMpsProject))) {
        return;
      }
      if (!(MigrationsUtil.isModuleMigrateable(module))) {
        return;
      }
      postponeMigrationIfNeededOnModuleChange(Sequence.<SModule>singleton(module));
    }
  }

  private class MyClassesListener extends MPSClassesListenerAdapter {
    public MyClassesListener() {
    }
    @Override
    public void afterClassesLoaded(Set<? extends ReloadableModuleBase> modules) {
      postponeMigrationIfNeededOnLanguageReload(SetSequence.fromSet(modules).ofType(Language.class));
    }
  }

  private class MyPropertiesListener implements ProjectMigrationProperties.MigrationPropertiesReloadListener {
    @Override
    public void onReload() {
      ModelAccess.instance().runWriteAction(new Runnable() {
        public void run() {
          checkMigrationNeeded();
        }
      });
    }
  }

  public MigrationErrorDescriptor getErrorDescriptor() {
    return myErrors;
  }

  public void setErrorDescriptor(MigrationErrorDescriptor errors) {
    myErrors = errors;
  }

  @Nullable
  @Override
  public MigrationTrigger.MyState getState() {
    return myState;
  }

  @Override
  public void loadState(MigrationTrigger.MyState state) {
    myState = state;
  }

  public static class MyState {
    public boolean migrationRequired = false;
    public Boolean tips;
  }
  private static <T> T as_feb5zp_a0a0a0k0a0a0a1a0a0a0a1a0a0y(Object o, Class<T> type) {
    return (type.isInstance(o) ? (T) o : null);
  }
}
