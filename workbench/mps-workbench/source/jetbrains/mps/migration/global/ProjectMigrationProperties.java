/*
 * Copyright 2003-2014 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.migration.global;

import com.intellij.openapi.components.PersistentStateComponent;
import com.intellij.openapi.components.ProjectComponent;
import com.intellij.openapi.components.State;
import com.intellij.openapi.components.Storage;
import com.intellij.openapi.components.StoragePathMacros;
import com.intellij.openapi.components.StorageScheme;
import jetbrains.mps.project.Project;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.ArrayList;
import java.util.List;

@State(
    name = "MigrationProperties",
    storages = {
        @Storage(file = StoragePathMacros.PROJECT_FILE),
        @Storage(file = StoragePathMacros.PROJECT_CONFIG_DIR + "/migration.xml", scheme = StorageScheme.DIRECTORY_BASED)
    },
    reloadable = true
)
public class ProjectMigrationProperties extends MigrationProperties implements ProjectComponent,
    PersistentStateComponent<Element> {
  private static final String NAME = "key";
  private static final String VALUE = "value";
  private static final String SINGLE_PROP = "entry";

  private Project myProject;

  public ProjectMigrationProperties(Project project) {
    myProject = project;
  }

  public interface MigrationPropertiesReloadListener {
    void onReload();
  }

  private List<MigrationPropertiesReloadListener> myListeners = new ArrayList<MigrationPropertiesReloadListener>(1);

  public void addListener(MigrationPropertiesReloadListener l) {
    myListeners.add(l);
  }

  public void removeListener(MigrationPropertiesReloadListener l) {
    myListeners.remove(l);
  }

  @Nullable
  @Override
  public Element getState() {
    Element res = new Element("ignored");
    for (String key : myProperties.keySet()) {
      Element prop = new Element(SINGLE_PROP);
      prop.setAttribute(NAME, key);
      prop.setAttribute(VALUE, myProperties.get(key));
      res.addContent(prop);
    }
    return res;
  }

  @Override
  public void loadState(Element state) {
    myProperties.clear();

    for (Element e : state.getChildren(SINGLE_PROP)) {
      myProperties.put(e.getAttributeValue(NAME), e.getAttributeValue(VALUE));
    }
    for (MigrationPropertiesReloadListener listener : myListeners) {
      listener.onReload();
    }
  }

  @Override
  public void projectOpened() {

  }

  @Override
  public void projectClosed() {
    myProperties.clear();
  }

  @Override
  public void initComponent() {
    MigrationPropertiesManager.getInstance().addProperties(myProject, this);
  }

  @Override
  public void disposeComponent() {
    MigrationPropertiesManager.getInstance().removeProperties(myProject);
  }

  @NotNull
  @Override
  public String getComponentName() {
    return "ProjectMigrationProperties";
  }
}
