package jetbrains.mps.lang.structure.pluginSolution.plugin;

/*Generated by MPS */

import jetbrains.mps.plugins.actions.BaseKeymapChanges;
import com.intellij.openapi.actionSystem.Shortcut;
import com.intellij.openapi.actionSystem.KeyboardShortcut;
import javax.swing.KeyStroke;

public class Default_KeymapChanges extends BaseKeymapChanges {
  public Default_KeymapChanges() {
    // simple 
    addSimpleShortcut("jetbrains.mps.lang.structure.pluginSolution.plugin.RenameConcept_Action", getShortcut("shift F6"));
    addSimpleShortcut("jetbrains.mps.lang.structure.pluginSolution.plugin.RenameLink_Action", getShortcut("shift F6"));
    addSimpleShortcut("jetbrains.mps.lang.structure.pluginSolution.plugin.RenameProperty_Action", getShortcut("shift F6"));
    addSimpleShortcut("jetbrains.mps.lang.structure.pluginSolution.plugin.ShowDefaultHelp_Action", getShortcut(" F1"));
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
