package jetbrains.mps.lang.core.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.scope.Scope;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;

public class ScopeProvider_Behavior {
  public static void init(SNode thisNode) {
  }
  public static Scope virtual_getScope_3734116213129936182(SNode thisNode, SNode kind, SNode child) {
    return null;
  }
  public static Scope virtual_getScope_7722139651431880752(SNode thisNode, SNode kind, String role, int index) {
    return BehaviorReflection.invokeVirtual(Scope.class, thisNode, "virtual_getScope_3734116213129936182", new Object[]{kind, null});
  }
}
