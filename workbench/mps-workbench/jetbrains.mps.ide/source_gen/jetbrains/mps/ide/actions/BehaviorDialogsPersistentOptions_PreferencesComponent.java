package jetbrains.mps.ide.actions;

/*Generated by MPS */

import jetbrains.mps.plugins.prefs.BaseProjectPrefsComponent;
import com.intellij.util.xmlb.annotations.Tag;
import com.intellij.openapi.project.Project;
import org.jdom.Element;
import com.intellij.util.xmlb.XmlSerializer;
import jetbrains.mps.plugins.prefs.BasePrefsPage;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import com.intellij.openapi.options.ConfigurationException;
import java.util.List;
import java.util.ArrayList;

public class BehaviorDialogsPersistentOptions_PreferencesComponent extends BaseProjectPrefsComponent {
  @Tag(value = "state")
  private BehaviorDialogsPersistentOptions_PreferencesComponent.MyState myState = new BehaviorDialogsPersistentOptions_PreferencesComponent.MyState();
  public BehaviorDialogsPersistentOptions_PreferencesComponent(Project project) {
    super(project);
  }
  public void loadState(Element state) {
    XmlSerializer.deserializeInto(this.myState, state);
    for (BasePrefsPage page : ListSequence.fromList(this.getPages())) {
      page.reset();
    }
  }
  public Element getState() {
    for (BasePrefsPage page : ListSequence.fromList(this.getPages())) {
      try {
        page.apply();
      } catch (ConfigurationException e) {
      }
    }
    return XmlSerializer.serialize(this.myState);
  }
  public BehaviorDialogsPersistentOptions_PreferencesComponent.MyState getStateObject() {
    return this.myState;
  }
  public List<BasePrefsPage> createPages() {
    List<BasePrefsPage> result = ListSequence.fromList(new ArrayList<BasePrefsPage>());
    return result;
  }
  public static class MyState {
    public boolean addReturnsOnImplement = false;
    public boolean sortAlphabetically = false;
    public boolean removeAttributes = true;
    public MyState() {
    }
  }
}
