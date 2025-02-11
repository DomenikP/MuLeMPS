package jetbrains.mps.lang.structure.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;

public class EnumerationMemberDeclaration_Behavior {
  public static void init(SNode thisNode) {
  }
  public static String virtual_getPresentation_1213877396640(SNode thisNode) {
    if (SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xfc321331b2L, 0xfc5ee06664L, "externalValue")) != null) {
      return SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xfc321331b2L, 0xfc5ee06664L, "externalValue"));
    }
    return "<no external value>";
  }
  public static String call_getConstantName_1240164579791(SNode thisNode) {
    return NameUtil.toValidIdentifier(EnumerationMemberDeclaration_Behavior.call_getName_1240169660918(thisNode));
  }
  public static String call_getName_1240169660918(SNode thisNode) {
    SNode enumType = SNodeOperations.cast(SNodeOperations.getParent(thisNode), MetaAdapterFactory.getConcept(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xfc26875dfbL, "jetbrains.mps.lang.structure.structure.EnumerationDataTypeDeclaration"));
    if (SPropertyOperations.hasValue(enumType, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xfc26875dfbL, 0x116d5fed0c2L, "memberIdentifierPolicy"), "derive_from_internal_value", "derive_from_presentation")) {
      return SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xfc321331b2L, 0xfc5ee06663L, "internalValue"));
    }
    if (SPropertyOperations.hasValue(enumType, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xfc26875dfbL, 0x116d5fed0c2L, "memberIdentifierPolicy"), "derive_from_presentation", "derive_from_presentation")) {
      return SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xfc321331b2L, 0xfc5ee06664L, "externalValue"));
    }
    return SPropertyOperations.getString(thisNode, MetaAdapterFactory.getProperty(0xc72da2b97cce4447L, 0x8389f407dc1158b7L, 0xfc321331b2L, 0x1158fb58479L, "javaIdentifier"));
  }
}
