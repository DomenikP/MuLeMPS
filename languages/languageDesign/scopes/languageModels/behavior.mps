<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:82bd480c-456f-4470-ab12-9f4f3dd67824(jetbrains.mps.lang.scopes.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="-1" />
    <use id="d8f591ec-4d86-4af2-9f92-a9e93c803ffa" name="jetbrains.mps.lang.scopes" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="genb" ref="r:142fc2e9-fc09-4c4f-92d7-6ce0e3f66b61(jetbrains.mps.lang.scopes.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="6xgk" ref="r:6e9ad488-5df2-49e4-8c01-8a7f3812adf7(jetbrains.mps.lang.scopes.runtime)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
      <concept id="1172420572800" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3THzug" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="2AitiqbD8u5">
    <ref role="13h7C2" to="genb:2AitiqbD8u0" resolve="UniformScopeProvider" />
    <node concept="13hLZK" id="2AitiqbD8u6" role="13h7CW">
      <node concept="3clFbS" id="2AitiqbD8u7" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2AitiqbD8u8" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getScope" />
      <ref role="13i0hy" to="tpcu:3fifI_xCJOQ" resolve="getScope" />
      <node concept="3Tm1VV" id="2AitiqbD8u9" role="1B3o_S" />
      <node concept="3clFbS" id="2AitiqbD8ua" role="3clF47">
        <node concept="3clFbF" id="2AitiqbDaVF" role="3cqZAp">
          <node concept="BsUDl" id="2AitiqbDaVG" role="3clFbG">
            <ref role="37wK5l" node="2AitiqbD8uQ" resolve="getScope" />
            <node concept="37vLTw" id="2BHiRxgm8O8" role="37wK5m">
              <ref role="3cqZAo" node="2AitiqbD8ub" resolve="kind" />
            </node>
            <node concept="2YIFZM" id="2AitiqbDaVK" role="37wK5m">
              <ref role="1Pybhc" to="6xgk:2AitiqbD8uG" resolve="ScopeProviderContext" />
              <ref role="37wK5l" to="6xgk:2AitiqbD8vG" resolve="childContext" />
              <node concept="37vLTw" id="2BHiRxgm5KL" role="37wK5m">
                <ref role="3cqZAo" node="2AitiqbD8ud" resolve="context" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2AitiqbD8ub" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3THzug" id="2AitiqbD8uO" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AitiqbD8ud" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3Tqbb2" id="2AitiqbD8uP" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2AitiqbD8uN" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
    <node concept="13i0hz" id="2AitiqbD8uo" role="13h7CS">
      <property role="13i0iv" value="false" />
      <property role="13i0it" value="false" />
      <property role="TrG5h" value="getScope" />
      <ref role="13i0hy" to="tpcu:6GEzh_Hz_wK" resolve="getScope" />
      <node concept="3Tm1VV" id="2AitiqbD8up" role="1B3o_S" />
      <node concept="3clFbS" id="2AitiqbD8uq" role="3clF47">
        <node concept="3clFbF" id="2AitiqbDaVN" role="3cqZAp">
          <node concept="BsUDl" id="2AitiqbDaVO" role="3clFbG">
            <ref role="37wK5l" node="2AitiqbD8uQ" resolve="getScope" />
            <node concept="37vLTw" id="2BHiRxgkWi$" role="37wK5m">
              <ref role="3cqZAo" node="2AitiqbD8ur" resolve="kind" />
            </node>
            <node concept="2YIFZM" id="2AitiqbDaVS" role="37wK5m">
              <ref role="1Pybhc" to="6xgk:2AitiqbD8uG" resolve="ScopeProviderContext" />
              <ref role="37wK5l" to="6xgk:2AitiqbD8vU" resolve="rolePlusIndexContext" />
              <node concept="37vLTw" id="2BHiRxgmac9" role="37wK5m">
                <ref role="3cqZAo" node="2AitiqbD8ut" resolve="role" />
              </node>
              <node concept="37vLTw" id="2BHiRxgm7M6" role="37wK5m">
                <ref role="3cqZAo" node="2AitiqbD8uv" resolve="index" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2AitiqbD8ur" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3THzug" id="2AitiqbD8us" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AitiqbD8ut" role="3clF46">
        <property role="TrG5h" value="role" />
        <node concept="17QB3L" id="2AitiqbD8uu" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AitiqbD8uv" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="2AitiqbD8uw" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="2AitiqbD8ux" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
    <node concept="13i0hz" id="2AitiqbD8uQ" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getScope" />
      <node concept="3Tm1VV" id="2AitiqbD8uR" role="1B3o_S" />
      <node concept="3uibUv" id="2AitiqbD8uU" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
      <node concept="3clFbS" id="2AitiqbD8uT" role="3clF47" />
      <node concept="37vLTG" id="2AitiqbD8uV" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3THzug" id="2AitiqbD8uW" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2AitiqbD8uX" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="rNVCVLfPju" role="1tU5fm">
          <ref role="3uigEE" to="6xgk:2AitiqbD8uG" resolve="ScopeProviderContext" />
        </node>
      </node>
    </node>
  </node>
</model>

