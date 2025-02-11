package jetbrains.mps.baseLanguage.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.module.SModule;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.reloading.ReflectionUtil;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.model.SModel;

public class StaticFieldReference_Behavior {
  public static void init(SNode thisNode) {
  }
  public static Object virtual_eval_1213877519769(SNode thisNode, SModule module) {
    SNode classifier = SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940c80846L, 0x10a75869f9bL, "classifier"));
    SNode f = SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration"));

    SModule m = check_o8sx3d_a0d0a(SNodeOperations.getModel(f));
    if (m != null) {
      Object c = null;
      try {
        c = ReflectionUtil.getConstant(m, classifier, SPropertyOperations.getString(f, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")));
      } catch (Throwable t) {
        // do nothing 
      }
      if (c != null) {
        return c;
      }
    }
    return ReflectionUtil.getConstant(module, classifier, SPropertyOperations.getString(f, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")));
  }
  public static boolean virtual_isCompileTimeConstant_1238860258777(SNode thisNode) {
    return SPropertyOperations.getBoolean(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration")), MetaAdapterFactory.getProperty(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0x111f9e9f00cL, "isFinal"));
  }
  public static Object virtual_getCompileTimeConstantValue_1238860310638(SNode thisNode, SModule module) {
    SNode classifier = SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf940c80846L, 0x10a75869f9bL, "classifier"));
    if ((classifier != null) && SModelStereotype.isStubModelStereotype(SModelStereotype.getStereotype(SNodeOperations.getModel(classifier).getReference().getModelName()))) {
      return BehaviorReflection.invokeVirtual(Object.class, thisNode, "virtual_eval_1213877519769", new Object[]{module});
    } else {
      return (BehaviorReflection.invokeVirtual(Boolean.TYPE, SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer")), "virtual_isCompileTimeConstant_1238860258777", new Object[]{}) ? BehaviorReflection.invokeVirtual(Object.class, SLinkOperations.getTarget(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c77f1e98L, 0xf8cc6bf960L, "variableDeclaration")), MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c37a7f6eL, 0xf8c37f506eL, "initializer")), "virtual_getCompileTimeConstantValue_1238860310638", new Object[]{module}) : null);
    }
  }
  public static boolean virtual_lvalue_1262430001741497939(SAbstractConcept thisConcept) {
    return true;
  }
  private static SModule check_o8sx3d_a0d0a(SModel checkedDotOperand) {
    if (null != checkedDotOperand) {
      return checkedDotOperand.getModule();
    }
    return null;
  }
}
