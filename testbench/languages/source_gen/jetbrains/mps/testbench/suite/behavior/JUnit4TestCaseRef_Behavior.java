package jetbrains.mps.testbench.suite.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.internal.collections.runtime.Sequence;
import jetbrains.mps.baseLanguage.behavior.Classifier_Behavior;
import jetbrains.mps.internal.collections.runtime.IWhereFilter;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.internal.collections.runtime.ISelector;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.internal.collections.runtime.ITranslator2;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.smodel.SModelUtil_new;
import jetbrains.mps.smodel.SReference;

public class JUnit4TestCaseRef_Behavior {
  public static void init(SNode thisNode) {
  }
  public static String virtual_fqClassName_2956932267233324537(SNode thisNode) {
    return BehaviorReflection.invokeVirtual(String.class, SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xd3c5a46fb8c247dbL, 0xad0a30b8f19c2055L, 0x3e81ed1e2be77cb8L, 0x3e81ed1e2be77cc1L, "klass")), "virtual_getUnitName_5067982036267369911", new Object[]{});
  }
  public static Iterable<String> virtual_testNames_4089647634160960707(SNode thisNode) {
    final SNode testAnn = SLinkOperations.getTarget(_quotation_createNode_856esj_a0a0a1(), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, 0x114a6b85d40L, "annotation"));
    final SNode ignoreAnn = SLinkOperations.getTarget(_quotation_createNode_856esj_a0a1a1(), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, 0x114a6b85d40L, "annotation"));

    return Sequence.fromIterable(Classifier_Behavior.call_methods_5292274854859311639(SLinkOperations.getTarget(thisNode, MetaAdapterFactory.getReferenceLink(0xd3c5a46fb8c247dbL, 0xad0a30b8f19c2055L, 0x3e81ed1e2be77cb8L, 0x3e81ed1e2be77cc1L, "klass")))).where(new IWhereFilter<SNode>() {
      public boolean accept(SNode m) {
        return ListSequence.fromList(SLinkOperations.getChildren(m, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6be947aL, 0x114a6beb0bdL, "annotation"))).any(new IWhereFilter<SNode>() {
          public boolean accept(SNode mann) {
            return SLinkOperations.getTarget(mann, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, 0x114a6b85d40L, "annotation")) == testAnn;
          }
        }) && !(ListSequence.fromList(SLinkOperations.getChildren(m, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6be947aL, 0x114a6beb0bdL, "annotation"))).any(new IWhereFilter<SNode>() {
          public boolean accept(SNode mann) {
            return SLinkOperations.getTarget(mann, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, 0x114a6b85d40L, "annotation")) == ignoreAnn;
          }
        }));
      }
    }).select(new ISelector<SNode, String>() {
      public String select(SNode m) {
        return SPropertyOperations.getString(m, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"));
      }
    });
  }
  public static Iterable<SNode> call_getTestClassesForModule_1514755338276096458(SAbstractConcept thisConcept, SNode module) {
    return Sequence.fromIterable(ModuleSuite_Behavior.call_models_1280144168199531863(module)).translate(new ITranslator2<SModel, SNode>() {
      public Iterable<SNode> translate(SModel it) {
        return ListSequence.fromList(SModelOperations.roots(((SModel) it), MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0xf8c108ca66L, "jetbrains.mps.baseLanguage.structure.ClassConcept"))).where(new IWhereFilter<SNode>() {
          public boolean accept(SNode it) {
            return Sequence.fromIterable(Classifier_Behavior.call_methods_5292274854859311639(it)).translate(new ITranslator2<SNode, SNode>() {
              public Iterable<SNode> translate(SNode m) {
                return SLinkOperations.getChildren(m, MetaAdapterFactory.getContainmentLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6be947aL, 0x114a6beb0bdL, "annotation"));
              }
            }).any(new IWhereFilter<SNode>() {
              public boolean accept(SNode ann) {
                return SLinkOperations.getTarget(ann, MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, 0x114a6b85d40L, "annotation")) == SLinkOperations.getTarget(_quotation_createNode_856esj_a0a0a0a0a0a0a0a0a0a0c(), MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, 0x114a6b85d40L, "annotation"));
              }
            });
          }
        });
      }
    });
  }
  private static SNode _quotation_createNode_856esj_a0a0a1() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, "jetbrains.mps.baseLanguage.structure.AnnotationInstance"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, 0x114a6b85d40L, "annotation"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, 0x114a6b85d40L, "annotation"), quotedNode_1, facade.createModelReference("83f155ff-422c-4b5a-a2f2-b459302dd215/java:org.junit(jetbrains.mps.baseLanguage.unitTest.libs/)"), facade.createNodeId("~Test")));
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_856esj_a0a1a1() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, "jetbrains.mps.baseLanguage.structure.AnnotationInstance"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, 0x114a6b85d40L, "annotation"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, 0x114a6b85d40L, "annotation"), quotedNode_1, facade.createModelReference("83f155ff-422c-4b5a-a2f2-b459302dd215/java:org.junit(jetbrains.mps.baseLanguage.unitTest.libs/)"), facade.createNodeId("~Ignore")));
    return quotedNode_1;
  }
  private static SNode _quotation_createNode_856esj_a0a0a0a0a0a0a0a0a0a0c() {
    PersistenceFacade facade = PersistenceFacade.getInstance();
    SNode quotedNode_1 = null;
    quotedNode_1 = SModelUtil_new.instantiateConceptDeclaration(MetaAdapterFactory.getConcept(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, "jetbrains.mps.baseLanguage.structure.AnnotationInstance"), null, null, false);
    quotedNode_1.setReference(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, 0x114a6b85d40L, "annotation"), SReference.create(MetaAdapterFactory.getReferenceLink(0xf3061a5392264cc5L, 0xa443f952ceaf5816L, 0x114a6b4ccabL, 0x114a6b85d40L, "annotation"), quotedNode_1, facade.createModelReference("83f155ff-422c-4b5a-a2f2-b459302dd215/java:org.junit(jetbrains.mps.baseLanguage.unitTest.libs/)"), facade.createNodeId("~Test")));
    return quotedNode_1;
  }
}
