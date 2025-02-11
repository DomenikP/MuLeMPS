package jetbrains.mps.baseLanguage.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import jetbrains.mps.textGen.SNodeTextGen;

public abstract class StringTextGen {
  public static void compilableString(String s, final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    String result = s;
    if (s.indexOf('"') >= 0 || s.indexOf('\n') >= 0 || s.indexOf('\r') >= 0) {
      boolean needsEscaping = false;
      for (int i = 0; i < s.length(); i++) {
        if (StringTextGen.isBadDoubleQuote(s, i, ctx) || result.charAt(i) == '\r' || result.charAt(i) == '\n') {
          needsEscaping = true;
          break;
        }
      }
      if (needsEscaping) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
          if (StringTextGen.isBadDoubleQuote(s, i, ctx)) {
            stringBuilder.append("\\\"");
          } else if (result.charAt(i) == '\r') {
            stringBuilder.append("\\r");
          } else if (result.charAt(i) == '\n') {
            stringBuilder.append("\\n");
          } else {
            stringBuilder.append(s.charAt(i));
          }
        }
        result = stringBuilder.toString();
      }
    }
    tgs.append(StringTextGen.replaceNonAsciiSymbolsWithUnicodeSymbols(result, ctx));
  }
  public static void compilableString(String s, SNodeTextGen ctx) {
    // method left for compile-time compatibility for generated textgen code (MPS 3.2). 
    // MPS compiles modules on start-up. If client keeps generated source code AND if an old TextGen  
    // references utility operations of MPS-supplied TextGen, existing sources won't compile without 
    // this method present. 
  }
  protected static boolean isBadDoubleQuote(String s, int i, final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    return s.charAt(i) == '"' && (i == 0 || s.charAt(i - 1) != '\\');
  }
  protected static String replaceNonAsciiSymbolsWithUnicodeSymbols(String s, final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    StringBuilder result = new StringBuilder();
    for (int i = 0; i < s.length(); i++) {
      if (s.charAt(i) < 128) {
        result.append(s.charAt(i));
      } else {
        result.append("\\u").append(StringTextGen.paddedHex(s.charAt(i), ctx));
      }
    }
    return result.toString();
  }
  protected static String paddedHex(char c, final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    String value = Integer.toString(c, 16);
    while (value.length() < 4) {
      value = "0" + value;
    }
    return value;
  }
}
