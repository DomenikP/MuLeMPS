package jetbrains.mps.ide.actions;

/*Generated by MPS */

import jetbrains.mps.plugins.actions.BaseKeymapChanges;
import com.intellij.openapi.actionSystem.Shortcut;
import com.intellij.openapi.actionSystem.KeyboardShortcut;
import javax.swing.KeyStroke;

public class DependenciesKeyMap_KeymapChanges extends BaseKeymapChanges {
  public DependenciesKeyMap_KeymapChanges() {
    // simple 
    addSimpleShortcut("jetbrains.mps.ide.actions.SafeDeleteModuleDependency_Action", getShortcut("ctrl DELETE"));
    // simple parameterized 
    // complex 
  }
  public String getScheme() {
    return "$default";
  }
  public static Shortcut getShortcut(String stroke) {
    return new KeyboardShortcut(KeyStroke.getKeyStroke(stroke), null);
  }
}
