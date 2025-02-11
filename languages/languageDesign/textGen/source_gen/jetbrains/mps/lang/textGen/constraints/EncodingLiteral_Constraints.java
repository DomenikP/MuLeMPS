package jetbrains.mps.lang.textGen.constraints;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.base.BaseConstraintsDescriptor;
import jetbrains.mps.smodel.adapter.ids.MetaIdFactory;
import java.util.Map;
import jetbrains.mps.smodel.adapter.ids.SPropertyId;
import jetbrains.mps.smodel.runtime.PropertyConstraintsDescriptor;
import java.util.HashMap;
import jetbrains.mps.smodel.runtime.base.BasePropertyConstraintsDescriptor;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import java.nio.charset.Charset;

public class EncodingLiteral_Constraints extends BaseConstraintsDescriptor {
  public EncodingLiteral_Constraints() {
    super(MetaIdFactory.conceptId(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x63754d97e1c86b8cL));
  }
  @Override
  protected Map<SPropertyId, PropertyConstraintsDescriptor> getNotDefaultSProperties() {
    Map<SPropertyId, PropertyConstraintsDescriptor> properties = new HashMap<SPropertyId, PropertyConstraintsDescriptor>();
    properties.put(MetaIdFactory.propId(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x63754d97e1c86b8cL, 0x63754d97e1c86b8dL), new BasePropertyConstraintsDescriptor(MetaIdFactory.propId(0xb83431fe5c8f40bcL, 0x8a3665e25f4dd253L, 0x63754d97e1c86b8cL, 0x63754d97e1c86b8dL), this) {
      @Override
      public boolean hasOwnValidator() {
        return true;
      }
      @Override
      public boolean validateValue(SNode node, String propertyValue) {
        String propertyName = "encoding";
        if (isEmptyString(trim_p9uqyx_a0a0a1a1a0b0a1a1((SPropertyOperations.getString(propertyValue))))) {
          return false;
        }
        if ((SPropertyOperations.getString(propertyValue)).equals("binary")) {
          return true;
        }
        try {
          Charset.forName((SPropertyOperations.getString(propertyValue)));
          return true;
        } catch (IllegalArgumentException uc) {
          return false;
        }
      }
    });
    return properties;
  }
  private static boolean isEmptyString(String str) {
    return str == null || str.length() == 0;
  }
  public static String trim_p9uqyx_a0a0a1a1a0b0a1a1(String str) {
    return (str == null ? null : str.trim());
  }
}
