package jetbrains.mps.baseLanguage.regexp.runtime;

/*Generated by MPS */

import java.util.regex.Pattern;
import java.util.regex.Matcher;
import java.util.List;
import java.util.Arrays;

public class RegexpOperations {
  public RegexpOperations() {
  }
  public static String replace(String text, Pattern regexp, Replacer replacer) {
    Matcher m = regexp.matcher(text);
    StringBuilder newText = new StringBuilder();
    int current = 0;
    while (m.find()) {
      newText.append(text.substring(current, m.start()));
      newText.append(replacer.replace(m));
      current = m.end();
    }
    newText.append(text.substring(current, text.length()));
    return newText.toString();
  }
  public static List<String> split(String s, Pattern pattern) {
    return Arrays.asList(pattern.split(s));
  }
}
