/*
 * Copyright 2003-2015 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor;

import com.intellij.ide.DataManager;
import com.intellij.ide.plugins.cl.PluginClassLoader;
import com.intellij.openapi.actionSystem.ActionManager;
import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.DataProvider;
import com.intellij.openapi.actionSystem.PlatformDataKeys;
import com.intellij.openapi.components.ProjectComponent;
import com.intellij.openapi.fileEditor.FileEditor;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.startup.StartupManager;
import com.intellij.openapi.wm.ToolWindowAnchor;
import com.intellij.ui.HyperlinkLabel;
import com.intellij.ui.LightColors;
import jetbrains.mps.ide.actions.MPSCommonDataKeys;
import jetbrains.mps.ide.icons.IdeIcons;
import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.ide.tools.BaseTool;
import jetbrains.mps.nodeEditor.inspector.InspectorEditorComponent;
import jetbrains.mps.openapi.editor.EditorInspector;
import jetbrains.mps.openapi.editor.style.StyleRegistry;
import jetbrains.mps.openapi.navigation.NavigationSupport;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.util.annotation.ToRemove;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeUtil;

import javax.swing.BorderFactory;
import javax.swing.JComponent;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.SwingUtilities;
import javax.swing.event.HyperlinkEvent;
import javax.swing.event.HyperlinkListener;
import java.awt.BorderLayout;
import java.awt.Color;

public class InspectorTool extends BaseTool implements EditorInspector, ProjectComponent {
  public static final String ID = "Inspector";

  private JPanel myComponent;
  private InspectorEditorComponent myInspectorComponent;
  private MyMessagePanel myMessagePanel;
  private FileEditor myFileEditor;

  public InspectorTool(Project project) {
    super(project, ID, amIInPlugin() ? -1 : 2, IdeIcons.INSPECTOR_ICON, ToolWindowAnchor.BOTTOM, true, false);
  }

  // Remove after fix of IDEA-127185 Switcher throws exception and stops working
  private static boolean amIInPlugin() {
    return InspectorTool.class.getClassLoader() instanceof PluginClassLoader;
  }

  @Override
  public void initComponent() {
    createTool();
    StartupManager.getInstance(getProject()).registerPostStartupActivity(new Runnable() {
      @Override
      public void run() {
        registerLater();
      }
    });
  }

  @Override
  public void disposeComponent() {
    if (myInspectorComponent == null) return;
    myInspectorComponent.dispose();
    unregister();
  }

  @Override
  public void projectOpened() {

  }

  @Override
  public void projectClosed() {

  }

  protected void createTool() {
    StartupManager.getInstance(getProject()).registerStartupActivity(new Runnable() {
      @Override
      public void run() {
        SwingUtilities.invokeLater(new Runnable() {
          @Override
          public void run() {
            InspectorTool.this.myMessagePanel = new MyMessagePanel();
            myComponent = new MyPanel();
            jetbrains.mps.project.Project project = ProjectHelper.toMPSProject(getProject());
            myInspectorComponent = new InspectorEditorComponent(project.getRepository());
            myComponent.add(myInspectorComponent.getExternalComponent(), BorderLayout.CENTER);
            myMessagePanel.setNode(null);
            myComponent.add(myMessagePanel, BorderLayout.NORTH);
            AnAction moveDownAction = ActionManager.getInstance().getAction("jetbrains.mps.ide.editor.actions.MoveElementsDown_Action");
            moveDownAction.registerCustomShortcutSet(moveDownAction.getShortcutSet(), myComponent);
            AnAction moveUpAction = ActionManager.getInstance().getAction("jetbrains.mps.ide.editor.actions.MoveElementsUp_Action");
            moveUpAction.registerCustomShortcutSet(moveUpAction.getShortcutSet(), myComponent);
          }
        });
      }
    });
  }

  @Override
  protected boolean isInitiallyAvailable() {
    return true;
  }

  @Override
  public void activate() {
    openTool(true);
  }

  public EditorComponent getInspector() {
    return myInspectorComponent;
  }

  @Override
  public JComponent getComponent() {
    return myComponent;
  }

  /**
   * @deprecated use {@link #inspect(SNode, FileEditor, String[])}  instead
   */
  @Deprecated
  @ToRemove(version = 3.3)
  public void inspect(SNode node, IOperationContext context, FileEditor fileEditor, String[] enabledHints) {
    inspect(node, fileEditor, enabledHints);
  }

  public void inspect(SNode node, FileEditor fileEditor, String[] enabledHints) {
    if (node instanceof jetbrains.mps.smodel.SNode && !SNodeUtil.isAccessible(node, myInspectorComponent.getRepository())) {
      // Note: inspector does not support disposed nodes. If we get one, just clear the tool.
      // The editor holds references to nodes between read actions and these references are updated asynchronously.
      // This means that sometimes an editor may give us an outdated node.
      node = null;
    }

    myFileEditor = fileEditor;
    myInspectorComponent.getUpdater().setInitialEditorHints(enabledHints);
    myInspectorComponent.editNode(node);
    myMessagePanel.setNode(node);
  }

  private class MyPanel extends JPanel implements DataProvider {
    private MyPanel() {
      super(new BorderLayout());
    }

    @Override
    @Nullable
    public Object getData(@NonNls String dataId) {
      if (MPSCommonDataKeys.FILE_EDITOR.getName().equals(dataId)) {
        return myFileEditor;
      }
      if (PlatformDataKeys.VIRTUAL_FILE.getName().equals(dataId) && myFileEditor != null) {
        return DataManager.getInstance().getDataContext(myFileEditor.getComponent()).getData(dataId);
      }
      if (PlatformDataKeys.HELP_ID.is(dataId)) {
        return "ideaInterface.editor.inspector";
      }
      return null;
    }
  }

  private class MyMessagePanel extends JPanel {
    private static final String NO_CONCEPT_MESSAGE = "<no node>";

    private JLabel myLabel = new JLabel();
    private HyperlinkLabel myOpenConceptLabel = new HyperlinkLabel("Open Concept Declaration");
    private SNode myNode;

    private MyMessagePanel() {
      setLayout(new BorderLayout());

      setBackground(StyleRegistry.getInstance().isDarkTheme() ? Color.LIGHT_GRAY : LightColors.YELLOW);
      setBorder(BorderFactory.createEmptyBorder(0, 4, 0, 4));

      myLabel.setForeground(StyleRegistry.getInstance().isDarkTheme() ? Color.DARK_GRAY : StyleRegistry.getInstance().getEditorForeground());

      add(myLabel, BorderLayout.CENTER);
      add(myOpenConceptLabel, BorderLayout.EAST);

      myOpenConceptLabel.setOpaque(false);
      myOpenConceptLabel.addHyperlinkListener(new HyperlinkListener() {
        @Override
        public void hyperlinkUpdate(HyperlinkEvent e) {
          if (myNode == null) {
            return;
          }
          final jetbrains.mps.project.Project mpsProject = ProjectHelper.toMPSProject(getProject());
          mpsProject.getModelAccess().runWriteInEDT(new Runnable() {
            @Override
            public void run() {
              SNode concept = myNode.getConcept().getDeclarationNode();
              if (concept != null) {
                NavigationSupport.getInstance().openNode(mpsProject, concept, true, false);
              }
            }
          });
        }
      });
    }

    public void setNode(SNode node) {
      myNode = node;
      if (node == null) {
        myLabel.setText(NO_CONCEPT_MESSAGE);
        myOpenConceptLabel.setVisible(false);
      } else {
        myLabel.setText(node.getConcept().getQualifiedName());
        myOpenConceptLabel.setVisible(true);
      }
    }
  }
}
