package jetbrains.mps.baseLanguage.regexp.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class CharacterSymbolClassPart_Behavior {
  public static void init(SNode thisNode) {
  }
  public static String virtual_getRepresentation_8173814113624650482(SNode thisNode) {
    return SymbolClassPart_Behavior.call_escapeChar_8173814113624637238(thisNode, SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xdaafa647f1f74b0bL, 0xb09669cd7c8408c0L, 0x111791ae82fL, 0x111791b0b58L, "character")));
  }
}
