<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:589e3942-2f2d-42a2-9312-986a1d3e2f7f(jetbrains.mps.build.mps.editor)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="0" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="kdzh" ref="r:0353b795-df17-4050-9687-ee47eeb7094f(jetbrains.mps.build.mps.structure)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="2txq" ref="r:2c8fa2a8-11a0-4729-bd56-47f702d30278(jetbrains.mps.build.mps.behavior)" />
    <import index="o2va" ref="r:00f69407-23a8-49a2-a236-9e89a32679aa(jetbrains.mps.build.editor)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="3ior" ref="r:e9081cad-d8c3-45f2-b4ad-1dabd5ff82af(jetbrains.mps.build.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="ot6o" ref="r:1267752b-a233-4432-a848-3e68e0ea0db1(jetbrains.mps.build.workflow.editor)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326896143883" name="jetbrains.mps.lang.editor.structure.CellKeyMap_FunctionParm_selectedNode" flags="nn" index="0GJ7k" />
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1164052439493" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_MatchingText" flags="in" index="6VE3a" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="1136916919141" name="jetbrains.mps.lang.editor.structure.CellKeyMapItem" flags="lg" index="2PxR9H">
        <child id="1136916998332" name="keystroke" index="2PyaAO" />
        <child id="1136917325338" name="isApplicableFunction" index="2Pzqsi" />
        <child id="1136920925604" name="executeFunction" index="2PL9iG" />
      </concept>
      <concept id="1136916976737" name="jetbrains.mps.lang.editor.structure.CellKeyMapKeystroke" flags="ng" index="2Py5lD">
        <property id="1136923970224" name="keycode" index="2PWKIS" />
      </concept>
      <concept id="1136917249679" name="jetbrains.mps.lang.editor.structure.CellKeyMap_IsApplicableFunction" flags="in" index="2Pz7Y7" />
      <concept id="1136917288805" name="jetbrains.mps.lang.editor.structure.CellKeyMap_ExecuteFunction" flags="in" index="2PzhpH" />
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1164914519156" name="jetbrains.mps.lang.editor.structure.CellMenuPart_ReplaceNode_CustomNodeConcept" flags="ng" index="UkePV">
        <reference id="1164914727930" name="replacementConcept" index="Ul1FP" />
      </concept>
      <concept id="1214320119173" name="jetbrains.mps.lang.editor.structure.SideTransformAnchorTagStyleClassItem" flags="ln" index="2V7CMv">
        <property id="1214320119174" name="tag" index="2V7CMs" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186414949600" name="jetbrains.mps.lang.editor.structure.AutoDeletableStyleClassItem" flags="ln" index="VPRnO" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1081293058843" name="jetbrains.mps.lang.editor.structure.CellKeyMapDeclaration" flags="ig" index="325Ffw">
        <reference id="1139445935125" name="applicableConcept" index="1chiOs" />
        <child id="1136930944870" name="item" index="2QnnpI" />
      </concept>
      <concept id="1165253627126" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup" flags="ng" index="1exORT">
        <property id="1165254125954" name="presentation" index="1ezIyd" />
        <child id="1165253890469" name="parameterObjectType" index="1eyP2E" />
        <child id="1165254159533" name="matchingTextFunction" index="1ezQQy" />
      </concept>
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1165420413719" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Group" flags="ng" index="1ou48o">
        <child id="1165420413721" name="handlerFunction" index="1ou48m" />
        <child id="1165420413720" name="parametersFunction" index="1ou48n" />
      </concept>
      <concept id="1165420626554" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Generic_Group_Handler" flags="in" index="1ouSdP" />
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1075375595203" name="jetbrains.mps.lang.editor.structure.CellModel_Error" flags="sg" stub="8104358048506729356" index="1xolST">
        <property id="1075375595204" name="text" index="1xolSY" />
      </concept>
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1215007883204" name="jetbrains.mps.lang.editor.structure.PaddingLeftStyleClassItem" flags="ln" index="3$7fVu" />
      <concept id="1215007897487" name="jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem" flags="ln" index="3$7jql" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <reference id="1081339532145" name="keyMap" index="34QXea" />
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1160590353935" name="usesFolding" index="S$Qs1" />
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1082639509531" name="nullText" index="ilYzB" />
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1163613035599" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_Query" flags="in" index="3GJtP1" />
      <concept id="1163613549566" name="jetbrains.mps.lang.editor.structure.CellMenuPart_AbstractGroup_parameterObject" flags="nn" index="3GLrbK" />
      <concept id="1163613822479" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Abstract_editedNode" flags="nn" index="3GMtW1" />
      <concept id="625126330682908270" name="jetbrains.mps.lang.editor.structure.CellModel_ReferencePresentation" flags="sg" stub="730538219795961225" index="3SHvHV" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138661924179" name="jetbrains.mps.lang.smodel.structure.Property_SetOperation" flags="nn" index="tyxLq">
        <child id="1138662048170" name="value" index="tz02z" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1143512015885" name="jetbrains.mps.lang.smodel.structure.Node_GetNextSiblingOperation" flags="nn" index="YCak7" />
      <concept id="1240170042401" name="jetbrains.mps.lang.smodel.structure.SEnumMemberType" flags="in" index="2ZThk1">
        <reference id="1240170836027" name="enum" index="2ZWj4r" />
      </concept>
      <concept id="1240173327827" name="jetbrains.mps.lang.smodel.structure.EnumMember_NameOperation" flags="nn" index="305NjN" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1240930118027" name="jetbrains.mps.lang.smodel.structure.SEnumOperationInvocation" flags="nn" index="3HcIyF">
        <reference id="1240930118028" name="enumDeclaration" index="3HcIyG" />
        <child id="1240930317927" name="operation" index="3Hdvt7" />
      </concept>
      <concept id="1240930444980" name="jetbrains.mps.lang.smodel.structure.SEnum_MembersOperation" flags="ng" index="3HdYuk" />
      <concept id="1240930444945" name="jetbrains.mps.lang.smodel.structure.SEnum_MemberOperation" flags="ng" index="3HdYuL">
        <reference id="1240930444946" name="member" index="3HdYuM" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="4zCbl23cwNq">
    <property role="3GE5qa" value="Project" />
    <ref role="1XX52x" to="kdzh:2L4pT56gD3R" resolve="BuildMps_Solution" />
    <node concept="3EZMnI" id="5gfUUDxhec9" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhY1v" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="1k5W1q" to="o2va:16Vg0jOctJb" resolve="projectPartKeyword" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="OXEIz" id="2wdLO7KhY1w" role="P5bDN">
          <node concept="UkePV" id="2wdLO7KhY1x" role="OY2wv">
            <ref role="Ul1FP" to="3ior:6qcrfIJFdK8" resolve="BuildProjectPart" />
          </node>
        </node>
        <node concept="VPxyj" id="2wdLO7KhY1y" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="5gfUUDxhece" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3EZMnI" id="50RHf4RGL53" role="3EZMnx">
        <node concept="VPM3Z" id="50RHf4RGL54" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="2L4pT56hcY3" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <node concept="11LMrY" id="2L4pT56hcY8" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="2L4pT56gD45" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:hS0KzPOSqb" resolve="uuid" />
        </node>
        <node concept="3F0ifn" id="2L4pT56hcY6" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <node concept="11L4FC" id="2L4pT56hcYa" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2V7CMv" id="2L4pT56heD5" role="3F10Kt">
            <property role="2V7CMs" value="ext_3_RTransform" />
          </node>
          <node concept="VPxyj" id="2L4pT56hn2$" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="50RHf4RGL56" role="2iSdaV" />
        <node concept="pkWqt" id="50RHf4RGL57" role="pqm2j">
          <node concept="3clFbS" id="50RHf4RGL58" role="2VODD2">
            <node concept="3clFbF" id="7gAtt1jue__" role="3cqZAp">
              <node concept="3fqX7Q" id="7gAtt1jue_A" role="3clFbG">
                <node concept="2OqwBi" id="hS0KzPOz4e" role="3fr31v">
                  <node concept="pncrf" id="7gAtt1jue_C" role="2Oq$k0" />
                  <node concept="2qgKlT" id="7gAtt1jue$y" role="2OqNvi">
                    <ref role="37wK5l" to="2txq:7gAtt1ju6Jy" resolve="isCompact" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="2L4pT56hn2m" role="3EZMnx">
        <node concept="lj46D" id="2H0oDdxIG2w" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="2H0oDdxIG2x" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="2H0oDdxIG2y" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="2L4pT56hn2n" role="3EZMnx">
          <property role="3F0ifm" value="load from" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="l2Vlx" id="2L4pT56hn2o" role="2iSdaV" />
        <node concept="3F1sOY" id="2L4pT56hn2p" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:hS0KzPP7W_" />
        </node>
        <node concept="pkWqt" id="2L4pT56hn2q" role="pqm2j">
          <node concept="3clFbS" id="2L4pT56hn2r" role="2VODD2">
            <node concept="3clFbF" id="2L4pT56hn2s" role="3cqZAp">
              <node concept="2OqwBi" id="2L4pT56hn2t" role="3clFbG">
                <node concept="2OqwBi" id="2L4pT56hn2u" role="2Oq$k0">
                  <node concept="pncrf" id="2L4pT56hn2v" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2L4pT56hn2w" role="2OqNvi">
                    <ref role="3Tt5mk" to="kdzh:hS0KzPP7W_" />
                  </node>
                </node>
                <node concept="3x8VRR" id="2L4pT56hn2x" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="2oUTXgLAgcI" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <node concept="l2Vlx" id="2oUTXgLAgcJ" role="2iSdaV" />
        <node concept="3F0ifn" id="2oUTXgLAgcE" role="3EZMnx">
          <property role="3F0ifm" value="content:" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          <node concept="2V7CMv" id="1jjYQYSiQXX" role="3F10Kt">
            <property role="2V7CMs" value="ext_4_RTransform" />
          </node>
        </node>
        <node concept="3F0ifn" id="1jjYQYSiQXP" role="3EZMnx">
          <property role="3F0ifm" value="(do not compile)" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          <ref role="1ERwB7" node="1jjYQYSiQZf" resolve="delete_doNotCompile" />
          <node concept="pkWqt" id="1jjYQYSiQXQ" role="pqm2j">
            <node concept="3clFbS" id="1jjYQYSiQXR" role="2VODD2">
              <node concept="3clFbF" id="1jjYQYSiQXS" role="3cqZAp">
                <node concept="2OqwBi" id="1jjYQYSiQXT" role="3clFbG">
                  <node concept="pncrf" id="1jjYQYSiQXU" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1jjYQYSiQXV" role="2OqNvi">
                    <ref role="3TsBF5" to="kdzh:1jjYQYSiGok" resolve="doNotCompile" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="pVoyu" id="1s8OwvM52kE" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="1s8OwvM52kD" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="PMmxH" id="6ogfLD6h$Qu" role="3EZMnx">
          <ref role="PMmxG" node="6ogfLD6h$PE" resolve="SourcesKindComponent" />
          <node concept="pVoyu" id="6ogfLD6qrY5" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="6ogfLD6qrY6" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="lj46D" id="2oUTXgLAgcK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="4zlO3QTamhe" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F2HdR" id="6qcrfIJFdLE" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:4zCbl23d1OL" />
          <node concept="l2Vlx" id="2oUTXgLA9qN" role="2czzBx" />
          <node concept="lj46D" id="6qcrfIJFdLH" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="6qcrfIJFs6v" role="2czzBI">
            <property role="ilYzB" value="&lt;no sources&gt;" />
            <node concept="VPxyj" id="34DbxDwRWRJ" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="ljvvj" id="2oUTXgLA9qK" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pj6Ft" id="2oUTXgLA9qP" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pVoyu" id="1jjYQYSiQXN" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="2oUTXgLAgcN" role="3EZMnx">
          <property role="3F0ifm" value="dependencies:" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          <node concept="ljvvj" id="2oUTXgLAgcO" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="2oUTXgLA9qI" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:4zCbl23d1MS" />
          <node concept="pj6Ft" id="2oUTXgLA9qR" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="2oUTXgLA9qL" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="l2Vlx" id="2oUTXgLA9qM" role="2czzBx" />
          <node concept="3F0ifn" id="45NBnUB353h" role="2czzBI">
            <property role="3F0ifm" value="" />
            <property role="ilYzB" value="&lt;no dependencies&gt;" />
            <node concept="VPxyj" id="34DbxDwRWRK" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="pVoyu" id="2L4pT56hn2y" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="50RHf4RGL2o" role="pqm2j">
          <node concept="3clFbS" id="50RHf4RGL2p" role="2VODD2">
            <node concept="3clFbF" id="7gAtt1jue_E" role="3cqZAp">
              <node concept="3fqX7Q" id="7gAtt1jue_F" role="3clFbG">
                <node concept="2OqwBi" id="7gAtt1jue_H" role="3fr31v">
                  <node concept="pncrf" id="7gAtt1jue_I" role="2Oq$k0" />
                  <node concept="2qgKlT" id="7gAtt1jue_J" role="2OqNvi">
                    <ref role="37wK5l" to="2txq:7gAtt1ju6Jy" resolve="isCompact" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5gfUUDxhecq" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="pVoyu" id="50RHf4RGOan" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="5gfUUDxhecb" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="50RHf4RGL5Q" role="6VMZX">
      <node concept="2iRkQZ" id="50RHf4RGL5R" role="2iSdaV" />
      <node concept="pkWqt" id="50RHf4RGL5S" role="pqm2j">
        <node concept="3clFbS" id="50RHf4RGL5T" role="2VODD2">
          <node concept="3clFbF" id="7gAtt1jue_K" role="3cqZAp">
            <node concept="2OqwBi" id="7gAtt1jue_L" role="3clFbG">
              <node concept="pncrf" id="7gAtt1jue_M" role="2Oq$k0" />
              <node concept="2qgKlT" id="7gAtt1jue_N" role="2OqNvi">
                <ref role="37wK5l" to="2txq:7gAtt1ju6Jy" resolve="isCompact" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="50RHf4RGL6A" role="3EZMnx">
        <node concept="l2Vlx" id="50RHf4RGL6B" role="2iSdaV" />
        <node concept="VPM3Z" id="50RHf4RGL6C" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="50RHf4RGL6D" role="3EZMnx">
          <property role="3F0ifm" value="uuid:" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F0A7n" id="50RHf4RGL6F" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:hS0KzPOSqb" resolve="uuid" />
        </node>
      </node>
      <node concept="3EZMnI" id="50RHf4RGL6H" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <node concept="l2Vlx" id="50RHf4RGL6I" role="2iSdaV" />
        <node concept="3F0ifn" id="1jjYQYSiNlM" role="3EZMnx">
          <property role="3F0ifm" value="content:" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          <node concept="2V7CMv" id="1jjYQYSiQXY" role="3F10Kt">
            <property role="2V7CMs" value="ext_4_RTransform" />
          </node>
        </node>
        <node concept="3F0ifn" id="1jjYQYSiQXl" role="3EZMnx">
          <property role="3F0ifm" value="(do not compile)" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          <ref role="1ERwB7" node="1jjYQYSiQZf" resolve="delete_doNotCompile" />
          <node concept="pkWqt" id="1jjYQYSiQXm" role="pqm2j">
            <node concept="3clFbS" id="1jjYQYSiQXn" role="2VODD2">
              <node concept="3clFbF" id="1jjYQYSiQXo" role="3cqZAp">
                <node concept="2OqwBi" id="1jjYQYSiQXE" role="3clFbG">
                  <node concept="pncrf" id="1jjYQYSiQXp" role="2Oq$k0" />
                  <node concept="3TrcHB" id="1jjYQYSiQXK" role="2OqNvi">
                    <ref role="3TsBF5" to="kdzh:1jjYQYSiGok" resolve="doNotCompile" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="pVoyu" id="1s8OwvM52k$" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="1s8OwvM52kA" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="PMmxH" id="6ogfLD6h$Tv" role="3EZMnx">
          <ref role="PMmxG" node="6ogfLD6h$PE" resolve="SourcesKindComponent" />
          <node concept="pVoyu" id="6ogfLD6qqUs" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="6ogfLD6qqUt" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="lj46D" id="50RHf4RGL6L" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="50RHf4RGL6M" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F2HdR" id="50RHf4RGL6N" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:4zCbl23d1OL" />
          <node concept="l2Vlx" id="50RHf4RGL6O" role="2czzBx" />
          <node concept="lj46D" id="50RHf4RGL6P" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="50RHf4RGL6Q" role="2czzBI">
            <property role="ilYzB" value="&lt;no sources&gt;" />
            <node concept="VPxyj" id="50RHf4RGL6R" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="ljvvj" id="50RHf4RGL6S" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pj6Ft" id="50RHf4RGL6T" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pVoyu" id="1jjYQYSiQXj" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="50RHf4RGL6U" role="3EZMnx">
          <property role="3F0ifm" value="dependencies:" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          <node concept="ljvvj" id="50RHf4RGL6V" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="50RHf4RGL6W" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:4zCbl23d1MS" />
          <node concept="pj6Ft" id="50RHf4RGL6X" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="50RHf4RGL6Y" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="l2Vlx" id="50RHf4RGL6Z" role="2czzBx" />
          <node concept="3F0ifn" id="50RHf4RGL70" role="2czzBI">
            <property role="3F0ifm" value="" />
            <property role="ilYzB" value="&lt;no dependencies&gt;" />
            <node concept="VPxyj" id="50RHf4RGL71" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="pVoyu" id="50RHf4RGL72" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4zCbl23d1MV">
    <property role="3GE5qa" value="Project.Deps" />
    <ref role="1XX52x" to="kdzh:4zCbl23db4q" resolve="BuildMps_ModuleDependencyOnModule" />
    <node concept="3EZMnI" id="4zCbl23d1N2" role="2wV5jI">
      <node concept="l2Vlx" id="4zCbl23d1N3" role="2iSdaV" />
      <node concept="1iCGBv" id="4zCbl23d1MX" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:4zCbl23d1MT" />
        <node concept="1sVBvm" id="4zCbl23d1MY" role="1sWHZn">
          <node concept="3F0A7n" id="4zCbl23d1N0" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
        <node concept="2V7CMv" id="4zCbl23d1Nv" role="3F10Kt">
          <property role="2V7CMs" value="ext_2_RTransform" />
        </node>
      </node>
      <node concept="3F0ifn" id="4zCbl23d1N5" role="3EZMnx">
        <property role="3F0ifm" value="(reexport)" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        <ref role="1ERwB7" node="2L4pT56h7FT" resolve="delete_moduleDepReexport" />
        <node concept="pkWqt" id="4zCbl23d1N6" role="pqm2j">
          <node concept="3clFbS" id="4zCbl23d1N7" role="2VODD2">
            <node concept="3clFbF" id="4zCbl23d1N8" role="3cqZAp">
              <node concept="2OqwBi" id="4zCbl23d1No" role="3clFbG">
                <node concept="pncrf" id="4zCbl23d1N9" role="2Oq$k0" />
                <node concept="3TrcHB" id="4zCbl23db4s" role="2OqNvi">
                  <ref role="3TsBF5" to="kdzh:4zCbl23d1N1" resolve="reexport" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2L4pT56gSBT">
    <property role="3GE5qa" value="Project.Runtime" />
    <ref role="1XX52x" to="kdzh:2L4pT56gSBR" resolve="BuildMps_ModuleRuntime" />
    <node concept="1xolST" id="2fhrLKARgMY" role="2wV5jI">
      <property role="1xolSY" value="&lt;no runtime&gt;" />
      <node concept="3$7fVu" id="2fhrLKARgOD" role="3F10Kt">
        <property role="3$6WeP" value="0" />
      </node>
      <node concept="3$7jql" id="2fhrLKARgQm" role="3F10Kt">
        <property role="3$6WeP" value="0" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2L4pT56gUd6">
    <property role="3GE5qa" value="Project.Sources" />
    <ref role="1XX52x" to="kdzh:4zCbl23d1OJ" resolve="BuildMps_ModuleSource" />
    <node concept="1xolST" id="2fhrLKARgcb" role="2wV5jI">
      <property role="1xolSY" value="&lt;no source&gt;" />
      <node concept="3$7fVu" id="2fhrLKARgdQ" role="3F10Kt">
        <property role="3$6WeP" value="0" />
      </node>
      <node concept="3$7jql" id="2fhrLKARgfz" role="3F10Kt">
        <property role="3$6WeP" value="0" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2L4pT56gUe4">
    <property role="3GE5qa" value="Project.Deps" />
    <ref role="1XX52x" to="kdzh:4zCbl23d1MR" resolve="BuildMps_ModuleDependency" />
    <node concept="1xolST" id="2fhrLKARhYA" role="2wV5jI">
      <property role="1xolSY" value="&lt;no dependency&gt;" />
      <node concept="3$7fVu" id="2fhrLKARi0h" role="3F10Kt">
        <property role="3$6WeP" value="0" />
      </node>
      <node concept="3$7jql" id="2fhrLKARi1Y" role="3F10Kt">
        <property role="3$6WeP" value="0" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2L4pT56gVSx">
    <property role="3GE5qa" value="Project.Sources" />
    <ref role="1XX52x" to="kdzh:4zCbl23dbRE" resolve="BuildMps_ModuleJavaSource" />
    <node concept="3EZMnI" id="5bqm540QUpr" role="2wV5jI">
      <node concept="l2Vlx" id="5bqm540QUps" role="2iSdaV" />
      <node concept="3F1sOY" id="2L4pT56gVSz" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:4zCbl23dbRG" />
      </node>
      <node concept="3F0ifn" id="5bqm540QUpu" role="3EZMnx">
        <property role="3F0ifm" value="(generated)" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        <node concept="pkWqt" id="5bqm540QUpw" role="pqm2j">
          <node concept="3clFbS" id="5bqm540QUpx" role="2VODD2">
            <node concept="3clFbF" id="5bqm540QUpy" role="3cqZAp">
              <node concept="2OqwBi" id="5bqm540QUpS" role="3clFbG">
                <node concept="pncrf" id="5bqm540QUpz" role="2Oq$k0" />
                <node concept="3TrcHB" id="5bqm540QUpY" role="2OqNvi">
                  <ref role="3TsBF5" to="kdzh:5bqm540QUpq" resolve="isGenerated" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="5bqm540QUpZ" role="6VMZX">
      <node concept="l2Vlx" id="5bqm540QUq0" role="2iSdaV" />
      <node concept="3F0ifn" id="5bqm540QUq1" role="3EZMnx">
        <property role="3F0ifm" value="generated:" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
      </node>
      <node concept="3F0A7n" id="5bqm540QUq3" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:5bqm540QUpq" resolve="isGenerated" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2L4pT56gVS_">
    <property role="3GE5qa" value="Project" />
    <ref role="1XX52x" to="kdzh:2L4pT56gD3S" resolve="BuildMps_Language" />
    <node concept="3EZMnI" id="7YI57w6h2Ka" role="6VMZX">
      <node concept="3EZMnI" id="7YI57w6h4tE" role="3EZMnx">
        <node concept="3EZMnI" id="50RHf4RGQSg" role="3EZMnx">
          <node concept="l2Vlx" id="50RHf4RGQSh" role="2iSdaV" />
          <node concept="VPM3Z" id="50RHf4RGQSi" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="lj46D" id="7YI57w6hjy$" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="50RHf4RGQSj" role="3EZMnx">
            <property role="3F0ifm" value="uuid:" />
            <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          </node>
          <node concept="3F0A7n" id="50RHf4RGQSk" role="3EZMnx">
            <ref role="1NtTu8" to="kdzh:hS0KzPOSqb" resolve="uuid" />
          </node>
        </node>
        <node concept="3EZMnI" id="50RHf4RGQSl" role="3EZMnx">
          <property role="S$Qs1" value="true" />
          <node concept="l2Vlx" id="50RHf4RGQSm" role="2iSdaV" />
          <node concept="3F0ifn" id="50RHf4RGQSn" role="3EZMnx">
            <property role="3F0ifm" value="content:" />
            <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
            <node concept="ljvvj" id="50RHf4RGQSo" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="lj46D" id="50RHf4RGQSp" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="VPM3Z" id="50RHf4RGQSq" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F2HdR" id="50RHf4RGQSr" role="3EZMnx">
            <ref role="1NtTu8" to="kdzh:4zCbl23d1OL" />
            <node concept="l2Vlx" id="50RHf4RGQSs" role="2czzBx" />
            <node concept="lj46D" id="50RHf4RGQSt" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="3F0ifn" id="50RHf4RGQSu" role="2czzBI">
              <property role="ilYzB" value="&lt;no sources&gt;" />
              <node concept="VPxyj" id="50RHf4RGQSv" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
            <node concept="ljvvj" id="50RHf4RGQSw" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="pj6Ft" id="50RHf4RGQSx" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="50RHf4RGQSy" role="3EZMnx">
            <property role="3F0ifm" value="dependencies:" />
            <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
            <node concept="ljvvj" id="50RHf4RGQSz" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F2HdR" id="50RHf4RGQS$" role="3EZMnx">
            <ref role="1NtTu8" to="kdzh:4zCbl23d1MS" />
            <node concept="pj6Ft" id="50RHf4RGQS_" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="lj46D" id="50RHf4RGQSA" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="l2Vlx" id="50RHf4RGQSB" role="2czzBx" />
            <node concept="3F0ifn" id="50RHf4RGQSC" role="2czzBI">
              <property role="3F0ifm" value="" />
              <property role="ilYzB" value="&lt;no dependencies&gt;" />
              <node concept="VPxyj" id="50RHf4RGQSD" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
          </node>
          <node concept="3F0ifn" id="50RHf4RGQSF" role="3EZMnx">
            <property role="3F0ifm" value="runtime:" />
            <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
            <node concept="ljvvj" id="50RHf4RGQSG" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F2HdR" id="50RHf4RGQSH" role="3EZMnx">
            <ref role="1NtTu8" to="kdzh:2L4pT56gVS$" />
            <node concept="pj6Ft" id="50RHf4RGQSI" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="lj46D" id="50RHf4RGQSJ" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="l2Vlx" id="50RHf4RGQSK" role="2czzBx" />
            <node concept="3F0ifn" id="50RHf4RGQSL" role="2czzBI">
              <property role="3F0ifm" value="" />
              <property role="ilYzB" value="&lt;no runtime&gt;" />
              <node concept="VPxyj" id="50RHf4RGQSM" role="3F10Kt">
                <property role="VOm3f" value="true" />
              </node>
            </node>
          </node>
          <node concept="pVoyu" id="50RHf4RGQSE" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="7YI57w6h4tJ" role="2iSdaV" />
        <node concept="pkWqt" id="7YI57w6h4Pq" role="pqm2j">
          <node concept="3clFbS" id="7YI57w6h4Pr" role="2VODD2">
            <node concept="3clFbF" id="7YI57w6h4PQ" role="3cqZAp">
              <node concept="2OqwBi" id="7YI57w6h50C" role="3clFbG">
                <node concept="2qgKlT" id="7YI57w6hixA" role="2OqNvi">
                  <ref role="37wK5l" to="2txq:7gAtt1ju6Jy" resolve="isCompact" />
                </node>
                <node concept="pncrf" id="7YI57w6h4PP" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7YI57w6hkbl" role="3EZMnx">
        <property role="3F0ifm" value="generator:" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        <node concept="ljvvj" id="7YI57w6hkbm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="7YI57w6hkxX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="7YI57w6hngQ" role="3EZMnx">
        <node concept="3F1sOY" id="7YI57w6hnWm" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:7YI57w6gNwB" />
          <node concept="lj46D" id="7YI57w6jdfU" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="lj46D" id="7YI57w6hnjZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="7YI57w6hngV" role="2iSdaV" />
      </node>
      <node concept="l2Vlx" id="7YI57w6h2Kb" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="2L4pT56gVSB" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhY2z" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="1k5W1q" to="o2va:16Vg0jOctJb" resolve="projectPartKeyword" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="OXEIz" id="2wdLO7KhY2$" role="P5bDN">
          <node concept="UkePV" id="2wdLO7KhY2_" role="OY2wv">
            <ref role="Ul1FP" to="3ior:6qcrfIJFdK8" resolve="BuildProjectPart" />
          </node>
        </node>
        <node concept="VPxyj" id="2wdLO7KhY2A" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="2L4pT56heCZ" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3EZMnI" id="50RHf4RGQRG" role="3EZMnx">
        <node concept="VPM3Z" id="50RHf4RGQRH" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="50RHf4RGQRI" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <node concept="11LMrY" id="50RHf4RGQRJ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="50RHf4RGQRK" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:hS0KzPOSqb" resolve="uuid" />
        </node>
        <node concept="3F0ifn" id="50RHf4RGQRL" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <node concept="11L4FC" id="50RHf4RGQRM" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2V7CMv" id="50RHf4RGQRN" role="3F10Kt">
            <property role="2V7CMs" value="ext_3_RTransform" />
          </node>
          <node concept="VPxyj" id="50RHf4RGQRO" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="50RHf4RGQRP" role="2iSdaV" />
        <node concept="pkWqt" id="50RHf4RGQRQ" role="pqm2j">
          <node concept="3clFbS" id="50RHf4RGQRR" role="2VODD2">
            <node concept="3clFbF" id="7gAtt1jue_P" role="3cqZAp">
              <node concept="3fqX7Q" id="7gAtt1jue_Q" role="3clFbG">
                <node concept="2OqwBi" id="7gAtt1jue_S" role="3fr31v">
                  <node concept="pncrf" id="7gAtt1jue_T" role="2Oq$k0" />
                  <node concept="2qgKlT" id="7gAtt1jue_U" role="2OqNvi">
                    <ref role="37wK5l" to="2txq:7gAtt1ju6Jy" resolve="isCompact" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="2L4pT56hg4u" role="3EZMnx">
        <node concept="3F0ifn" id="2L4pT56hg4v" role="3EZMnx">
          <property role="3F0ifm" value="load from" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="2L4pT56hg4x" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:hS0KzPP7W_" />
        </node>
        <node concept="l2Vlx" id="2L4pT56hg4w" role="2iSdaV" />
        <node concept="pkWqt" id="2L4pT56hg4z" role="pqm2j">
          <node concept="3clFbS" id="2L4pT56hg4$" role="2VODD2">
            <node concept="3clFbF" id="2L4pT56hg4_" role="3cqZAp">
              <node concept="2OqwBi" id="2L4pT56hg4A" role="3clFbG">
                <node concept="2OqwBi" id="2L4pT56hg4B" role="2Oq$k0">
                  <node concept="pncrf" id="2L4pT56hg4C" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2L4pT56hg4D" role="2OqNvi">
                    <ref role="3Tt5mk" to="kdzh:hS0KzPP7W_" />
                  </node>
                </node>
                <node concept="3x8VRR" id="2L4pT56hg4E" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="lj46D" id="hS0KzPP_Y4" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="hS0KzPPDn9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="hS0KzPP_Yb" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="2L4pT56gVSK" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <node concept="l2Vlx" id="2L4pT56gVSL" role="2iSdaV" />
        <node concept="3F0ifn" id="2L4pT56gVSM" role="3EZMnx">
          <property role="3F0ifm" value="content:" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          <node concept="ljvvj" id="2L4pT56gVSN" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="lj46D" id="2L4pT56gVSO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="2L4pT56gVSP" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F2HdR" id="2L4pT56gVSQ" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:4zCbl23d1OL" />
          <node concept="l2Vlx" id="2L4pT56gVSR" role="2czzBx" />
          <node concept="lj46D" id="2L4pT56gVSS" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="2L4pT56gVST" role="2czzBI">
            <property role="ilYzB" value="&lt;no sources&gt;" />
            <node concept="VPxyj" id="2L4pT56gVSU" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="ljvvj" id="2L4pT56gVSV" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pj6Ft" id="2L4pT56gVSW" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="2L4pT56gVSX" role="3EZMnx">
          <property role="3F0ifm" value="dependencies:" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          <node concept="ljvvj" id="2L4pT56gVSY" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="2L4pT56gVSZ" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:4zCbl23d1MS" />
          <node concept="pj6Ft" id="2L4pT56gVT0" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="2L4pT56gVT1" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="l2Vlx" id="2L4pT56gVT2" role="2czzBx" />
          <node concept="3F0ifn" id="2L4pT56gVT3" role="2czzBI">
            <property role="3F0ifm" value="" />
            <property role="ilYzB" value="&lt;no dependencies&gt;" />
            <node concept="VPxyj" id="2L4pT56gVT4" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="2L4pT56gVTd" role="3EZMnx">
          <property role="3F0ifm" value="runtime:" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          <node concept="ljvvj" id="2L4pT56gVTe" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="2L4pT56gVT7" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:2L4pT56gVS$" />
          <node concept="pj6Ft" id="2L4pT56gVT8" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="2L4pT56gVT9" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="l2Vlx" id="2L4pT56gVTa" role="2czzBx" />
          <node concept="3F0ifn" id="2L4pT56gVTb" role="2czzBI">
            <property role="3F0ifm" value="" />
            <property role="ilYzB" value="&lt;no runtime&gt;" />
            <node concept="VPxyj" id="2L4pT56gVTc" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="pVoyu" id="2L4pT56hlHT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="50RHf4RGQRY" role="pqm2j">
          <node concept="3clFbS" id="50RHf4RGQRZ" role="2VODD2">
            <node concept="3clFbF" id="7gAtt1jue_W" role="3cqZAp">
              <node concept="3fqX7Q" id="7gAtt1jue_X" role="3clFbG">
                <node concept="2OqwBi" id="7gAtt1jue_Z" role="3fr31v">
                  <node concept="pncrf" id="7gAtt1jueA0" role="2Oq$k0" />
                  <node concept="2qgKlT" id="7gAtt1jueA1" role="2OqNvi">
                    <ref role="37wK5l" to="2txq:7gAtt1ju6Jy" resolve="isCompact" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2L4pT56gVT5" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="pVoyu" id="50RHf4RGTg2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="2L4pT56gVT6" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2L4pT56gXbm">
    <property role="3GE5qa" value="Project.Deps" />
    <ref role="1XX52x" to="kdzh:2L4pT56gXbi" resolve="BuildMps_ModuleDependencyUseLanguage" />
    <node concept="3EZMnI" id="2L4pT56gXbo" role="2wV5jI">
      <node concept="3F0ifn" id="2L4pT56gXbr" role="3EZMnx">
        <property role="3F0ifm" value="use" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
      </node>
      <node concept="1iCGBv" id="2L4pT56gXbt" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:2L4pT56gXbj" />
        <node concept="1sVBvm" id="2L4pT56gXbu" role="1sWHZn">
          <node concept="3F0A7n" id="2L4pT56gXbw" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="2L4pT56gXbq" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2L4pT56gYzZ">
    <property role="3GE5qa" value="Project.Deps" />
    <ref role="1XX52x" to="kdzh:2L4pT56gYzV" resolve="BuildMps_ModuleDependencyOnJavaModule" />
    <node concept="3EZMnI" id="2L4pT56h8Kq" role="2wV5jI">
      <node concept="l2Vlx" id="2L4pT56h8Kr" role="2iSdaV" />
      <node concept="1iCGBv" id="2L4pT56gY$1" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:2L4pT56gYzX" />
        <node concept="1sVBvm" id="2L4pT56gY$2" role="1sWHZn">
          <node concept="3F0A7n" id="2L4pT56gY$4" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="2V7CMv" id="2L4pT56h9RL" role="3F10Kt">
              <property role="2V7CMs" value="ext_2_RTransform" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2L4pT56h8Kt" role="3EZMnx">
        <property role="3F0ifm" value="(reexport)" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        <ref role="1ERwB7" node="2L4pT56h8KR" resolve="delete_javaDepReexport" />
        <node concept="pkWqt" id="2L4pT56h8Ku" role="pqm2j">
          <node concept="3clFbS" id="2L4pT56h8Kv" role="2VODD2">
            <node concept="3clFbF" id="2L4pT56h8Kw" role="3cqZAp">
              <node concept="2OqwBi" id="2L4pT56h8KK" role="3clFbG">
                <node concept="pncrf" id="2L4pT56h8Kx" role="2Oq$k0" />
                <node concept="3TrcHB" id="2L4pT56h8KQ" role="2OqNvi">
                  <ref role="3TsBF5" to="kdzh:2L4pT56gYzW" resolve="reexport" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="2L4pT56h7FT">
    <property role="TrG5h" value="delete_moduleDepReexport" />
    <property role="3GE5qa" value="Project.Deps" />
    <ref role="1h_SK9" to="kdzh:4zCbl23db4q" resolve="BuildMps_ModuleDependencyOnModule" />
    <node concept="1hA7zw" id="2L4pT56h7FU" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="2L4pT56h7FV" role="1hA7z_">
        <node concept="3clFbS" id="2L4pT56h7FW" role="2VODD2">
          <node concept="3clFbF" id="2L4pT56h7FX" role="3cqZAp">
            <node concept="37vLTI" id="2L4pT56h7Gz" role="3clFbG">
              <node concept="2OqwBi" id="2L4pT56h7Gd" role="37vLTJ">
                <node concept="0IXxy" id="2L4pT56h7FY" role="2Oq$k0" />
                <node concept="3TrcHB" id="2L4pT56h7Gj" role="2OqNvi">
                  <ref role="3TsBF5" to="kdzh:4zCbl23d1N1" resolve="reexport" />
                </node>
              </node>
              <node concept="3clFbT" id="2L4pT56h7GA" role="37vLTx">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="2L4pT56h8KR">
    <property role="TrG5h" value="delete_javaDepReexport" />
    <property role="3GE5qa" value="Project.Deps" />
    <ref role="1h_SK9" to="kdzh:2L4pT56gYzV" resolve="BuildMps_ModuleDependencyOnJavaModule" />
    <node concept="1hA7zw" id="2L4pT56h8KS" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="2L4pT56h8KT" role="1hA7z_">
        <node concept="3clFbS" id="2L4pT56h8KU" role="2VODD2">
          <node concept="3clFbF" id="2L4pT56h8KV" role="3cqZAp">
            <node concept="37vLTI" id="2L4pT56h8Lx" role="3clFbG">
              <node concept="2OqwBi" id="2L4pT56h8Lb" role="37vLTJ">
                <node concept="0IXxy" id="2L4pT56h8KW" role="2Oq$k0" />
                <node concept="3TrcHB" id="2L4pT56h8Lh" role="2OqNvi">
                  <ref role="3TsBF5" to="kdzh:2L4pT56gYzW" resolve="reexport" />
                </node>
              </node>
              <node concept="3clFbT" id="2L4pT56h8L$" role="37vLTx">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2L4pT56hbrA">
    <property role="3GE5qa" value="Project.Runtime" />
    <ref role="1XX52x" to="kdzh:2L4pT56hbrz" resolve="BuildMps_ModuleSolutionRuntime" />
    <node concept="3EZMnI" id="2L4pT56hbrC" role="2wV5jI">
      <node concept="3F0ifn" id="2L4pT56hbrK" role="3EZMnx">
        <property role="3F0ifm" value="solution" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
      </node>
      <node concept="1iCGBv" id="2L4pT56hbrF" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:2L4pT56hbr$" />
        <node concept="1sVBvm" id="2L4pT56hbrG" role="1sWHZn">
          <node concept="3F0A7n" id="2L4pT56hbrL" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="2L4pT56hbrE" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3HwLahs6gcL">
    <property role="3GE5qa" value="Project.Deps" />
    <ref role="1XX52x" to="kdzh:3HwLahs6gcI" resolve="BuildMps_ModuleDependencyExtendLanguage" />
    <node concept="3EZMnI" id="3HwLahs6gcN" role="2wV5jI">
      <node concept="3F0ifn" id="3HwLahs6gcO" role="3EZMnx">
        <property role="3F0ifm" value="extends" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
      </node>
      <node concept="1iCGBv" id="3HwLahs6gcP" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:3HwLahs6gcK" />
        <node concept="1sVBvm" id="3HwLahs6gcQ" role="1sWHZn">
          <node concept="3F0A7n" id="3HwLahs6gcR" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="3HwLahs6gcS" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3HwLahs6iyl">
    <property role="3GE5qa" value="Project.Runtime" />
    <ref role="1XX52x" to="kdzh:3HwLahs6iyg" resolve="BuildMps_ModuleJarRuntime" />
    <node concept="3EZMnI" id="3HwLahs6iyn" role="2wV5jI">
      <node concept="3F0ifn" id="3HwLahs6iyq" role="3EZMnx">
        <property role="3F0ifm" value="jar" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
      </node>
      <node concept="3F1sOY" id="3HwLahs6iys" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:3HwLahs6iyk" />
      </node>
      <node concept="3EZMnI" id="2rlufiQSZ3T" role="3EZMnx">
        <node concept="VPM3Z" id="2rlufiQSZ3U" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="2rlufiQSZ3V" role="3EZMnx">
          <property role="3F0ifm" value="use from" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="2rlufiQSZ3W" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:2rlufiQSRlY" />
        </node>
        <node concept="l2Vlx" id="2rlufiQSZ3X" role="2iSdaV" />
        <node concept="pkWqt" id="2rlufiQSZ3Y" role="pqm2j">
          <node concept="3clFbS" id="2rlufiQSZ3Z" role="2VODD2">
            <node concept="3clFbF" id="2rlufiQSZ40" role="3cqZAp">
              <node concept="2OqwBi" id="2rlufiQSZ41" role="3clFbG">
                <node concept="2OqwBi" id="2rlufiQSZ42" role="2Oq$k0">
                  <node concept="pncrf" id="2rlufiQSZ43" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2rlufiQSZ47" role="2OqNvi">
                    <ref role="3Tt5mk" to="kdzh:2rlufiQSRlY" />
                  </node>
                </node>
                <node concept="3x8VRR" id="2rlufiQSZ45" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="3HwLahs6iyp" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="3HwLahs6lLj">
    <property role="3GE5qa" value="Project.Sources" />
    <ref role="1XX52x" to="kdzh:3HwLahs6lLg" resolve="BuildMps_ModuleModelRoot" />
    <node concept="3EZMnI" id="3HwLahs6lLl" role="2wV5jI">
      <node concept="l2Vlx" id="3HwLahs6lLn" role="2iSdaV" />
      <node concept="3F0ifn" id="3HwLahs6lLp" role="3EZMnx">
        <property role="3F0ifm" value="model root" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
      </node>
      <node concept="3F1sOY" id="3HwLahs6lLr" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:3HwLahs6lLi" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3HwLahs6nSs">
    <property role="3GE5qa" value="Project.Deps" />
    <ref role="1XX52x" to="kdzh:3HwLahs6nSp" resolve="BuildMps_ModuleDependencyJar" />
    <node concept="3EZMnI" id="3HwLahs6nSV" role="2wV5jI">
      <node concept="3F0ifn" id="3HwLahs6nSY" role="3EZMnx">
        <property role="3F0ifm" value="jar" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
      </node>
      <node concept="3F1sOY" id="3HwLahs6nT0" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:3HwLahs6nSq" />
      </node>
      <node concept="3EZMnI" id="2rlufiQSRm1" role="3EZMnx">
        <node concept="VPM3Z" id="2rlufiQSRm2" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="2rlufiQSRm5" role="3EZMnx">
          <property role="3F0ifm" value="use from" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="2rlufiQSRm7" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:2rlufiQSRlZ" />
        </node>
        <node concept="l2Vlx" id="2rlufiQSRm4" role="2iSdaV" />
        <node concept="pkWqt" id="2rlufiQSRm8" role="pqm2j">
          <node concept="3clFbS" id="2rlufiQSRm9" role="2VODD2">
            <node concept="3clFbF" id="2rlufiQSRma" role="3cqZAp">
              <node concept="2OqwBi" id="2rlufiQSZ3M" role="3clFbG">
                <node concept="2OqwBi" id="2rlufiQSZ3q" role="2Oq$k0">
                  <node concept="pncrf" id="2rlufiQSRmb" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2rlufiQSZ3w" role="2OqNvi">
                    <ref role="3Tt5mk" to="kdzh:2rlufiQSRlZ" />
                  </node>
                </node>
                <node concept="3x8VRR" id="2rlufiQSZ3S" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="3HwLahs6nSX" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hS0KzPOz3G">
    <property role="3GE5qa" value="Project" />
    <ref role="1XX52x" to="kdzh:hS0KzPOwoe" resolve="BuildMps_DevKit" />
    <node concept="3EZMnI" id="hS0KzPOz3I" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhYda" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="1k5W1q" to="o2va:16Vg0jOctJb" resolve="projectPartKeyword" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="OXEIz" id="2wdLO7KhYdb" role="P5bDN">
          <node concept="UkePV" id="2wdLO7KhYdc" role="OY2wv">
            <ref role="Ul1FP" to="3ior:6qcrfIJFdK8" resolve="BuildProjectPart" />
          </node>
        </node>
        <node concept="VPxyj" id="2wdLO7KhYdd" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="hS0KzPOz3N" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3EZMnI" id="hS0KzPOz3O" role="3EZMnx">
        <node concept="VPM3Z" id="hS0KzPOz3P" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="hS0KzPOz3Q" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <node concept="11LMrY" id="hS0KzPOz3R" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="hS0KzPOz3S" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:hS0KzPOSqb" resolve="uuid" />
        </node>
        <node concept="3F0ifn" id="hS0KzPOz3T" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <node concept="11L4FC" id="hS0KzPOz3U" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2V7CMv" id="hS0KzPOz3V" role="3F10Kt">
            <property role="2V7CMs" value="ext_3_RTransform" />
          </node>
          <node concept="VPxyj" id="hS0KzPOz3W" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="hS0KzPOz3X" role="2iSdaV" />
        <node concept="pkWqt" id="hS0KzPOz3Y" role="pqm2j">
          <node concept="3clFbS" id="hS0KzPOz3Z" role="2VODD2">
            <node concept="3clFbF" id="7gAtt1jue$$" role="3cqZAp">
              <node concept="3fqX7Q" id="7gAtt1jue$_" role="3clFbG">
                <node concept="2OqwBi" id="7gAtt1jue$B" role="3fr31v">
                  <node concept="pncrf" id="7gAtt1jue$C" role="2Oq$k0" />
                  <node concept="2qgKlT" id="7gAtt1jue$D" role="2OqNvi">
                    <ref role="37wK5l" to="2txq:7gAtt1ju6Jy" resolve="isCompact" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="hS0KzPOz46" role="3EZMnx">
        <node concept="lj46D" id="2H0oDdxIG2t" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="2H0oDdxIG2u" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="2H0oDdxIG2v" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="hS0KzPOz47" role="3EZMnx">
          <property role="3F0ifm" value="load from" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="l2Vlx" id="hS0KzPOz48" role="2iSdaV" />
        <node concept="3F1sOY" id="hS0KzPOz49" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:hS0KzPP7W_" />
        </node>
        <node concept="pkWqt" id="hS0KzPOz4a" role="pqm2j">
          <node concept="3clFbS" id="hS0KzPOz4b" role="2VODD2">
            <node concept="3clFbF" id="hS0KzPOz4c" role="3cqZAp">
              <node concept="2OqwBi" id="7gAtt1jue_t" role="3clFbG">
                <node concept="2OqwBi" id="7gAtt1jue_5" role="2Oq$k0">
                  <node concept="pncrf" id="hS0KzPOz4f" role="2Oq$k0" />
                  <node concept="3TrEf2" id="7gAtt1jue_b" role="2OqNvi">
                    <ref role="3Tt5mk" to="kdzh:hS0KzPP7W_" />
                  </node>
                </node>
                <node concept="3x8VRR" id="7gAtt1jue_z" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="hS0KzPOz4i" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <node concept="l2Vlx" id="hS0KzPOz4j" role="2iSdaV" />
        <node concept="3F0ifn" id="hS0KzPOz4k" role="3EZMnx">
          <property role="3F0ifm" value="extends:" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          <node concept="ljvvj" id="hS0KzPOz4l" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="lj46D" id="hS0KzPOz4m" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="hS0KzPOz4n" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F2HdR" id="hS0KzPOz4o" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:hS0KzPOz52" />
          <node concept="l2Vlx" id="hS0KzPOz4p" role="2czzBx" />
          <node concept="lj46D" id="hS0KzPOz4q" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="hS0KzPOz4r" role="2czzBI">
            <property role="ilYzB" value="&lt;no devkits&gt;" />
            <node concept="VPxyj" id="hS0KzPOz4s" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="ljvvj" id="hS0KzPOz4t" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pj6Ft" id="hS0KzPOz4u" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="hS0KzPOz4v" role="3EZMnx">
          <property role="3F0ifm" value="exports:" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          <node concept="ljvvj" id="hS0KzPOz4w" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="hS0KzPOz4x" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:hS0KzPODQ2" />
          <node concept="pj6Ft" id="hS0KzPOz4y" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="hS0KzPOz4z" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="l2Vlx" id="hS0KzPOz4$" role="2czzBx" />
          <node concept="3F0ifn" id="hS0KzPOz4_" role="2czzBI">
            <property role="3F0ifm" value="" />
            <property role="ilYzB" value="&lt;no exports&gt;" />
            <node concept="VPxyj" id="hS0KzPOz4A" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="pVoyu" id="hS0KzPOz4B" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="hS0KzPOz4C" role="pqm2j">
          <node concept="3clFbS" id="hS0KzPOz4D" role="2VODD2">
            <node concept="3clFbF" id="7gAtt1jue$F" role="3cqZAp">
              <node concept="3fqX7Q" id="7gAtt1jue$G" role="3clFbG">
                <node concept="2OqwBi" id="7gAtt1jue$I" role="3fr31v">
                  <node concept="pncrf" id="7gAtt1jue$J" role="2Oq$k0" />
                  <node concept="2qgKlT" id="7gAtt1jue$K" role="2OqNvi">
                    <ref role="37wK5l" to="2txq:7gAtt1ju6Jy" resolve="isCompact" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hS0KzPOz4K" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="pVoyu" id="hS0KzPOz4L" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="hS0KzPOz4M" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="hS0KzPODQ7" role="6VMZX">
      <node concept="2iRkQZ" id="hS0KzPODQ8" role="2iSdaV" />
      <node concept="pkWqt" id="hS0KzPODQ9" role="pqm2j">
        <node concept="3clFbS" id="hS0KzPODQa" role="2VODD2">
          <node concept="3clFbF" id="7gAtt1jue$L" role="3cqZAp">
            <node concept="2OqwBi" id="7gAtt1jue$M" role="3clFbG">
              <node concept="pncrf" id="7gAtt1jue$N" role="2Oq$k0" />
              <node concept="2qgKlT" id="7gAtt1jue$O" role="2OqNvi">
                <ref role="37wK5l" to="2txq:7gAtt1ju6Jy" resolve="isCompact" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="hS0KzPODQh" role="3EZMnx">
        <node concept="l2Vlx" id="hS0KzPODQi" role="2iSdaV" />
        <node concept="VPM3Z" id="hS0KzPODQj" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="hS0KzPODQk" role="3EZMnx">
          <property role="3F0ifm" value="uuid:" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F0A7n" id="hS0KzPODQl" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:hS0KzPOSqb" resolve="uuid" />
        </node>
      </node>
      <node concept="3EZMnI" id="hS0KzPODQm" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <node concept="3F0ifn" id="hS0KzPODQM" role="3EZMnx">
          <property role="3F0ifm" value="extends:" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          <node concept="ljvvj" id="hS0KzPODQN" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="hS0KzPODQO" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:hS0KzPOz52" />
          <node concept="l2Vlx" id="hS0KzPODQP" role="2czzBx" />
          <node concept="lj46D" id="hS0KzPODQQ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="hS0KzPODQR" role="2czzBI">
            <property role="ilYzB" value="&lt;no devkits&gt;" />
            <node concept="VPxyj" id="hS0KzPODQS" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="ljvvj" id="hS0KzPODQT" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pj6Ft" id="hS0KzPODQU" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="hS0KzPODQV" role="3EZMnx">
          <property role="3F0ifm" value="exports:" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          <node concept="ljvvj" id="hS0KzPODQW" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="hS0KzPODQX" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:hS0KzPODQ2" />
          <node concept="pj6Ft" id="hS0KzPODQY" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="hS0KzPODQZ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="l2Vlx" id="hS0KzPODR0" role="2czzBx" />
          <node concept="3F0ifn" id="hS0KzPODR1" role="2czzBI">
            <property role="3F0ifm" value="" />
            <property role="ilYzB" value="&lt;no exports&gt;" />
            <node concept="VPxyj" id="hS0KzPODR2" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="hS0KzPODQn" role="2iSdaV" />
        <node concept="lj46D" id="hS0KzPODQq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="hS0KzPODQr" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="pVoyu" id="hS0KzPODQF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hS0KzPOz4W">
    <property role="3GE5qa" value="Project.DevKit" />
    <ref role="1XX52x" to="kdzh:hS0KzPOz4U" resolve="BuildMps_DevKitRef" />
    <node concept="1iCGBv" id="hS0KzPOz4Y" role="2wV5jI">
      <ref role="1NtTu8" to="kdzh:hS0KzPOz4V" />
      <node concept="1sVBvm" id="hS0KzPOz4Z" role="1sWHZn">
        <node concept="3F0A7n" id="hS0KzPOz51" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPRnO" id="4RxDjBfVXmz" role="3F10Kt" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hS0KzPOz55">
    <property role="3GE5qa" value="Project.DevKit" />
    <ref role="1XX52x" to="kdzh:hS0KzPOz53" resolve="BuildMps_DevKitExport" />
    <node concept="1xolST" id="2fhrLKARhp7" role="2wV5jI">
      <property role="1xolSY" value="&lt;no export&gt;" />
      <node concept="3$7fVu" id="2fhrLKARhqM" role="3F10Kt">
        <property role="3$6WeP" value="0" />
      </node>
      <node concept="3$7jql" id="2fhrLKARhsv" role="3F10Kt">
        <property role="3$6WeP" value="0" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hS0KzPODPO">
    <property role="3GE5qa" value="Project.DevKit" />
    <ref role="1XX52x" to="kdzh:hS0KzPODPE" resolve="BuildMps_DevKitExportLanguage" />
    <node concept="3EZMnI" id="hS0KzPOJ3$" role="2wV5jI">
      <node concept="3F0ifn" id="hS0KzPOJ3B" role="3EZMnx">
        <property role="3F0ifm" value="language" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
      </node>
      <node concept="l2Vlx" id="hS0KzPOJ3_" role="2iSdaV" />
      <node concept="1iCGBv" id="hS0KzPODPQ" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:hS0KzPODPN" />
        <node concept="1sVBvm" id="hS0KzPODPR" role="1sWHZn">
          <node concept="3F0A7n" id="hS0KzPODPT" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hS0KzPODPW">
    <property role="3GE5qa" value="Project.DevKit" />
    <ref role="1XX52x" to="kdzh:hS0KzPODPU" resolve="BuildMps_DevKitExportSolution" />
    <node concept="1iCGBv" id="hS0KzPODPY" role="2wV5jI">
      <ref role="1NtTu8" to="kdzh:hS0KzPODPV" />
      <node concept="1sVBvm" id="hS0KzPODPZ" role="1sWHZn">
        <node concept="3F0A7n" id="hS0KzPODQ1" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPRnO" id="4RxDjBfTPMi" role="3F10Kt" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hS0KzPONfI">
    <property role="3GE5qa" value="Project" />
    <ref role="1XX52x" to="kdzh:hS0KzPONfF" resolve="BuildMps_AbstractModule" />
    <node concept="1xolST" id="2fhrLKARfd5" role="2wV5jI">
      <property role="1xolSY" value="&lt;no module&gt;" />
      <node concept="3$7fVu" id="2fhrLKARfeK" role="3F10Kt">
        <property role="3$6WeP" value="0" />
      </node>
      <node concept="3$7jql" id="2fhrLKARfgt" role="3F10Kt">
        <property role="3$6WeP" value="0" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hS0KzPPrLb">
    <property role="3GE5qa" value="Project.Deps" />
    <ref role="1XX52x" to="kdzh:hS0KzPPrL9" resolve="BuildMps_ModuleDependencyOnDevKit" />
    <node concept="1iCGBv" id="hS0KzPPrLd" role="2wV5jI">
      <ref role="1NtTu8" to="kdzh:hS0KzPPrLa" />
      <node concept="1sVBvm" id="hS0KzPPrLe" role="1sWHZn">
        <node concept="3F0A7n" id="hS0KzPPrLg" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1jjYQYSgYJv">
    <property role="3GE5qa" value="Project" />
    <ref role="1XX52x" to="kdzh:1jjYQYSgYJt" resolve="BuildMps_Group" />
    <node concept="3EZMnI" id="1jjYQYShs7V" role="2wV5jI">
      <node concept="l2Vlx" id="1jjYQYShs7W" role="2iSdaV" />
      <node concept="3F0ifn" id="1jjYQYSh1r3" role="3EZMnx">
        <property role="3F0ifm" value="mps group" />
        <ref role="1k5W1q" to="o2va:16Vg0jOctJb" resolve="projectPartKeyword" />
      </node>
      <node concept="3F0A7n" id="1jjYQYShs7Z" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="1jjYQYShs80" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="2oUTXgLAhJ8" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <node concept="l2Vlx" id="2oUTXgLAhJ9" role="2iSdaV" />
        <node concept="3F2HdR" id="6qcrfIJF6hW" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:1jjYQYSgYJu" />
          <node concept="pj6Ft" id="5be8yQlS_KD" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="l2Vlx" id="5be8yQlS_KA" role="2czzBx" />
          <node concept="3F0ifn" id="34DbxDwREXF" role="2czzBI">
            <property role="3F0ifm" value="" />
            <property role="ilYzB" value="&lt;empty&gt;" />
            <node concept="VPxyj" id="34DbxDwRWRH" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="1bWeed$p6Mq" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="1jjYQYShs81" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2oUTXgLAhJb" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="pkWqt" id="2oUTXgLAkN2" role="pqm2j">
          <node concept="3clFbS" id="2oUTXgLAkN3" role="2VODD2">
            <node concept="3clFbF" id="2oUTXgLAkN4" role="3cqZAp">
              <node concept="22lmx$" id="1jjYQYShSGx" role="3clFbG">
                <node concept="2OqwBi" id="1jjYQYShSHy" role="3uHU7w">
                  <node concept="2OqwBi" id="1jjYQYShSGP" role="2Oq$k0">
                    <node concept="pncrf" id="1jjYQYShSG$" role="2Oq$k0" />
                    <node concept="YCak7" id="1jjYQYShSGV" role="2OqNvi" />
                  </node>
                  <node concept="3w_OXm" id="1jjYQYShSHC" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="1jjYQYShSG6" role="3uHU7B">
                  <node concept="2OqwBi" id="1jjYQYShSFI" role="2Oq$k0">
                    <node concept="pncrf" id="1jjYQYShSFt" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="1jjYQYShSFO" role="2OqNvi">
                      <ref role="3TtcxE" to="kdzh:1jjYQYSgYJu" />
                    </node>
                  </node>
                  <node concept="1v1jN8" id="1jjYQYShSGf" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="1jjYQYSiQZf">
    <property role="TrG5h" value="delete_doNotCompile" />
    <property role="3GE5qa" value="Project" />
    <ref role="1h_SK9" to="kdzh:4zCbl23cpcc" resolve="BuildMps_Module" />
    <node concept="1hA7zw" id="1jjYQYSiQZg" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="1jjYQYSiQZh" role="1hA7z_">
        <node concept="3clFbS" id="1jjYQYSiQZi" role="2VODD2">
          <node concept="3clFbF" id="1jjYQYSiQZj" role="3cqZAp">
            <node concept="37vLTI" id="1jjYQYSiQZX" role="3clFbG">
              <node concept="2OqwBi" id="1jjYQYSiQZ_" role="37vLTJ">
                <node concept="0IXxy" id="1jjYQYSiQZk" role="2Oq$k0" />
                <node concept="3TrcHB" id="1jjYQYSiQZF" role="2OqNvi">
                  <ref role="3TsBF5" to="kdzh:1jjYQYSiGok" resolve="doNotCompile" />
                </node>
              </node>
              <node concept="3clFbT" id="1jjYQYSiR00" role="37vLTx">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7gAtt1jtThN">
    <property role="3GE5qa" value="Layout" />
    <ref role="1XX52x" to="kdzh:1tWbYFNhzsg" resolve="BuildMpsLayout_ModuleSources" />
    <node concept="3EZMnI" id="1OSlDLmrbum" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhYbA" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="1k5W1q" to="o2va:hwW5CRV" resolve="outputLayout" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="OXEIz" id="2wdLO7KhYbB" role="P5bDN">
          <node concept="UkePV" id="2wdLO7KhYbC" role="OY2wv">
            <ref role="Ul1FP" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
          </node>
        </node>
        <node concept="VPxyj" id="2wdLO7KhYbD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="1OSlDLmrbur" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:1tWbYFNhzsh" />
        <node concept="1sVBvm" id="1OSlDLmrbus" role="1sWHZn">
          <node concept="3F0A7n" id="1OSlDLmrbut" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="41K1b4v5By9" role="3EZMnx">
        <property role="3F0ifm" value="(models only)" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        <ref role="1ERwB7" node="41K1b4v5Bzs" resolve="delete_ModuleSources_modelsOnly" />
        <node concept="pkWqt" id="41K1b4v5Bya" role="pqm2j">
          <node concept="3clFbS" id="41K1b4v5Byb" role="2VODD2">
            <node concept="3clFbF" id="41K1b4v5Byc" role="3cqZAp">
              <node concept="2OqwBi" id="41K1b4v5Byu" role="3clFbG">
                <node concept="pncrf" id="41K1b4v5Byd" role="2Oq$k0" />
                <node concept="3TrcHB" id="41K1b4v5By$" role="2OqNvi">
                  <ref role="3TsBF5" to="kdzh:41K1b4v5By6" resolve="modelsOnly" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="1OSlDLmrbuu" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6R_3WZ3dIMw" role="6VMZX">
      <node concept="2iRkQZ" id="6R_3WZ3dIMx" role="2iSdaV" />
      <node concept="3EZMnI" id="6R_3WZ3dJxO" role="3EZMnx">
        <node concept="VPM3Z" id="6R_3WZ3dJxQ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="6R_3WZ3dJxT" role="2iSdaV" />
        <node concept="3F0ifn" id="6R_3WZ3dJDx" role="3EZMnx">
          <property role="3F0ifm" value="strip implementation:" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F0A7n" id="6R_3WZ3dJDA" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:6R_3WZ3d1$J" resolve="stripImplementation" />
        </node>
      </node>
      <node concept="3EZMnI" id="41K1b4v5By_" role="3EZMnx">
        <node concept="l2Vlx" id="41K1b4v5ByA" role="2iSdaV" />
        <node concept="3F0ifn" id="41K1b4v5ByB" role="3EZMnx">
          <property role="3F0ifm" value="models only:" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F0A7n" id="41K1b4v5ByD" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:41K1b4v5By6" resolve="modelsOnly" />
        </node>
        <node concept="pkWqt" id="41K1b4v5FXK" role="pqm2j">
          <node concept="3clFbS" id="41K1b4v5FXL" role="2VODD2">
            <node concept="3clFbF" id="41K1b4v5FYc" role="3cqZAp">
              <node concept="2YIFZM" id="41K1b4v5FYf" role="3clFbG">
                <ref role="1Pybhc" to="w1kc:~SModelStereotype" resolve="SModelStereotype" />
                <ref role="37wK5l" to="w1kc:~SModelStereotype.isGeneratorModel(org.jetbrains.mps.openapi.model.SModel):boolean" resolve="isGeneratorModel" />
                <node concept="2OqwBi" id="41K1b4v5FY4" role="37wK5m">
                  <node concept="pncrf" id="41K1b4v5FXN" role="2Oq$k0" />
                  <node concept="I4A8Y" id="41K1b4v5FYa" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6iXh2SsXUFS">
    <property role="3GE5qa" value="Project.Deps" />
    <ref role="1XX52x" to="kdzh:6iXh2SsXUFI" resolve="BuildMps_ExtractedModuleDependency" />
    <node concept="3EZMnI" id="6iXh2SsXXnr" role="2wV5jI">
      <node concept="l2Vlx" id="6iXh2SsXXnt" role="2iSdaV" />
      <node concept="3F0ifn" id="6iXh2SsXXnv" role="3EZMnx">
        <property role="3F0ifm" value="(extracted)" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
      </node>
      <node concept="3F1sOY" id="6iXh2SsXXnx" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:6iXh2SsXUFJ" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="16hzwWwASfE">
    <property role="3GE5qa" value="Layout" />
    <ref role="1XX52x" to="kdzh:16hzwWwASfB" resolve="BuildMpsLayout_ModuleJars" />
    <node concept="3EZMnI" id="16hzwWwAUVd" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhYbE" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="1k5W1q" to="o2va:hwW5CRV" resolve="outputLayout" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="OXEIz" id="2wdLO7KhYbF" role="P5bDN">
          <node concept="UkePV" id="2wdLO7KhYbG" role="OY2wv">
            <ref role="Ul1FP" to="3ior:6qcrfIJF4M5" resolve="BuildLayout_Node" />
          </node>
        </node>
        <node concept="VPxyj" id="2wdLO7KhYbH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="16hzwWwAUVi" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:16hzwWwASfD" />
        <node concept="1sVBvm" id="16hzwWwAUVj" role="1sWHZn">
          <node concept="3F0A7n" id="16hzwWwAUVk" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="16hzwWwAUVl" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="3LQl9buGBDQ" role="6VMZX">
      <node concept="3F0ifn" id="3LQl9buGBDR" role="3EZMnx">
        <property role="3F0ifm" value="jar locations:" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        <node concept="ljvvj" id="3LQl9buGBDS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3LQl9buGBDT" role="2iSdaV" />
      <node concept="3F2HdR" id="3LQl9buGBDU" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:3LQl9buGBDP" />
        <node concept="l2Vlx" id="3LQl9buGBDV" role="2czzBx" />
        <node concept="3F0ifn" id="3LQl9buGBDW" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="&lt;&lt; default relative locations for all jars &gt;&gt;" />
          <node concept="VPxyj" id="3LQl9buGBDX" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="pj6Ft" id="3LQl9buGBDY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="3LQl9buGBDZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6R_3WZ3kzvT" role="3EZMnx">
        <property role="3F0ifm" value="strip implementation:" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
      </node>
      <node concept="3F0A7n" id="6R_3WZ3kzwf" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:6R_3WZ3kzt2" resolve="stripImplementation" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="KbRDZ75DBq">
    <ref role="1XX52x" to="kdzh:KbRDZ75DBp" resolve="BuildMPSPlugin" />
    <node concept="3EZMnI" id="5KZfyKsUqLG" role="2wV5jI">
      <node concept="3F0ifn" id="5KZfyKsUqLJ" role="3EZMnx">
        <property role="3F0ifm" value="mps" />
        <ref role="1k5W1q" to="o2va:6qcrfIJFt0m" resolve="plugin" />
      </node>
      <node concept="l2Vlx" id="5KZfyKsUqLI" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6CY5wCYZA9R">
    <property role="3GE5qa" value="Layout" />
    <ref role="1XX52x" to="kdzh:6CY5wCYZA9O" resolve="BuildMpsLayout_ModuleXml" />
    <node concept="3EZMnI" id="6CY5wCYZCPx" role="2wV5jI">
      <node concept="l2Vlx" id="6CY5wCYZCPy" role="2iSdaV" />
      <node concept="3F0ifn" id="6CY5wCYZCPz" role="3EZMnx">
        <property role="3F0ifm" value="module descriptor of" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
      </node>
      <node concept="1iCGBv" id="6CY5wCYZCP_" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:6CY5wCYZA9P" />
        <node concept="1sVBvm" id="6CY5wCYZCPA" role="1sWHZn">
          <node concept="3F0A7n" id="6CY5wCYZCPC" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="3LQl9buGsTU" role="6VMZX">
      <node concept="3F0ifn" id="3LQl9buGsU5" role="3EZMnx">
        <property role="3F0ifm" value="jar locations:" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        <node concept="ljvvj" id="3LQl9buGsU6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3LQl9buGsTV" role="2iSdaV" />
      <node concept="3F2HdR" id="3LQl9buGsTW" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:3LQl9buGsTT" />
        <node concept="l2Vlx" id="3LQl9buGsTX" role="2czzBx" />
        <node concept="3F0ifn" id="3LQl9buGsTZ" role="2czzBI">
          <property role="3F0ifm" value="" />
          <property role="ilYzB" value="&lt;&lt; default relative locations for all jars &gt;&gt;" />
          <node concept="VPxyj" id="3LQl9buGsU0" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="pj6Ft" id="3LQl9buGsU1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="3LQl9buGsU3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="41K1b4v5Bzs">
    <property role="TrG5h" value="delete_ModuleSources_modelsOnly" />
    <property role="3GE5qa" value="Layout" />
    <ref role="1h_SK9" to="kdzh:1tWbYFNhzsg" resolve="BuildMpsLayout_ModuleSources" />
    <node concept="1hA7zw" id="41K1b4v5Bzt" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="41K1b4v5Bzu" role="1hA7z_">
        <node concept="3clFbS" id="41K1b4v5Bzv" role="2VODD2">
          <node concept="3clFbF" id="41K1b4v5Bzw" role="3cqZAp">
            <node concept="37vLTI" id="41K1b4v5B$a" role="3clFbG">
              <node concept="2OqwBi" id="41K1b4v5BzM" role="37vLTJ">
                <node concept="0IXxy" id="41K1b4v5Bzx" role="2Oq$k0" />
                <node concept="3TrcHB" id="41K1b4v5BzS" role="2OqNvi">
                  <ref role="3TsBF5" to="kdzh:41K1b4v5By6" resolve="modelsOnly" />
                </node>
              </node>
              <node concept="3clFbT" id="41K1b4v5B$d" role="37vLTx">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3LQl9buGqe7">
    <property role="3GE5qa" value="Layout" />
    <ref role="1XX52x" to="kdzh:3LQl9buGqe4" resolve="BuildMpsLayout_ModuleXml_CustomJarLocation" />
    <node concept="3EZMnI" id="3LQl9buGsTL" role="2wV5jI">
      <node concept="3F1sOY" id="3LQl9buGsTO" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:3LQl9buGqe5" />
      </node>
      <node concept="3F0ifn" id="3LQl9buGsTQ" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
      </node>
      <node concept="3F0A7n" id="3LQl9buGsTS" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:3LQl9buGqe6" resolve="packagedLocation" />
      </node>
      <node concept="l2Vlx" id="3LQl9buGsTN" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6Iq8148fiO9">
    <property role="3GE5qa" value="Project.Branding" />
    <ref role="1XX52x" to="kdzh:6Iq8148eRud" resolve="BuildMps_Branding" />
    <node concept="3EZMnI" id="6Iq8148fjW5" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhYbq" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="1k5W1q" to="o2va:16Vg0jOctJb" resolve="projectPartKeyword" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F1sOY" id="6Iq8148fjWk" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:5j4USBYGz2J" />
        <node concept="ljvvj" id="6Iq8148fjWl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="6Iq8148fjWc" role="3EZMnx">
        <node concept="VPM3Z" id="6Iq8148fjWd" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="6Iq8148fjWn" role="3EZMnx">
          <property role="3F0ifm" value="codename" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="6Iq8148fjWp" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:328lVm4LQW3" />
          <node concept="ljvvj" id="6Iq8148fjWq" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="FnaIS$F278" role="3EZMnx">
          <property role="3F0ifm" value="company" />
        </node>
        <node concept="3F1sOY" id="FnaIS$F2cU" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:FnaIS$F2cd" />
          <node concept="ljvvj" id="FnaIS$F2fu" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="6Iq8148fjWs" role="3EZMnx">
          <property role="3F0ifm" value="version" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F0A7n" id="6Iq8148fjWu" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:328lVm4LOT4" resolve="major" />
        </node>
        <node concept="3F0ifn" id="6Iq8148fjWw" role="3EZMnx">
          <property role="3F0ifm" value="." />
          <node concept="11L4FC" id="328lVm4LQVM" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="328lVm4LQVO" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="6Iq8148fjWz" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:328lVm4LOT5" resolve="minor" />
        </node>
        <node concept="3F0ifn" id="3FfyF1J0o09" role="3EZMnx">
          <property role="3F0ifm" value="." />
          <node concept="11L4FC" id="3FfyF1J8oYp" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="3FfyF1J8p0a" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="3FfyF1J0o2V" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="kdzh:3FfyF1J0n1L" resolve="bugfixNr" />
        </node>
        <node concept="3F0ifn" id="5cRJsFB9Zme" role="3EZMnx">
          <property role="3F0ifm" value="," />
          <node concept="11L4FC" id="5cRJsFB9Zmf" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="6Iq8148fjWA" role="3EZMnx">
          <property role="3F0ifm" value="eap" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F0A7n" id="6Iq8148fjWE" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:328lVm4LOT6" resolve="eap" />
          <node concept="ljvvj" id="6Iq8148fjWF" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="6Iq8148fjWI" role="3EZMnx">
          <property role="3F0ifm" value="full name" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="6Iq8148fjWK" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:5j4USBYGz2K" />
          <node concept="ljvvj" id="6Iq8148fjWL" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="6Iq8148fjWO" role="3EZMnx">
          <property role="3F0ifm" value="build number" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="6Iq8148fjWQ" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:5j4USBYG00p" />
        </node>
        <node concept="3F0ifn" id="5cRJsFB9Zmb" role="3EZMnx">
          <property role="3F0ifm" value="," />
          <node concept="11L4FC" id="5cRJsFB9Zmc" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="1hb9EOzQexT" role="3EZMnx">
          <property role="3F0ifm" value="date" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="1hb9EOzQexV" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:1hb9EOzQbQ8" />
          <node concept="ljvvj" id="1hb9EOzQexW" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="6Iq8148fjWX" role="3EZMnx">
          <property role="3F0ifm" value="icons" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          <node concept="ljvvj" id="6Iq8148fjX4" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3EZMnI" id="6Iq8148fjWZ" role="3EZMnx">
          <node concept="VPM3Z" id="6Iq8148fjX0" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="l2Vlx" id="6Iq8148fjX2" role="2iSdaV" />
          <node concept="ljvvj" id="6Iq8148fjX3" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="6Iq8148fjX5" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="6Iq8148fjX9" role="3EZMnx">
            <property role="3F0ifm" value="16x16" />
            <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          </node>
          <node concept="3F1sOY" id="6Iq8148fjXb" role="3EZMnx">
            <ref role="1NtTu8" to="kdzh:5j4USBYG00r" />
            <node concept="ljvvj" id="6Iq8148fjXc" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="6Iq8148fjXf" role="3EZMnx">
            <property role="3F0ifm" value="32x32" />
            <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          </node>
          <node concept="3F1sOY" id="6Iq8148fjXd" role="3EZMnx">
            <ref role="1NtTu8" to="kdzh:5j4USBYG00q" />
            <node concept="ljvvj" id="6Iq8148fjXe" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="6Iq8148fjXi" role="3EZMnx">
            <property role="3F0ifm" value="32x32 opaque" />
            <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          </node>
          <node concept="3F1sOY" id="6Iq8148fjXg" role="3EZMnx">
            <ref role="1NtTu8" to="kdzh:5j4USBYG00s" />
            <node concept="ljvvj" id="6Iq8148fjXh" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="FnaIS$FbcW" role="3EZMnx">
            <property role="3F0ifm" value="128x128" />
          </node>
          <node concept="3F1sOY" id="FnaIS$Fbek" role="3EZMnx">
            <ref role="1NtTu8" to="kdzh:FnaIS$EsJY" />
          </node>
          <node concept="3F0ifn" id="5VYK1npIclI" role="3EZMnx">
            <property role="3F0ifm" value="icon" />
            <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
            <node concept="pVoyu" id="5VYK1npIcoh" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F1sOY" id="5VYK1npIco2" role="3EZMnx">
            <ref role="1NtTu8" to="kdzh:5VYK1npHWR4" />
          </node>
          <node concept="3F0ifn" id="5VYK1npKdWo" role="3EZMnx">
            <property role="3F0ifm" value="icon toolWindow" />
            <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
            <node concept="pVoyu" id="5VYK1npKdXl" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F1sOY" id="5VYK1npKdX0" role="3EZMnx">
            <ref role="1NtTu8" to="kdzh:5VYK1npKdVC" />
          </node>
        </node>
        <node concept="3F0ifn" id="6Iq8148fjXk" role="3EZMnx">
          <property role="3F0ifm" value="splash screen" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="6Iq8148fjXm" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:5j4USBYFOGk" />
          <node concept="ljvvj" id="5VYK1npJYCa" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3EZMnI" id="5VYK1npI38N" role="3EZMnx">
          <node concept="3F0ifn" id="6Iq8148fjXy" role="3EZMnx">
            <property role="3F0ifm" value="textcolor" />
            <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          </node>
          <node concept="3F1sOY" id="6Iq8148fjX$" role="3EZMnx">
            <ref role="1NtTu8" to="kdzh:7CfYQDnCB_D" />
            <node concept="ljvvj" id="5cRJsFB9Zmg" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="5VYK1npI5MX" role="3EZMnx">
            <property role="3F0ifm" value="progressColor" />
            <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          </node>
          <node concept="3F1sOY" id="5VYK1npI6QN" role="3EZMnx">
            <ref role="1NtTu8" to="kdzh:5VYK1npI0o$" />
          </node>
          <node concept="3F0ifn" id="5VYK1npI6Rx" role="3EZMnx">
            <property role="3F0ifm" value="progressY" />
            <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
            <node concept="pVoyu" id="5VYK1npI6RD" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F1sOY" id="5VYK1npIbNt" role="3EZMnx">
            <ref role="1NtTu8" to="kdzh:5VYK1npIaJ5" />
            <node concept="ljvvj" id="5VYK1npJYCT" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="l2Vlx" id="5VYK1npI38S" role="2iSdaV" />
          <node concept="VPM3Z" id="5VYK1npJYC4" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="ljvvj" id="5VYK1npJYC5" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="5VYK1npJYC6" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="6Iq8148fjXv" role="3EZMnx">
          <property role="3F0ifm" value="about screen" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="6Iq8148fjXx" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:5j4USBYFOGl" />
          <node concept="ljvvj" id="6Iq8148fjXA" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="7273ZJHz1wd" role="3EZMnx">
          <property role="3F0ifm" value="dialog image" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="7273ZJHz1wb" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:7273ZJHyYNO" />
          <node concept="ljvvj" id="7273ZJHz1wc" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="6Iq8148fjXC" role="3EZMnx">
          <property role="3F0ifm" value="welcome screen" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          <node concept="ljvvj" id="6Iq8148fjXI" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3EZMnI" id="6Iq8148fjXE" role="3EZMnx">
          <node concept="VPM3Z" id="6Iq8148fjXF" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="6Iq8148fjXM" role="3EZMnx">
            <property role="3F0ifm" value="caption" />
            <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          </node>
          <node concept="3F1sOY" id="6Iq8148fjXO" role="3EZMnx">
            <ref role="1NtTu8" to="kdzh:6Iq8148fiO6" />
            <node concept="ljvvj" id="6Iq8148fjXP" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="6Iq8148fjXR" role="3EZMnx">
            <property role="3F0ifm" value="slogan" />
            <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          </node>
          <node concept="3F1sOY" id="6Iq8148fjXT" role="3EZMnx">
            <ref role="1NtTu8" to="kdzh:5j4USBYGpQQ" />
            <node concept="ljvvj" id="ES2LjlWYEs" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="ES2LjlWNXM" role="3EZMnx">
            <property role="3F0ifm" value="logo" />
            <ref role="1k5W1q" to="ot6o:hwW5xkg" resolve="keyword" />
          </node>
          <node concept="3F1sOY" id="ES2LjlWK6B" role="3EZMnx">
            <ref role="1NtTu8" to="kdzh:ES2LjlW$nI" />
          </node>
          <node concept="l2Vlx" id="6Iq8148fjXH" role="2iSdaV" />
          <node concept="lj46D" id="6Iq8148fjXJ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="6Iq8148fjXK" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="6Iq8148fjXU" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:5j4USBYGpRd" />
          <node concept="ljvvj" id="6Iq8148fjXV" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="FnaIS$F1N_" role="3EZMnx">
          <property role="3F0ifm" value="plugins" />
        </node>
        <node concept="3F1sOY" id="FnaIS$F1Si" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:FnaIS$EsWD" />
          <node concept="ljvvj" id="FnaIS$F1UJ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="FnaIS$F1Xd" role="3EZMnx">
          <property role="3F0ifm" value="whats new" />
        </node>
        <node concept="3F1sOY" id="FnaIS$F226" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:FnaIS$F0iy" />
          <node concept="ljvvj" id="FnaIS$F24$" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="FnaIS$Fb9W" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:FnaIS$Fb9d" />
          <node concept="ljvvj" id="FnaIS$Fbc$" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="6Iq8148fjXX" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:ohKnhBYC6p" />
          <node concept="ljvvj" id="7GO0VN9rff3" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="7GO0VN9rff4" role="3EZMnx">
          <property role="3F0ifm" value="feedback url" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="7GO0VN9rff5" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:7GO0VN9rfeQ" />
          <node concept="ljvvj" id="7GO0VN9rff6" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="5VYK1npK3yw" role="3EZMnx">
          <property role="3F0ifm" value="custom elements" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3EZMnI" id="5VYK1npK3uQ" role="3EZMnx">
          <node concept="VPM3Z" id="5VYK1npK3uS" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F2HdR" id="5VYK1npK3$v" role="3EZMnx">
            <ref role="1NtTu8" to="kdzh:5VYK1npIw0m" />
            <node concept="l2Vlx" id="5VYK1npK3$x" role="2czzBx" />
          </node>
          <node concept="l2Vlx" id="5VYK1npK3uV" role="2iSdaV" />
          <node concept="pVoyu" id="5VYK1npK3$j" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="5VYK1npK3$o" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="6Iq8148fjWf" role="2iSdaV" />
        <node concept="lj46D" id="6Iq8148fjWh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="6Iq8148f_ZT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6Iq8148fw_l" role="3EZMnx">
        <property role="3F0ifm" value="" />
      </node>
      <node concept="l2Vlx" id="6Iq8148fjW7" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6Iq8148fjXY">
    <property role="3GE5qa" value="Project.Branding" />
    <ref role="1XX52x" to="kdzh:6Iq8148fiO8" resolve="BuildMps_BrandingHelp" />
    <node concept="3EZMnI" id="6Iq8148fjYw" role="2wV5jI">
      <node concept="l2Vlx" id="6Iq8148fjYx" role="2iSdaV" />
      <node concept="3F0ifn" id="6Iq8148fjYy" role="3EZMnx">
        <property role="3F0ifm" value="help" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        <node concept="ljvvj" id="6Iq8148fjYC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="6Iq8148fjY$" role="3EZMnx">
        <node concept="VPM3Z" id="6Iq8148fjY_" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="6Iq8148fjYB" role="2iSdaV" />
        <node concept="lj46D" id="6Iq8148fjYD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="6Iq8148fjYF" role="3EZMnx">
          <property role="3F0ifm" value="file" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="6Iq8148fjYH" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:ohKnhBYC6o" />
          <node concept="ljvvj" id="6Iq8148fjYR" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="6Iq8148fjYJ" role="3EZMnx">
          <property role="3F0ifm" value="root" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="6Iq8148fjYM" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:ohKnhBYC6n" />
          <node concept="ljvvj" id="6Iq8148fjYT" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="6Iq8148fjYO" role="3EZMnx">
          <property role="3F0ifm" value="url" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="6Iq8148fjYQ" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:ohKnhBYC6m" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6Iq8148fjY0">
    <property role="3GE5qa" value="Project.Branding" />
    <ref role="1XX52x" to="kdzh:6Iq8148fiO7" resolve="BuildMps_BrandingUpdateSite" />
    <node concept="3EZMnI" id="6Iq8148fjY2" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhYb4" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="ljvvj" id="2wdLO7KhYb5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="6Iq8148fjY7" role="3EZMnx">
        <node concept="VPM3Z" id="6Iq8148fjY8" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="6Iq8148fjYd" role="3EZMnx">
          <property role="3F0ifm" value="check url" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="6Iq8148fjYf" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:5j4USBYGpQS" />
          <node concept="ljvvj" id="6Iq8148fjYg" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="6Iq8148fjYi" role="3EZMnx">
          <property role="3F0ifm" value="update url" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="6Iq8148fjYk" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:5j4USBYGpQT" />
          <node concept="ljvvj" id="6Iq8148fjYl" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="6Iq8148fjYr" role="3EZMnx">
          <property role="3F0ifm" value="channel" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="6Iq8148fjYn" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:7CfYQDnC3vN" />
        </node>
        <node concept="l2Vlx" id="6Iq8148fjYa" role="2iSdaV" />
        <node concept="lj46D" id="6Iq8148fjYc" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="6Iq8148fjY4" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5HVSRHdUrHP">
    <property role="3GE5qa" value="Project.Plugin" />
    <ref role="1XX52x" to="kdzh:5HVSRHdUrHO" resolve="BuildMps_IdeaPlugin" />
    <node concept="3EZMnI" id="5HVSRHdUrHR" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhY9l" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="1k5W1q" to="o2va:16Vg0jOctJb" resolve="projectPartKeyword" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F0A7n" id="5HVSRHdUrJ8" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:5HVSRHdUrHJ" resolve="id" />
        <node concept="2V7CMv" id="14LJu4ZfVVB" role="3F10Kt">
          <property role="2V7CMs" value="ext_3_RTransform" />
        </node>
      </node>
      <node concept="3EZMnI" id="14LJu4ZfrS$" role="3EZMnx">
        <node concept="VPM3Z" id="14LJu4ZfrS_" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="14LJu4ZfrSB" role="2iSdaV" />
        <node concept="3F0ifn" id="14LJu4ZfrSC" role="3EZMnx">
          <property role="3F0ifm" value="from" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="14LJu4ZfrSF" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:14LJu4ZfrSE" />
        </node>
        <node concept="pkWqt" id="14LJu4ZfrSG" role="pqm2j">
          <node concept="3clFbS" id="14LJu4ZfrSH" role="2VODD2">
            <node concept="3clFbF" id="14LJu4ZfJN1" role="3cqZAp">
              <node concept="2OqwBi" id="14LJu4ZfVVw" role="3clFbG">
                <node concept="2OqwBi" id="14LJu4ZfJNn" role="2Oq$k0">
                  <node concept="pncrf" id="14LJu4ZfJN2" role="2Oq$k0" />
                  <node concept="3TrEf2" id="14LJu4ZfVVa" role="2OqNvi">
                    <ref role="3Tt5mk" to="kdzh:14LJu4ZfrSE" />
                  </node>
                </node>
                <node concept="3x8VRR" id="14LJu4ZfVVA" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="5HVSRHdUrHV" role="3EZMnx">
        <node concept="VPM3Z" id="5HVSRHdUrHW" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="5HVSRHdUrHX" role="3EZMnx">
          <property role="3F0ifm" value="name" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="5HVSRHdUrJe" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:5HVSRHdUrJd" />
          <node concept="ljvvj" id="5HVSRHdUrJf" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="5HVSRHdVU6u" role="3EZMnx">
          <property role="3F0ifm" value="short (folder) name" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="5HVSRHdVU6w" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:5HVSRHdVMMm" />
          <node concept="ljvvj" id="5HVSRHdVU6x" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="1SBjBn2gi8W" role="3EZMnx">
          <property role="3F0ifm" value="description" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="1SBjBn2gi1L" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:1SBjBn2fSyM" />
          <ref role="34QXea" node="1SBjBn2kUCd" resolve="create_IdeaPluginDescription" />
          <node concept="ljvvj" id="1SBjBn2gi3G" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="5HVSRHdUrI0" role="3EZMnx">
          <property role="3F0ifm" value="version" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="5HVSRHdUrJ2" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:5HVSRHdUrHN" />
          <node concept="ljvvj" id="5HVSRHdUrJi" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="6MNA4JYniI8" role="3EZMnx">
          <property role="1$x2rV" value="&lt;&lt; no vendor &gt;&gt;" />
          <ref role="1NtTu8" to="kdzh:6MNA4JYniI6" />
          <node concept="ljvvj" id="6MNA4JYniI9" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="5HVSRHdUrJM" role="3EZMnx">
          <property role="3F0ifm" value="content:" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          <node concept="ljvvj" id="5HVSRHdUrJN" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="5HVSRHdUrJP" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:5HVSRHdUrJE" />
          <node concept="l2Vlx" id="5HVSRHdUrJQ" role="2czzBx" />
          <node concept="lj46D" id="5HVSRHdUrJR" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="5HVSRHdUrJS" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pj6Ft" id="5HVSRHdUrJT" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="5HVSRHdUrJh" role="3EZMnx">
          <property role="3F0ifm" value="dependencies:" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          <node concept="ljvvj" id="5HVSRHdUrJp" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="5HVSRHdUrJn" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:5HVSRHdUrJk" />
          <node concept="l2Vlx" id="5HVSRHdUrJo" role="2czzBx" />
          <node concept="lj46D" id="5HVSRHdUrJq" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pj6Ft" id="5HVSRHdUrJr" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="5HVSRHdUrIW" role="2iSdaV" />
        <node concept="lj46D" id="5HVSRHdUrIX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="5HVSRHdUrIY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="14LJu4Zg77b" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F2HdR" id="1bsNc2iNzTW" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:1bsNc2iEGzj" />
          <node concept="l2Vlx" id="1bsNc2iNzTX" role="2czzBx" />
          <node concept="pj6Ft" id="1bsNc2iNzTZ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pkWqt" id="1bsNc2jcOBQ" role="pqm2j">
            <node concept="3clFbS" id="1bsNc2jcOBR" role="2VODD2">
              <node concept="3clFbF" id="1bsNc2jcOMa" role="3cqZAp">
                <node concept="2OqwBi" id="1bsNc2jcR7W" role="3clFbG">
                  <node concept="2OqwBi" id="1bsNc2jcOR_" role="2Oq$k0">
                    <node concept="pncrf" id="1bsNc2jcOM9" role="2Oq$k0" />
                    <node concept="3TrEf2" id="1bsNc2jcQGt" role="2OqNvi">
                      <ref role="3Tt5mk" to="kdzh:14LJu4ZfrSE" />
                    </node>
                  </node>
                  <node concept="3w_OXm" id="1bsNc2jcRsh" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="5HVSRHdUrIZ" role="3EZMnx">
          <property role="3F0ifm" value="" />
        </node>
      </node>
      <node concept="l2Vlx" id="5HVSRHdUrJ0" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5HVSRHdUrJv">
    <property role="3GE5qa" value="Project.Plugin" />
    <ref role="1XX52x" to="kdzh:5HVSRHdUrJs" resolve="BuildMps_IdeaPluginModule" />
    <node concept="3EZMnI" id="5HVSRHdUrJx" role="2wV5jI">
      <node concept="1iCGBv" id="5HVSRHdUrJA" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:5HVSRHdUrJt" />
        <node concept="1sVBvm" id="5HVSRHdUrJB" role="1sWHZn">
          <node concept="3SHvHV" id="4k71ibbL6nt" role="2wV5jI" />
        </node>
      </node>
      <node concept="3F0ifn" id="3vXGXT8bfc7" role="3EZMnx">
        <property role="3F0ifm" value="(custom packaging)" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        <node concept="pkWqt" id="3vXGXT8bsoY" role="pqm2j">
          <node concept="3clFbS" id="3vXGXT8bsoZ" role="2VODD2">
            <node concept="3clFbF" id="3vXGXT8bsp0" role="3cqZAp">
              <node concept="2OqwBi" id="3vXGXT8bspm" role="3clFbG">
                <node concept="pncrf" id="3vXGXT8bsp1" role="2Oq$k0" />
                <node concept="3TrcHB" id="3vXGXT8bsps" role="2OqNvi">
                  <ref role="3TsBF5" to="kdzh:3vXGXT8bfbv" resolve="customPackaging" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="5HVSRHdUrJz" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="3vXGXT8bfc8" role="6VMZX">
      <node concept="l2Vlx" id="3vXGXT8bfc9" role="2iSdaV" />
      <node concept="3F0ifn" id="3vXGXT8bfca" role="3EZMnx">
        <property role="3F0ifm" value="custom packaging" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
      </node>
      <node concept="3F0A7n" id="3vXGXT8bfcc" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:3vXGXT8bfbv" resolve="customPackaging" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5HVSRHdUrJH">
    <property role="3GE5qa" value="Project.Plugin" />
    <ref role="1XX52x" to="kdzh:5HVSRHdUrJF" resolve="BuildMps_IdeaPluginContent" />
    <node concept="1xolST" id="5HVSRHdUrJJ" role="2wV5jI">
      <property role="1xolSY" value="none" />
    </node>
  </node>
  <node concept="24kQdi" id="5HVSRHdUrJX">
    <property role="3GE5qa" value="Project.Plugin" />
    <ref role="1XX52x" to="kdzh:5HVSRHdUrJj" resolve="BuildMps_IdeaPluginDependency" />
    <node concept="3EZMnI" id="5HVSRHdUrJZ" role="2wV5jI">
      <node concept="1iCGBv" id="5HVSRHdUrK2" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:5HVSRHdUrJU" />
        <node concept="1sVBvm" id="5HVSRHdUrK3" role="1sWHZn">
          <node concept="3F0A7n" id="5HVSRHdUrK5" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="kdzh:5HVSRHdUrHJ" resolve="id" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="5HVSRHdUrK1" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5HVSRHdUL83">
    <property role="3GE5qa" value="Project.Plugin" />
    <ref role="1XX52x" to="kdzh:5HVSRHdUL81" resolve="BuildMps_IdeaPluginGroup" />
    <node concept="3EZMnI" id="3vXGXT8byGM" role="2wV5jI">
      <node concept="l2Vlx" id="3vXGXT8byGN" role="2iSdaV" />
      <node concept="1iCGBv" id="5HVSRHdUL85" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:5HVSRHdUL82" />
        <node concept="1sVBvm" id="5HVSRHdUL86" role="1sWHZn">
          <node concept="3SHvHV" id="4k71ibbKZ75" role="2wV5jI" />
        </node>
      </node>
      <node concept="3EZMnI" id="3vXGXT8byGP" role="3EZMnx">
        <node concept="VPM3Z" id="3vXGXT8byGQ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="3vXGXT8byGU" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          <node concept="11LMrY" id="3vXGXT8bRLv" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3vXGXT8bLil" role="3EZMnx">
          <property role="3F0ifm" value="custom packaging for" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F2HdR" id="3vXGXT8byHW" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="kdzh:3vXGXT8byGJ" />
          <node concept="l2Vlx" id="3vXGXT8byHX" role="2czzBx" />
        </node>
        <node concept="3F0ifn" id="3vXGXT8bLij" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          <node concept="11L4FC" id="3vXGXT8bRLw" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="3vXGXT8byGS" role="2iSdaV" />
        <node concept="pkWqt" id="3vXGXT8byGY" role="pqm2j">
          <node concept="3clFbS" id="3vXGXT8byGZ" role="2VODD2">
            <node concept="3clFbF" id="3vXGXT8byH0" role="3cqZAp">
              <node concept="2OqwBi" id="3vXGXT8byHM" role="3clFbG">
                <node concept="2OqwBi" id="3vXGXT8byHm" role="2Oq$k0">
                  <node concept="pncrf" id="3vXGXT8byH1" role="2Oq$k0" />
                  <node concept="3Tsc0h" id="3vXGXT8byHs" role="2OqNvi">
                    <ref role="3TtcxE" to="kdzh:3vXGXT8byGJ" />
                  </node>
                </node>
                <node concept="3GX2aA" id="3vXGXT8byHS" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5HVSRHdV$e0">
    <property role="3GE5qa" value="Layout" />
    <ref role="1XX52x" to="kdzh:5HVSRHdV$dW" resolve="BuildMpsLayout_PluginDescriptor" />
    <node concept="3EZMnI" id="5HVSRHdV$e2" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhY1e" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="1iCGBv" id="5HVSRHdV$e8" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:5HVSRHdV$dX" />
        <node concept="1sVBvm" id="5HVSRHdV$e9" role="1sWHZn">
          <node concept="3F0A7n" id="5HVSRHdV$eb" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="kdzh:5HVSRHdUrHJ" resolve="id" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="5HVSRHdV$e4" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5HVSRHdV_$j">
    <property role="3GE5qa" value="Layout" />
    <ref role="1XX52x" to="kdzh:5HVSRHdUrHI" resolve="BuildMpsLayout_Plugin" />
    <node concept="3EZMnI" id="6qcrfIJF7Yg" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhY5A" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="1k5W1q" to="o2va:hwW5CRV" resolve="outputLayout" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="OXEIz" id="2wdLO7KhY5B" role="P5bDN">
          <node concept="UkePV" id="2wdLO7KhY5C" role="OY2wv">
            <ref role="Ul1FP" to="3ior:6qcrfIJF7Yc" resolve="BuildLayout_NamedContainer" />
          </node>
        </node>
      </node>
      <node concept="1iCGBv" id="5HVSRHdV_$q" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:5HVSRHdV_$p" />
        <node concept="1sVBvm" id="5HVSRHdV_$r" role="1sWHZn">
          <node concept="3F0A7n" id="5HVSRHdV_$t" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="kdzh:5HVSRHdUrHJ" resolve="id" />
          </node>
        </node>
        <node concept="ljvvj" id="5HVSRHdVMJJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="PMmxH" id="6qcrfIJF7Yk" role="3EZMnx">
        <ref role="PMmxG" to="o2va:6qcrfIJF4M6" resolve="BuildLayout_containerElements" />
        <node concept="lj46D" id="6qcrfIJF7Yl" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="6qcrfIJF7Ym" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="2Wb4ucKh_TH" role="6VMZX">
      <node concept="l2Vlx" id="2Wb4ucKh_TK" role="2iSdaV" />
      <node concept="3F0ifn" id="2Wb4ucKh_TR" role="3EZMnx">
        <property role="3F0ifm" value="strip implementation:" />
        <ref role="1k5W1q" to="ot6o:hwW5xkg" resolve="keyword" />
      </node>
      <node concept="3F0A7n" id="2Wb4ucKh_TS" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:2Wb4ucKh_Pd" resolve="stripImplementation" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3vXGXT8byGD">
    <property role="3GE5qa" value="Project.Plugin" />
    <ref role="1XX52x" to="kdzh:3vXGXT8byGB" resolve="BuildMps_IdeaPluginGroupCustomModule" />
    <node concept="1iCGBv" id="3vXGXT8byGF" role="2wV5jI">
      <ref role="1NtTu8" to="kdzh:3vXGXT8byGC" />
      <node concept="1sVBvm" id="3vXGXT8byGG" role="1sWHZn">
        <node concept="3F0A7n" id="3vXGXT8byGI" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPRnO" id="4RxDjBfYCag" role="3F10Kt" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6MNA4JYmRbn">
    <property role="3GE5qa" value="Project.Plugin" />
    <ref role="1XX52x" to="kdzh:6MNA4JYmRbj" resolve="BuildMps_IdeaPluginVendor" />
    <node concept="3EZMnI" id="6MNA4JYmRbp" role="2wV5jI">
      <node concept="l2Vlx" id="6MNA4JYmRbq" role="2iSdaV" />
      <node concept="3F0ifn" id="6MNA4JYmRbr" role="3EZMnx">
        <property role="3F0ifm" value="vendor" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
      </node>
      <node concept="3F0A7n" id="6MNA4JYmRbs" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:6MNA4JYmRbm" resolve="name" />
        <node concept="ljvvj" id="6MNA4JYmYNJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6MNA4JYmRbx" role="3EZMnx">
        <property role="3F0ifm" value="url" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        <node concept="lj46D" id="6MNA4JYmYNK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="6MNA4JYmRb$" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:6MNA4JYmRbl" resolve="url" />
        <node concept="ljvvj" id="6MNA4JYmYNL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6MNA4JYmRbB" role="3EZMnx">
        <property role="3F0ifm" value="icon16" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        <node concept="lj46D" id="6MNA4JYmYNM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="6MNA4JYmRbE" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:6MNA4JYmRbk" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5D0zVz80B2B">
    <property role="3GE5qa" value="Aspect" />
    <ref role="1XX52x" to="kdzh:5D0zVz80y2D" resolve="BuildMpsAspect" />
    <node concept="3EZMnI" id="450ejGzgVy9" role="2wV5jI">
      <node concept="3F0ifn" id="2a9bszgvFDZ" role="3EZMnx">
        <property role="3F0ifm" value="mps settings" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        <node concept="ljvvj" id="2a9bszgvFFD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="450ejGzgVya" role="2iSdaV" />
      <node concept="3EZMnI" id="5D0zVz80B30" role="3EZMnx">
        <node concept="VPM3Z" id="5D0zVz80B31" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="5D0zVz80B35" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="5D0zVz80T9O" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="5D0zVz80B36" role="3EZMnx">
          <property role="3F0ifm" value="bootstrap" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F0A7n" id="5D0zVz80B38" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:5D0zVz80B2W" resolve="bootstrap" />
        </node>
        <node concept="l2Vlx" id="5D0zVz80B33" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="1zf4ypEIowD" role="3EZMnx">
        <node concept="VPM3Z" id="1zf4ypEIowE" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="1zf4ypEIowF" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="1zf4ypEIowG" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="1zf4ypEIowH" role="3EZMnx">
          <property role="3F0ifm" value="test generation" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F0A7n" id="1zf4ypEIowI" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:1zf4ypEEXQZ" resolve="testGeneration" />
        </node>
        <node concept="3EZMnI" id="4lGpBZB$_e1" role="3EZMnx">
          <node concept="VPM3Z" id="4lGpBZB$_e3" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="4lGpBZCrso8" role="3EZMnx">
            <property role="3F0ifm" value="excludes:" />
            <ref role="1k5W1q" to="ot6o:hwW5xkg" resolve="keyword" />
          </node>
          <node concept="3F0A7n" id="4lGpBZB$RqH" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;pattern1, pattern2,...&gt;" />
            <ref role="1NtTu8" to="kdzh:4lGpBZB$QJS" resolve="excludes" />
          </node>
          <node concept="l2Vlx" id="4lGpBZB$_e6" role="2iSdaV" />
          <node concept="pkWqt" id="4lGpBZB$_eo" role="pqm2j">
            <node concept="3clFbS" id="4lGpBZB$_ep" role="2VODD2">
              <node concept="3clFbF" id="4lGpBZB$G4Q" role="3cqZAp">
                <node concept="2OqwBi" id="4lGpBZB$GkY" role="3clFbG">
                  <node concept="pncrf" id="4lGpBZB$G4P" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4lGpBZB$Qzl" role="2OqNvi">
                    <ref role="3TsBF5" to="kdzh:1zf4ypEEXQZ" resolve="testGeneration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="1zf4ypEIowJ" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="6V3S4ekwvbA" role="3EZMnx">
        <node concept="VPM3Z" id="6V3S4ekwvbB" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="6V3S4ekwvbC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="6V3S4ekwvbD" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="6V3S4ekwvbE" role="3EZMnx">
          <property role="3F0ifm" value="generation max heap size in mb" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F0A7n" id="6V3S4ekwvbF" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <property role="1$x2rV" value="512" />
          <ref role="1NtTu8" to="kdzh:6V3S4ekuLVH" resolve="generationMaxHeapSizeInMb" />
        </node>
        <node concept="l2Vlx" id="6V3S4ekwvbG" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="jC3lHUHwJV" role="3EZMnx">
        <node concept="VPM3Z" id="jC3lHUHwJW" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="jC3lHUHwJX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="jC3lHUHwJY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="jC3lHUHwJZ" role="3EZMnx">
          <property role="3F0ifm" value="generation max perm size in mb" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F0A7n" id="jC3lHUHwK0" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <property role="1$x2rV" value="default" />
          <ref role="1NtTu8" to="kdzh:jC3lHUHnEE" resolve="generationMaxPermSizeInMb" />
        </node>
        <node concept="l2Vlx" id="jC3lHUHwK1" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="5D0zVz80T9L" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="lj46D" id="5D0zVz80T9P" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="QkG2t1bMeN">
    <property role="3GE5qa" value="GeneratorInternal" />
    <ref role="1XX52x" to="kdzh:QkG2t1bKw$" resolve="GeneratorInternal_String" />
    <node concept="3EZMnI" id="QkG2t1bOXQ" role="2wV5jI">
      <node concept="3F0A7n" id="QkG2t1bOXT" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:QkG2t1bKwB" resolve="path" />
      </node>
      <node concept="l2Vlx" id="QkG2t1bOXS" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4j_Rh$ItRdO">
    <property role="3GE5qa" value="GeneratorInternal" />
    <ref role="1XX52x" to="kdzh:4j_Rh$ItR7f" resolve="GeneratorInternal_BuildMps_Module" />
    <node concept="3F0ifn" id="4j_Rh$ItRdQ" role="2wV5jI">
      <property role="3F0ifm" value="module" />
    </node>
  </node>
  <node concept="24kQdi" id="4j_Rh$ItRdL">
    <property role="3GE5qa" value="GeneratorInternal" />
    <ref role="1XX52x" to="kdzh:4j_Rh$ItR9u" resolve="GeneratorInternal_BuildSourcePath" />
    <node concept="3F0ifn" id="4j_Rh$ItRdN" role="2wV5jI">
      <property role="3F0ifm" value="path" />
    </node>
  </node>
  <node concept="325Ffw" id="1SBjBn2kUCd">
    <property role="TrG5h" value="create_IdeaPluginDescription" />
    <property role="3GE5qa" value="Project.Plugin" />
    <ref role="1chiOs" to="kdzh:5HVSRHdUrHO" resolve="BuildMps_IdeaPlugin" />
    <node concept="2PxR9H" id="1SBjBn2l0ai" role="2QnnpI">
      <node concept="2Py5lD" id="1SBjBn2l0aj" role="2PyaAO">
        <property role="2PWKIS" value="letter or digit" />
      </node>
      <node concept="2PzhpH" id="1SBjBn2l0ak" role="2PL9iG">
        <node concept="3clFbS" id="1SBjBn2l0al" role="2VODD2">
          <node concept="3clFbF" id="1SBjBn2liKu" role="3cqZAp">
            <node concept="2OqwBi" id="1SBjBn2luFh" role="3clFbG">
              <node concept="2DeJnY" id="1SBjBn2lwmV" role="2OqNvi" />
              <node concept="2OqwBi" id="1SBjBn2liSw" role="2Oq$k0">
                <node concept="3TrEf2" id="1SBjBn2ltwD" role="2OqNvi">
                  <ref role="3Tt5mk" to="kdzh:1SBjBn2fSyM" />
                </node>
                <node concept="0GJ7k" id="1SBjBn2liKt" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2Pz7Y7" id="1SBjBn2l346" role="2Pzqsi">
        <node concept="3clFbS" id="1SBjBn2l347" role="2VODD2">
          <node concept="3clFbF" id="1SBjBn2l37s" role="3cqZAp">
            <node concept="2OqwBi" id="1SBjBn2lg9R" role="3clFbG">
              <node concept="3w_OXm" id="1SBjBn2ppDl" role="2OqNvi" />
              <node concept="2OqwBi" id="1SBjBn2l3fu" role="2Oq$k0">
                <node concept="3TrEf2" id="1SBjBn2lf2n" role="2OqNvi">
                  <ref role="3Tt5mk" to="kdzh:1SBjBn2fSyM" />
                </node>
                <node concept="0GJ7k" id="1SBjBn2l37r" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="19QsrPtyVDq">
    <property role="3GE5qa" value="Layout" />
    <ref role="1XX52x" to="kdzh:19QsrPtyVhw" resolve="BuildLayout_ToBinaryCopyProcessor" />
    <node concept="3EZMnI" id="19QsrPtyZ7i" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhY19" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      </node>
      <node concept="3F0ifn" id="6R_3WZ2ZYX_" role="3EZMnx">
        <property role="3F0ifm" value="(strip implementation)" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        <node concept="pkWqt" id="6R_3WZ2ZZwo" role="pqm2j">
          <node concept="3clFbS" id="6R_3WZ2ZZwp" role="2VODD2">
            <node concept="3clFbF" id="6R_3WZ303rB" role="3cqZAp">
              <node concept="2OqwBi" id="6R_3WZ303zH" role="3clFbG">
                <node concept="pncrf" id="6R_3WZ303rA" role="2Oq$k0" />
                <node concept="3TrcHB" id="6R_3WZ30fB7" role="2OqNvi">
                  <ref role="3TsBF5" to="kdzh:6R_3WZ2ZFMa" resolve="stripImplementation" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="19QsrPtyZ7l" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6R_3WZ30k0Q" role="6VMZX">
      <node concept="l2Vlx" id="6R_3WZ30k0R" role="2iSdaV" />
      <node concept="3F0ifn" id="6R_3WZ30kfK" role="3EZMnx">
        <property role="3F0ifm" value="strip implementation:" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
      </node>
      <node concept="3F0A7n" id="6R_3WZ30kfP" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:6R_3WZ2ZFMa" resolve="stripImplementation" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="24CrdeL71pR">
    <property role="3GE5qa" value="Project.Sources" />
    <ref role="1XX52x" to="kdzh:24CrdeKWBto" resolve="BuildMps_ModuleTestSource" />
    <node concept="3EZMnI" id="24CrdeL71Zg" role="2wV5jI">
      <node concept="3F0ifn" id="24CrdeL78U6" role="3EZMnx">
        <property role="3F0ifm" value="tests" />
        <ref role="1k5W1q" to="ot6o:hwW5xkg" resolve="keyword" />
      </node>
      <node concept="3F1sOY" id="24CrdeL72$A" role="3EZMnx">
        <ref role="1NtTu8" to="kdzh:24CrdeKWCDg" />
      </node>
      <node concept="l2Vlx" id="24CrdeL71Zj" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="6ogfLD6h$PE">
    <property role="TrG5h" value="SourcesKindComponent" />
    <ref role="1XX52x" to="kdzh:2L4pT56gD3R" resolve="BuildMps_Solution" />
    <node concept="3EZMnI" id="6ogfLD6h$PF" role="2wV5jI">
      <ref role="1ERwB7" node="eYcmk9TgYx" resolve="delete_sourcesKind" />
      <node concept="3F0ifn" id="6ogfLD6h$PG" role="3EZMnx">
        <property role="3F0ifm" value="(with" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
      </node>
      <node concept="3F0A7n" id="6ogfLD6h$PH" role="3EZMnx">
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        <ref role="1NtTu8" to="kdzh:eYcmk9RcI2" resolve="sourcesKind" />
        <node concept="pkWqt" id="4BLpc15fffS" role="pqm2j">
          <node concept="3clFbS" id="4BLpc15ffxZ" role="2VODD2">
            <node concept="3clFbF" id="4BLpc15fosm" role="3cqZAp">
              <node concept="2OqwBi" id="4BLpc15fGdO" role="3clFbG">
                <node concept="17RvpY" id="4BLpc15fJJJ" role="2OqNvi" />
                <node concept="2OqwBi" id="4BLpc15foB8" role="2Oq$k0">
                  <node concept="3TrcHB" id="4BLpc15fE0M" role="2OqNvi">
                    <ref role="3TsBF5" to="kdzh:eYcmk9RcI2" resolve="sourcesKind" />
                  </node>
                  <node concept="pncrf" id="4BLpc15fosl" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPxyj" id="6uoRODjTakw" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0ifn" id="4BLpc15fKrd" role="3EZMnx">
        <property role="3F0ifm" value="sources" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        <node concept="pkWqt" id="4BLpc15fRQI" role="pqm2j">
          <node concept="3clFbS" id="4BLpc15fRQJ" role="2VODD2">
            <node concept="3clFbF" id="4BLpc15fRQR" role="3cqZAp">
              <node concept="2OqwBi" id="4BLpc15fYu9" role="3clFbG">
                <node concept="17RlXB" id="4BLpc15g1Mq" role="2OqNvi" />
                <node concept="2OqwBi" id="4BLpc15fS1D" role="2Oq$k0">
                  <node concept="3TrcHB" id="4BLpc15fWh7" role="2OqNvi">
                    <ref role="3TsBF5" to="kdzh:eYcmk9RcI2" resolve="sourcesKind" />
                  </node>
                  <node concept="pncrf" id="4BLpc15fRQQ" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="OXEIz" id="4BLpc15iu4X" role="P5bDN">
          <node concept="1ou48o" id="4BLpc15iu4Y" role="OY2wv">
            <property role="1ezIyd" value="custom" />
            <node concept="2ZThk1" id="4BLpc15iu4Z" role="1eyP2E">
              <ref role="2ZWj4r" to="kdzh:eYcmk9QOkj" resolve="BuildMps_ModuleSourcesKind" />
            </node>
            <node concept="3GJtP1" id="4BLpc15iu50" role="1ou48n">
              <node concept="3clFbS" id="4BLpc15iu51" role="2VODD2">
                <node concept="3clFbF" id="4BLpc15iu52" role="3cqZAp">
                  <node concept="3HcIyF" id="4BLpc15iu53" role="3clFbG">
                    <ref role="3HcIyG" to="kdzh:eYcmk9QOkj" resolve="BuildMps_ModuleSourcesKind" />
                    <node concept="3HdYuk" id="4BLpc15iu54" role="3Hdvt7" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1ouSdP" id="4BLpc15iu55" role="1ou48m">
              <node concept="3clFbS" id="4BLpc15iu56" role="2VODD2">
                <node concept="3clFbF" id="4BLpc15iu57" role="3cqZAp">
                  <node concept="2OqwBi" id="4BLpc15iu58" role="3clFbG">
                    <node concept="tyxLq" id="4BLpc15iu59" role="2OqNvi">
                      <node concept="3GLrbK" id="4BLpc15iu5a" role="tz02z" />
                    </node>
                    <node concept="2OqwBi" id="4BLpc15iu5b" role="2Oq$k0">
                      <node concept="3TrcHB" id="4BLpc15iu5c" role="2OqNvi">
                        <ref role="3TsBF5" to="kdzh:eYcmk9RcI2" resolve="sourcesKind" />
                      </node>
                      <node concept="3GMtW1" id="4BLpc15iu5d" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="6VE3a" id="4BLpc15iu5e" role="1ezQQy">
              <node concept="3clFbS" id="4BLpc15iu5f" role="2VODD2">
                <node concept="3clFbF" id="4BLpc15iu5g" role="3cqZAp">
                  <node concept="3cpWs3" id="4BLpc15iu5h" role="3clFbG">
                    <node concept="Xl_RD" id="4BLpc15iu5i" role="3uHU7w">
                      <property role="Xl_RC" value=")" />
                    </node>
                    <node concept="3cpWs3" id="4BLpc15iu5j" role="3uHU7B">
                      <node concept="Xl_RD" id="4BLpc15iu5k" role="3uHU7B">
                        <property role="Xl_RC" value="(with " />
                      </node>
                      <node concept="2OqwBi" id="4BLpc15iu5l" role="3uHU7w">
                        <node concept="305NjN" id="4BLpc15iu5m" role="2OqNvi" />
                        <node concept="3GLrbK" id="4BLpc15iu5n" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPxyj" id="6uoRODjTaGm" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0ifn" id="6ogfLD6h$PI" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        <node concept="11L4FC" id="6ogfLD6oAI_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="VPM3Z" id="6ogfLD6h$PJ" role="3F10Kt">
        <property role="VOm3f" value="false" />
      </node>
      <node concept="l2Vlx" id="6ogfLD6h$PM" role="2iSdaV" />
      <node concept="OXEIz" id="6ogfLD6h$Q3" role="P5bDN">
        <node concept="1ou48o" id="6ogfLD6h$Q4" role="OY2wv">
          <property role="1ezIyd" value="custom" />
          <node concept="2ZThk1" id="6ogfLD6h$Q5" role="1eyP2E">
            <ref role="2ZWj4r" to="kdzh:eYcmk9QOkj" resolve="BuildMps_ModuleSourcesKind" />
          </node>
          <node concept="3GJtP1" id="6ogfLD6h$Q6" role="1ou48n">
            <node concept="3clFbS" id="6ogfLD6h$Q7" role="2VODD2">
              <node concept="3clFbF" id="6ogfLD6h$Q8" role="3cqZAp">
                <node concept="3HcIyF" id="6ogfLD6h$Q9" role="3clFbG">
                  <ref role="3HcIyG" to="3ior:4zlO3QTanjR" resolve="BuildSource_JavaContentFolderKind" />
                  <node concept="3HdYuk" id="6ogfLD6h$Qa" role="3Hdvt7" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1ouSdP" id="6ogfLD6h$Qb" role="1ou48m">
            <node concept="3clFbS" id="6ogfLD6h$Qc" role="2VODD2">
              <node concept="3clFbF" id="6ogfLD6h$Qd" role="3cqZAp">
                <node concept="2OqwBi" id="6ogfLD6h$Qe" role="3clFbG">
                  <node concept="tyxLq" id="6ogfLD6h$Qf" role="2OqNvi">
                    <node concept="3GLrbK" id="6ogfLD6h$Qg" role="tz02z" />
                  </node>
                  <node concept="2OqwBi" id="6ogfLD6h$Qh" role="2Oq$k0">
                    <node concept="3TrcHB" id="6ogfLD6h$Qi" role="2OqNvi">
                      <ref role="3TsBF5" to="kdzh:eYcmk9RcI2" resolve="sourcesKind" />
                    </node>
                    <node concept="3GMtW1" id="6ogfLD6h$Qj" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="6VE3a" id="6ogfLD6h$Qk" role="1ezQQy">
            <node concept="3clFbS" id="6ogfLD6h$Ql" role="2VODD2">
              <node concept="3clFbF" id="6ogfLD6h$Qm" role="3cqZAp">
                <node concept="3cpWs3" id="6ogfLD6h$Qn" role="3clFbG">
                  <node concept="Xl_RD" id="6ogfLD6h$Qo" role="3uHU7w">
                    <property role="Xl_RC" value=")" />
                  </node>
                  <node concept="3cpWs3" id="6ogfLD6h$Qp" role="3uHU7B">
                    <node concept="Xl_RD" id="6ogfLD6h$Qq" role="3uHU7B">
                      <property role="Xl_RC" value="(with " />
                    </node>
                    <node concept="2OqwBi" id="6ogfLD6h$Qr" role="3uHU7w">
                      <node concept="305NjN" id="6ogfLD6h$Qs" role="2OqNvi" />
                      <node concept="3GLrbK" id="6ogfLD6h$Qt" role="2Oq$k0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="eYcmk9TgYx">
    <property role="3GE5qa" value="Project" />
    <property role="TrG5h" value="delete_sourcesKind" />
    <ref role="1h_SK9" to="kdzh:2L4pT56gD3R" resolve="BuildMps_Solution" />
    <node concept="1hA7zw" id="eYcmk9TgYy" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="eYcmk9TgYz" role="1hA7z_">
        <node concept="3clFbS" id="eYcmk9TgY$" role="2VODD2">
          <node concept="3clFbF" id="eYcmk9TgYD" role="3cqZAp">
            <node concept="2OqwBi" id="eYcmk9TqRI" role="3clFbG">
              <node concept="tyxLq" id="eYcmk9Tswq" role="2OqNvi">
                <node concept="3HcIyF" id="eYcmk9YHev" role="tz02z">
                  <ref role="3HcIyG" to="kdzh:eYcmk9QOkj" resolve="BuildMps_ModuleSourcesKind" />
                  <node concept="3HdYuL" id="eYcmk9YHfU" role="3Hdvt7">
                    <ref role="3HdYuM" to="kdzh:eYcmk9QOli" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="eYcmk9Th9n" role="2Oq$k0">
                <node concept="3TrcHB" id="eYcmk9TkHI" role="2OqNvi">
                  <ref role="3TsBF5" to="kdzh:eYcmk9RcI2" resolve="sourcesKind" />
                </node>
                <node concept="0IXxy" id="eYcmk9TgYC" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4LHG7OIlM3q">
    <property role="3GE5qa" value="Project" />
    <ref role="1XX52x" to="kdzh:4LHG7OIlEyO" resolve="BuildMps_Generator" />
    <node concept="3EZMnI" id="4LHG7OIlTcV" role="2wV5jI">
      <node concept="PMmxH" id="4LHG7OIlTcW" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="1k5W1q" to="o2va:16Vg0jOctJb" resolve="projectPartKeyword" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="OXEIz" id="4LHG7OIlTcX" role="P5bDN">
          <node concept="UkePV" id="4LHG7OIlTcY" role="OY2wv">
            <ref role="Ul1FP" to="3ior:6qcrfIJFdK8" resolve="BuildProjectPart" />
          </node>
        </node>
        <node concept="VPxyj" id="4LHG7OIlTcZ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="4LHG7OIlTd0" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3EZMnI" id="4LHG7OIlTd1" role="3EZMnx">
        <node concept="VPM3Z" id="4LHG7OIlTd2" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="4LHG7OIlTd3" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <node concept="11LMrY" id="4LHG7OIlTd4" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0A7n" id="4LHG7OIlTd5" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:hS0KzPOSqb" resolve="uuid" />
        </node>
        <node concept="3F0ifn" id="4LHG7OIlTd6" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <node concept="11L4FC" id="4LHG7OIlTd7" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2V7CMv" id="4LHG7OIlTd8" role="3F10Kt">
            <property role="2V7CMs" value="ext_3_RTransform" />
          </node>
          <node concept="VPxyj" id="4LHG7OIlTd9" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="4LHG7OIlTda" role="2iSdaV" />
        <node concept="pkWqt" id="4LHG7OIlTdb" role="pqm2j">
          <node concept="3clFbS" id="4LHG7OIlTdc" role="2VODD2">
            <node concept="3clFbF" id="4LHG7OIlTdd" role="3cqZAp">
              <node concept="3fqX7Q" id="4LHG7OIlTde" role="3clFbG">
                <node concept="2OqwBi" id="4LHG7OIlTdf" role="3fr31v">
                  <node concept="pncrf" id="4LHG7OIlTdg" role="2Oq$k0" />
                  <node concept="2qgKlT" id="4LHG7OIlTdh" role="2OqNvi">
                    <ref role="37wK5l" to="2txq:7gAtt1ju6Jy" resolve="isCompact" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="4LHG7OIlTdi" role="3EZMnx">
        <node concept="3F0ifn" id="Kfbl0tIXeS" role="3EZMnx">
          <property role="3F0ifm" value="source language" />
        </node>
        <node concept="1iCGBv" id="Kfbl0tIXf7" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:Kfbl0tIRdc" />
          <node concept="1sVBvm" id="Kfbl0tIXf8" role="1sWHZn">
            <node concept="3F0A7n" id="Kfbl0tIXfi" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="lj46D" id="4LHG7OIlTdj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pVoyu" id="4LHG7OIlTdk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="4LHG7OIlTdl" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="4LHG7OIlTdn" role="2iSdaV" />
        <node concept="pkWqt" id="7YI57w6l28J" role="pqm2j">
          <node concept="3clFbS" id="7YI57w6l28K" role="2VODD2">
            <node concept="3clFbF" id="7YI57w6l28S" role="3cqZAp">
              <node concept="3fqX7Q" id="7YI57w6l9Aj" role="3clFbG">
                <node concept="2OqwBi" id="7YI57w6l9Al" role="3fr31v">
                  <node concept="1mIQ4w" id="7YI57w6l9Am" role="2OqNvi">
                    <node concept="chp4Y" id="7YI57w6l9An" role="cj9EA">
                      <ref role="cht4Q" to="kdzh:2L4pT56gD3S" resolve="BuildMps_Language" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7YI57w6l9Ao" role="2Oq$k0">
                    <node concept="1mfA1w" id="7YI57w6l9Ap" role="2OqNvi" />
                    <node concept="pncrf" id="7YI57w6l9Aq" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="4LHG7OIlTdx" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <node concept="l2Vlx" id="4LHG7OIlTdy" role="2iSdaV" />
        <node concept="3F0ifn" id="4LHG7OIlTdz" role="3EZMnx">
          <property role="3F0ifm" value="content:" />
          <ref role="1k5W1q" to="ot6o:hwW5xkg" resolve="keyword" />
          <node concept="2V7CMv" id="4LHG7OIlTd$" role="3F10Kt">
            <property role="2V7CMs" value="ext_4_RTransform" />
          </node>
        </node>
        <node concept="3F0ifn" id="4LHG7OIlTd_" role="3EZMnx">
          <property role="3F0ifm" value="(do not compile)" />
          <ref role="1k5W1q" to="ot6o:hwW5xkg" resolve="keyword" />
          <ref role="1ERwB7" node="1jjYQYSiQZf" resolve="delete_doNotCompile" />
          <node concept="pkWqt" id="4LHG7OIlTdA" role="pqm2j">
            <node concept="3clFbS" id="4LHG7OIlTdB" role="2VODD2">
              <node concept="3clFbF" id="4LHG7OIlTdC" role="3cqZAp">
                <node concept="2OqwBi" id="4LHG7OIlTdD" role="3clFbG">
                  <node concept="pncrf" id="4LHG7OIlTdE" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4LHG7OIlTdF" role="2OqNvi">
                    <ref role="3TsBF5" to="kdzh:1jjYQYSiGok" resolve="doNotCompile" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="pVoyu" id="4LHG7OIlTdG" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="4LHG7OIlTdH" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="lj46D" id="4LHG7OIlTdI" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="4LHG7OIlTdJ" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F2HdR" id="4LHG7OIlTdK" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:4zCbl23d1OL" />
          <node concept="l2Vlx" id="4LHG7OIlTdL" role="2czzBx" />
          <node concept="lj46D" id="4LHG7OIlTdM" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="4LHG7OIlTdN" role="2czzBI">
            <property role="ilYzB" value="&lt;no sources&gt;" />
            <node concept="VPxyj" id="4LHG7OIlTdO" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="ljvvj" id="4LHG7OIlTdP" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pj6Ft" id="4LHG7OIlTdQ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pVoyu" id="4LHG7OIlTdR" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="4LHG7OIlTdS" role="3EZMnx">
          <property role="3F0ifm" value="dependencies:" />
          <ref role="1k5W1q" to="ot6o:hwW5xkg" resolve="keyword" />
          <node concept="ljvvj" id="4LHG7OIlTdT" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="4LHG7OIlTdU" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:4zCbl23d1MS" />
          <node concept="pj6Ft" id="4LHG7OIlTdV" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="4LHG7OIlTdW" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="l2Vlx" id="4LHG7OIlTdX" role="2czzBx" />
          <node concept="3F0ifn" id="4LHG7OIlTdY" role="2czzBI">
            <property role="3F0ifm" value="" />
            <property role="ilYzB" value="&lt;no dependencies&gt;" />
            <node concept="VPxyj" id="4LHG7OIlTdZ" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="pVoyu" id="4LHG7OIlTe0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="4LHG7OIlTe1" role="pqm2j">
          <node concept="3clFbS" id="4LHG7OIlTe2" role="2VODD2">
            <node concept="3clFbF" id="4LHG7OIlTe3" role="3cqZAp">
              <node concept="3fqX7Q" id="4LHG7OIlTe4" role="3clFbG">
                <node concept="2OqwBi" id="4LHG7OIlTe5" role="3fr31v">
                  <node concept="pncrf" id="4LHG7OIlTe6" role="2Oq$k0" />
                  <node concept="2qgKlT" id="4LHG7OIlTe7" role="2OqNvi">
                    <ref role="37wK5l" to="2txq:7gAtt1ju6Jy" resolve="isCompact" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4LHG7OIlTe8" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="pVoyu" id="4LHG7OIlTe9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="4LHG7OIlTea" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="4LHG7OIm27a" role="6VMZX">
      <node concept="2iRkQZ" id="4LHG7OIm27b" role="2iSdaV" />
      <node concept="pkWqt" id="4LHG7OIm27c" role="pqm2j">
        <node concept="3clFbS" id="4LHG7OIm27d" role="2VODD2">
          <node concept="3clFbF" id="4LHG7OIm27e" role="3cqZAp">
            <node concept="2OqwBi" id="4LHG7OIm27f" role="3clFbG">
              <node concept="pncrf" id="4LHG7OIm27g" role="2Oq$k0" />
              <node concept="2qgKlT" id="4LHG7OIm27h" role="2OqNvi">
                <ref role="37wK5l" to="2txq:7gAtt1ju6Jy" resolve="isCompact" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="4LHG7OIm27i" role="3EZMnx">
        <node concept="l2Vlx" id="4LHG7OIm27j" role="2iSdaV" />
        <node concept="VPM3Z" id="4LHG7OIm27k" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="4LHG7OIm27l" role="3EZMnx">
          <property role="3F0ifm" value="uuid:" />
          <ref role="1k5W1q" to="ot6o:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F0A7n" id="4LHG7OIm27m" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:hS0KzPOSqb" resolve="uuid" />
        </node>
      </node>
      <node concept="3EZMnI" id="4LHG7OIm27n" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <node concept="l2Vlx" id="4LHG7OIm27o" role="2iSdaV" />
        <node concept="3F0ifn" id="4LHG7OIm27p" role="3EZMnx">
          <property role="3F0ifm" value="content:" />
          <ref role="1k5W1q" to="ot6o:hwW5xkg" resolve="keyword" />
          <node concept="2V7CMv" id="4LHG7OIm27q" role="3F10Kt">
            <property role="2V7CMs" value="ext_4_RTransform" />
          </node>
        </node>
        <node concept="3F0ifn" id="4LHG7OIm27r" role="3EZMnx">
          <property role="3F0ifm" value="(do not compile)" />
          <ref role="1k5W1q" to="ot6o:hwW5xkg" resolve="keyword" />
          <ref role="1ERwB7" node="1jjYQYSiQZf" resolve="delete_doNotCompile" />
          <node concept="pkWqt" id="4LHG7OIm27s" role="pqm2j">
            <node concept="3clFbS" id="4LHG7OIm27t" role="2VODD2">
              <node concept="3clFbF" id="4LHG7OIm27u" role="3cqZAp">
                <node concept="2OqwBi" id="4LHG7OIm27v" role="3clFbG">
                  <node concept="pncrf" id="4LHG7OIm27w" role="2Oq$k0" />
                  <node concept="3TrcHB" id="4LHG7OIm27x" role="2OqNvi">
                    <ref role="3TsBF5" to="kdzh:1jjYQYSiGok" resolve="doNotCompile" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="pVoyu" id="4LHG7OIm27y" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="4LHG7OIm27z" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="lj46D" id="4LHG7OIm27$" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="4LHG7OIm27_" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F2HdR" id="4LHG7OIm27A" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:4zCbl23d1OL" />
          <node concept="l2Vlx" id="4LHG7OIm27B" role="2czzBx" />
          <node concept="lj46D" id="4LHG7OIm27C" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="3F0ifn" id="4LHG7OIm27D" role="2czzBI">
            <property role="ilYzB" value="&lt;no sources&gt;" />
            <node concept="VPxyj" id="4LHG7OIm27E" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="ljvvj" id="4LHG7OIm27F" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pj6Ft" id="4LHG7OIm27G" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pVoyu" id="4LHG7OIm27H" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="4LHG7OIm27I" role="3EZMnx">
          <property role="3F0ifm" value="dependencies:" />
          <ref role="1k5W1q" to="ot6o:hwW5xkg" resolve="keyword" />
          <node concept="ljvvj" id="4LHG7OIm27J" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="4LHG7OIm27K" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:4zCbl23d1MS" />
          <node concept="pj6Ft" id="4LHG7OIm27L" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="4LHG7OIm27M" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="l2Vlx" id="4LHG7OIm27N" role="2czzBx" />
          <node concept="3F0ifn" id="4LHG7OIm27O" role="2czzBI">
            <property role="3F0ifm" value="" />
            <property role="ilYzB" value="&lt;no dependencies&gt;" />
            <node concept="VPxyj" id="4LHG7OIm27P" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="pVoyu" id="4LHG7OIm27Q" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3Iy_$1rs440">
    <property role="3GE5qa" value="Project" />
    <ref role="1XX52x" to="kdzh:3Iy_$1rrNGr" resolve="BuildMps_GeneratorOptions" />
    <node concept="3EZMnI" id="3Iy_$1rs641" role="2wV5jI">
      <node concept="3F0ifn" id="3Iy_$1rs6Em" role="3EZMnx">
        <property role="3F0ifm" value="generator options" />
        <ref role="1k5W1q" to="o2va:16Vg0jOctJb" resolve="projectPartKeyword" />
      </node>
      <node concept="3F0A7n" id="3Iy_$1rs6Es" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="&lt;project default&gt;" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="ljvvj" id="3Iy_$1rs6Z5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="3Iy_$1rs7V_" role="3EZMnx">
        <node concept="VPM3Z" id="3Iy_$1rs7VB" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="lj46D" id="3Iy_$1rs8RE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="l2Vlx" id="3Iy_$1rs7VC" role="2iSdaV" />
        <node concept="3F0ifn" id="3Iy_$1rs8fa" role="3EZMnx">
          <property role="3F0ifm" value="strict mode" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F0A7n" id="3Iy_$1rs8yC" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:3Iy_$1rrR8c" resolve="strict" />
          <node concept="ljvvj" id="3Iy_$1rs8Te" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3Iy_$1rs8To" role="3EZMnx">
          <property role="3F0ifm" value="multiple threads" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F0A7n" id="3Iy_$1rs8TC" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:3Iy_$1rrR8e" resolve="parallel" />
          <node concept="ljvvj" id="3Iy_$1rs9xU" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3EZMnI" id="3Iy_$1rs9_2" role="3EZMnx">
          <node concept="VPM3Z" id="3Iy_$1rs9_4" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="3Iy_$1rsrYl" role="3EZMnx">
            <property role="3F0ifm" value="number of threads" />
            <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
          </node>
          <node concept="3F0A7n" id="3Iy_$1rssn8" role="3EZMnx">
            <ref role="1NtTu8" to="kdzh:3Iy_$1rrR8h" resolve="parallelThreads" />
            <node concept="ljvvj" id="3Iy_$1rss_1" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="l2Vlx" id="3Iy_$1rs9_7" role="2iSdaV" />
          <node concept="pkWqt" id="3Iy_$1rs9SD" role="pqm2j">
            <node concept="3clFbS" id="3Iy_$1rs9SE" role="2VODD2">
              <node concept="3clFbF" id="3Iy_$1rsg_a" role="3cqZAp">
                <node concept="2OqwBi" id="3Iy_$1rsgI7" role="3clFbG">
                  <node concept="pncrf" id="3Iy_$1rsg_9" role="2Oq$k0" />
                  <node concept="3TrcHB" id="3Iy_$1rsrIt" role="2OqNvi">
                    <ref role="3TsBF5" to="kdzh:3Iy_$1rrR8e" resolve="parallel" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="3Iy_$1rs9y7" role="3EZMnx">
          <property role="3F0ifm" value="inplace transform" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F0A7n" id="3Iy_$1rs9z9" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:3Iy_$1rs43$" resolve="inplace" />
          <node concept="ljvvj" id="3Iy_$1rs9$M" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="3qD9ch0rlJ_" role="3EZMnx">
          <property role="3F0ifm" value="hide warnings" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F0A7n" id="3qD9ch0rlJA" role="3EZMnx">
          <property role="39s7Ar" value="true" />
          <ref role="1NtTu8" to="kdzh:3qD9ch0rlvN" resolve="hideWarnings" />
          <node concept="ljvvj" id="3qD9ch0rlJB" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="5EKZnAKZGYD" role="3EZMnx">
          <property role="3F0ifm" value="resort to static references" />
          <ref role="1k5W1q" to="o2va:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F0A7n" id="5EKZnAKZGYB" role="3EZMnx">
          <property role="39s7Ar" value="true" />
          <ref role="1NtTu8" to="kdzh:5EKZnAKZFdP" resolve="createStaticRefs" />
          <node concept="ljvvj" id="5EKZnAKZGYC" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3Iy_$1rw17p" role="3EZMnx">
        <node concept="ljvvj" id="3Iy_$1rw1lH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11L4FC" id="3Iy_$1rw1nj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="3Iy_$1rw1oY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="3Iy_$1rs6nd" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="FnaIS$F9JB">
    <property role="3GE5qa" value="Project.Branding" />
    <ref role="1XX52x" to="kdzh:FnaIS$Et1J" resolve="BuildMps_BrandingStats" />
    <node concept="3EZMnI" id="FnaIS$F9KD" role="2wV5jI">
      <node concept="l2Vlx" id="FnaIS$F9KE" role="2iSdaV" />
      <node concept="3F0ifn" id="FnaIS$F9KF" role="3EZMnx">
        <property role="3F0ifm" value="statistics" />
        <ref role="1k5W1q" to="ot6o:hwW5xkg" resolve="keyword" />
        <node concept="ljvvj" id="FnaIS$F9KG" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="FnaIS$F9KH" role="3EZMnx">
        <node concept="VPM3Z" id="FnaIS$F9KI" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="FnaIS$F9KJ" role="2iSdaV" />
        <node concept="lj46D" id="FnaIS$F9KK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="FnaIS$F9KL" role="3EZMnx">
          <property role="3F0ifm" value="service" />
          <ref role="1k5W1q" to="ot6o:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="FnaIS$F9KM" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:FnaIS$Exao" />
          <node concept="ljvvj" id="FnaIS$F9KN" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="FnaIS$F9KO" role="3EZMnx">
          <property role="3F0ifm" value="settings" />
          <ref role="1k5W1q" to="ot6o:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="FnaIS$F9KP" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:FnaIS$Exan" />
          <node concept="ljvvj" id="FnaIS$F9KQ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="FnaIS$Fak6">
    <property role="3GE5qa" value="Project.Branding" />
    <ref role="1XX52x" to="kdzh:FnaIS$F0fo" resolve="BuildMps_BrandingCompany" />
    <node concept="3EZMnI" id="FnaIS$FaHh" role="2wV5jI">
      <node concept="l2Vlx" id="FnaIS$FaHi" role="2iSdaV" />
      <node concept="3F0ifn" id="FnaIS$FaHj" role="3EZMnx">
        <property role="3F0ifm" value="company" />
        <ref role="1k5W1q" to="ot6o:hwW5xkg" resolve="keyword" />
        <node concept="ljvvj" id="FnaIS$FaHk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="FnaIS$FaHl" role="3EZMnx">
        <node concept="VPM3Z" id="FnaIS$FaHm" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="l2Vlx" id="FnaIS$FaHn" role="2iSdaV" />
        <node concept="lj46D" id="FnaIS$FaHo" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="FnaIS$FaHp" role="3EZMnx">
          <property role="3F0ifm" value="name" />
          <ref role="1k5W1q" to="ot6o:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="FnaIS$FaHq" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:FnaIS$F0fx" />
          <node concept="ljvvj" id="FnaIS$FaHr" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="FnaIS$FaHs" role="3EZMnx">
          <property role="3F0ifm" value="url" />
          <ref role="1k5W1q" to="ot6o:hwW5xkg" resolve="keyword" />
        </node>
        <node concept="3F1sOY" id="FnaIS$FaHt" role="3EZMnx">
          <ref role="1NtTu8" to="kdzh:FnaIS$F0fy" />
          <node concept="ljvvj" id="FnaIS$FaHu" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

