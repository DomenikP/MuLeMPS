package jetbrains.mps.tool.environment;

/*Generated by MPS */

import jetbrains.mps.library.LibraryInitializer;
import jetbrains.mps.project.PathMacrosProvider;
import org.apache.log4j.LogManager;
import org.jetbrains.annotations.NotNull;
import jetbrains.mps.RuntimeFlags;
import jetbrains.mps.TestMode;
import jetbrains.mps.core.platform.MPSCore;
import java.util.Map;
import java.util.HashMap;
import java.io.File;
import jetbrains.mps.internal.collections.runtime.MapSequence;
import jetbrains.mps.project.PathMacros;
import jetbrains.mps.core.tool.environment.util.MapPathMacrosProvider;
import jetbrains.mps.core.tool.environment.util.CanonicalPath;
import java.util.List;
import jetbrains.mps.library.contributor.LibraryContributor;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import java.util.ArrayList;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.project.Project;
import jetbrains.mps.InternalFlag;
import jetbrains.mps.internal.collections.runtime.IterableUtils;
import jetbrains.mps.util.PathManager;
import org.apache.log4j.Logger;

/**
 * Base class for all environments, represents a caching environment.
 * The contract: only one environment must be alive,
 * it is being stored in the special EnvironmentContainer class.
 * 
 * @see jetbrains.mps.tool.environment.EnvironmentContainer 
 */
public abstract class EnvironmentBase implements Environment {
  private static final String PLUGINS_PATH = "plugin.path";

  private boolean myInitialized;
  protected final EnvironmentConfig myConfig;
  private LibraryInitializer myLibInitializer;
  private PathMacrosProvider myMacrosProvider;

  static {
    new Log4jInitializer().init();
    LogManager.getLogger(EnvironmentBase.class).info("Initializing environment");
  }

  public EnvironmentBase(@NotNull EnvironmentConfig config) {
    if (!(RuntimeFlags.isTestMode())) {
      RuntimeFlags.setTestMode(TestMode.USUAL);
    }
    myConfig = config;
  }

  public void init(@NotNull MPSCore mpsCore) {
    myLibInitializer = mpsCore.getLibraryInitializer();
    initMacros();
    initLibraries();
    EnvironmentContainer.setCurrent(this);
    myInitialized = true;
  }

  private PathMacrosProvider initMacros() {
    Map<String, String> macros = new HashMap<String, String>();
    Map<String, File> macrosConfig = myConfig.getMacros();
    for (String name : MapSequence.fromMap(macrosConfig).keySet()) {
      MapSequence.fromMap(macros).put(name, MapSequence.fromMap(macrosConfig).get(name).getAbsolutePath());
    }
    myMacrosProvider = createMapMacrosProvider(macros);
    PathMacros.getInstance().addMacrosProvider(myMacrosProvider);
    return myMacrosProvider;
  }

  private static MapPathMacrosProvider createMapMacrosProvider(Map<String, String> macros) {
    Map<String, String> realMacros = new HashMap<String, String>();
    for (String macroName : macros.keySet()) {
      String macroValue = MapSequence.fromMap(macros).get(macroName);
      CanonicalPath path = new CanonicalPath(macroValue);
      if (path.isValidDirectory()) {
        realMacros.put(macroName, path.getValue());
      }
    }
    return new MapPathMacrosProvider(realMacros);
  }

  private List<LibraryContributor> initLibraries() {
    if (LOG.isInfoEnabled()) {
      LOG.info("Initializing libraries");
    }
    final List<LibraryContributor> libContribs = ListSequence.fromList(new ArrayList<LibraryContributor>());
    LibraryContributorHelper helper = new LibraryContributorHelper(myConfig, rootClassLoader());
    ListSequence.fromList(libContribs).addElement(helper.createLibContributorForLibs());
    ListSequence.fromList(libContribs).addElement(helper.createLibContributorForPlugins());
    myLibInitializer.load(libContribs);
    return libContribs;
  }

  /**
   * Root class loader:
   * 1. As a root class loader for libraries in LibraryInitializer
   * 2. As a root class loader for dumb idea plugin facet
   */
  @Nullable
  protected abstract ClassLoader rootClassLoader();

  @Override
  @NotNull
  public Project createProject(@NotNull ProjectStrategy strategy) {
    checkInitialized();
    return strategy.create(this);
  }

  public void dispose() {
    checkInitialized();
    if (LOG.isDebugEnabled()) {
      LOG.debug("Disposing environment");
    }
    EnvironmentContainer.clear();
  }

  protected static void setSystemProperties(boolean loadIdeaPlugins) {
    boolean internalFlag = InternalFlag.isInternalMode();
    System.setProperty("idea.is.internal", internalFlag + "");
    System.setProperty("idea.no.jre.check", "true");
    System.setProperty("idea.load.plugins", loadIdeaPlugins + "");
    System.setProperty("idea.platform.prefix", "Idea");
  }

  protected static void setIdeaPluginsToLoad(EnvironmentConfig config) {
    // todo try removing this hack 
    if (isEmptyString(System.getProperty(PLUGINS_PATH))) {
      setPluginPath();
      // Value of this property is comma-separated list of plugin IDs intended to load by platform 
      System.setProperty("idea.load.plugins.id", IterableUtils.join(config.getPlugins(), ","));
    }
  }

  protected static void setPluginPath() {
    StringBuilder pluginPath = new StringBuilder();
    File pluginDir = new File(PathManager.getPreInstalledPluginsPath());
    if (pluginDir.exists()) {
      for (File pluginFolder : pluginDir.listFiles()) {
        if (pluginPath.length() > 0) {
          pluginPath.append(File.pathSeparator);
        }
        pluginPath.append(pluginFolder.getPath());
      }
      System.setProperty(PLUGINS_PATH, pluginPath.toString());
    }
  }

  protected final void checkInitialized() {
    if (!(myInitialized)) {
      throw new EnvironmentBase.EnvironmentNotInitializedException();
    }
  }

  private static class EnvironmentNotInitializedException extends IllegalStateException {
    public EnvironmentNotInitializedException() {
      super("#init() method must be called before using an environment");
    }
  }
  protected static Logger LOG = LogManager.getLogger(EnvironmentBase.class);
  private static boolean isEmptyString(String str) {
    return str == null || str.length() == 0;
  }
}
