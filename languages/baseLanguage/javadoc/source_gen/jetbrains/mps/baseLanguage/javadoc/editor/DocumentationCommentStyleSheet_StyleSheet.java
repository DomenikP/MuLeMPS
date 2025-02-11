package jetbrains.mps.baseLanguage.javadoc.editor;

/*Generated by MPS */

import jetbrains.mps.openapi.editor.style.Style;
import jetbrains.mps.openapi.editor.cells.EditorCell;
import jetbrains.mps.editor.runtime.style.StyleAttributes;
import jetbrains.mps.nodeEditor.MPSFonts;
import jetbrains.mps.openapi.editor.style.StyleRegistry;
import jetbrains.mps.nodeEditor.MPSColors;
import jetbrains.mps.editor.runtime.style.StyleImpl;
import jetbrains.mps.baseLanguage.editor.BaseLanguageStyle_StyleSheet;

public class DocumentationCommentStyleSheet_StyleSheet {
  public static void apply_Comment(Style style, EditorCell editorCell) {
    style.set(StyleAttributes.FONT_STYLE, 0, MPSFonts.ITALIC);
    style.set(StyleAttributes.TEXT_COLOR, 0, StyleRegistry.getInstance().getSimpleColor(MPSColors.gray));
  }
  public static void apply_CommentTag(Style style, EditorCell editorCell) {
    {
      Style styleToPut;
      styleToPut = new StyleImpl();
      BaseLanguageStyle_StyleSheet.apply_JavaDocTag(styleToPut, editorCell);
      style.putAll(styleToPut, 0);
    }
  }
  public static void apply_CommentHTMLTag(Style style, EditorCell editorCell) {
    {
      Style styleToPut;
      styleToPut = new StyleImpl();
      DocumentationCommentStyleSheet_StyleSheet.apply_Comment(styleToPut, editorCell);
      style.putAll(styleToPut, 0);
    }
    style.set(StyleAttributes.FONT_STYLE, 0, MPSFonts.BOLD_ITALIC);
  }

}
