package jetbrains.mps.core.xml.constraints;

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

public class XmlExternalId_Constraints extends BaseConstraintsDescriptor {
  public XmlExternalId_Constraints() {
    super(MetaIdFactory.conceptId(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x1d9c27c394f6033fL));
  }
  @Override
  protected Map<SPropertyId, PropertyConstraintsDescriptor> getNotDefaultSProperties() {
    Map<SPropertyId, PropertyConstraintsDescriptor> properties = new HashMap<SPropertyId, PropertyConstraintsDescriptor>();
    properties.put(MetaIdFactory.propId(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x1d9c27c394f6033fL, 0x1d9c27c394f60343L), new BasePropertyConstraintsDescriptor(MetaIdFactory.propId(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x1d9c27c394f6033fL, 0x1d9c27c394f60343L), this) {
      @Override
      public boolean hasOwnValidator() {
        return true;
      }
      @Override
      public boolean validateValue(SNode node, String propertyValue) {
        String propertyName = "publicId";
        return XmlNameUtil.isPublicId((SPropertyOperations.getString(propertyValue)));
      }
    });
    properties.put(MetaIdFactory.propId(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x1d9c27c394f6033fL, 0x1d9c27c394f60344L), new BasePropertyConstraintsDescriptor(MetaIdFactory.propId(0x479c7a8c02f943b5L, 0x9139d910cb22f298L, 0x1d9c27c394f6033fL, 0x1d9c27c394f60344L), this) {
      @Override
      public boolean hasOwnValidator() {
        return true;
      }
      @Override
      public boolean validateValue(SNode node, String propertyValue) {
        String propertyName = "systemId";
        return XmlNameUtil.isSystemId((SPropertyOperations.getString(propertyValue)));
      }
    });
    return properties;
  }
}
