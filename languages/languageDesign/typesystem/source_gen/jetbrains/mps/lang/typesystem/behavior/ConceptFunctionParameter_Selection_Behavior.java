package jetbrains.mps.lang.typesystem.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class ConceptFunctionParameter_Selection_Behavior {
  public static void init(SNode thisNode) {
  }
  public static SNode virtual_getType_2443692612523876968(SNode thisNode) {
    return _quotation_createNode_nuwy8d_a0a0();
  }
  private static SNode _quotation_createNode_nuwy8d_a0a0() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0x7a5dda6291404668L, 0xab76d5ed1746f2b2L, 0x611e7dc14a6926c8L, "jetbrains.mps.lang.typesystem.structure.SelectionType"), null, null, false);
    return quotedNode_1;
  }
}
