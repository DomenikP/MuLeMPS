package jetbrains.mps.transformation.test.inputLang.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.scope.Scope;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.scope.SimpleRoleScope;

public class RefTestMethod_Behavior {
  public static void init(SNode thisNode) {
  }
  public static Scope virtual_getScope_3734116213129936182(SNode thisNode, SNode kind, SNode child) {
    if (kind == MetaAdapterFactory.getConcept(0xab0ae915e3b54f35L, 0xb55ac655d649a03cL, 0x2e0420fbd0995e00L, "jetbrains.mps.transformation.test.inputLang.structure.RefTestParam").getDeclarationNode()) {
      return SimpleRoleScope.forNamedElements(thisNode, MetaAdapterFactory.getContainmentLink(0xab0ae915e3b54f35L, 0xb55ac655d649a03cL, 0x2e0420fbd0995dfeL, 0x2e0420fbd0995e40L, "params"));
    }
    return null;
  }
}
