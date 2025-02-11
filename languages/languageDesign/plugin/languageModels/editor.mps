<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c89590363(jetbrains.mps.lang.plugin.editor)">
  <persistence version="9" />
  <languages>
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="0" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tp4k" ref="r:00000000-0000-4000-0000-011c89590368(jetbrains.mps.lang.plugin.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tp4s" ref="r:00000000-0000-4000-0000-011c89590360(jetbrains.mps.lang.plugin.behavior)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang()" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="fyhk" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps(MPS.Core/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="la0d" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.keymaps(MPS.Editor/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="7a0s" ref="r:2af017c2-293f-4ebb-99f3-81e353b3d6e6(jetbrains.mps.editor.runtime)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1176899348742" name="jetbrains.mps.lang.editor.structure.QueryFunction_ImagePath" flags="in" index="4EIwk" />
      <concept id="1198489924438" name="jetbrains.mps.lang.editor.structure.CellModel_Block" flags="sg" stub="8104358048506730066" index="b$f91">
        <child id="1198489985045" name="header" index="b$u42" />
        <child id="1198489993734" name="body" index="b$wch" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450555" name="gridLayout" index="2czwfM" />
        <property id="1140524450554" name="vertical" index="2czwfN" />
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <property id="1140524450556" name="usesBraces" index="2czwfP" />
        <property id="1160590307797" name="usesFolding" index="S$F3r" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
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
      <concept id="1239814640496" name="jetbrains.mps.lang.editor.structure.CellLayout_VerticalGrid" flags="nn" index="2EHx9g" />
      <concept id="1160493135005" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyValues_GetValues" flags="in" index="MLZmj" />
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz">
        <child id="1164824815888" name="cellMenuPart" index="OY2wv" />
      </concept>
      <concept id="1164833692343" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyValues" flags="ng" index="PvTIS">
        <child id="1164833692344" name="valuesFunction" index="PvTIR" />
      </concept>
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1214317859050" name="jetbrains.mps.lang.editor.structure.LayoutConstraintStyleClassItem" flags="ln" index="2UZ17K">
        <property id="1214317859051" name="layoutConstraint" index="2UZ17L" />
      </concept>
      <concept id="1214320119173" name="jetbrains.mps.lang.editor.structure.SideTransformAnchorTagStyleClassItem" flags="ln" index="2V7CMv">
        <property id="1214320119174" name="tag" index="2V7CMs" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186414949600" name="jetbrains.mps.lang.editor.structure.AutoDeletableStyleClassItem" flags="ln" index="VPRnO" />
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1235999440492" name="jetbrains.mps.lang.editor.structure.HorizontalAlign" flags="ln" index="37jFXN">
        <property id="1235999920262" name="align" index="37lx6p" />
      </concept>
      <concept id="1103016434866" name="jetbrains.mps.lang.editor.structure.CellModel_JComponent" flags="sg" stub="8104358048506731196" index="3gTLQM">
        <child id="1176475119347" name="componentProvider" index="3FoqZy" />
      </concept>
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <reference id="1139535219968" name="applicableConcept" index="1h_SK9" />
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <property id="1139537298254" name="description" index="1hHO97" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="ln" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139744628335" name="jetbrains.mps.lang.editor.structure.CellModel_Image" flags="sg" stub="8104358048506731195" index="1u4HXA">
        <child id="1176899909521" name="imagePathProvider" index="4GRq3" />
      </concept>
      <concept id="1180615838666" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyPostfixHints" flags="ng" index="3yc0Fo">
        <child id="1180615838667" name="postfixesFunction" index="3yc0Fp" />
      </concept>
      <concept id="1180616057533" name="jetbrains.mps.lang.editor.structure.CellMenuPart_PropertyPostfixHints_GetPostfixes" flags="in" index="3ycQeJ" />
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1215007883204" name="jetbrains.mps.lang.editor.structure.PaddingLeftStyleClassItem" flags="ln" index="3$7fVu" />
      <concept id="1215007897487" name="jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem" flags="ln" index="3$7jql" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1139852716018" name="noTargetText" index="1$x2rV" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <property id="1140114345053" name="allowEmptyText" index="1O74Pk" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <reference id="1139959269582" name="actionMap" index="1ERwB7" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="1164826688380" name="menuDescriptor" index="P5bDN" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1139416841293" name="usesBraces" index="1ayjP4" />
        <property id="1073389446425" name="vertical" index="3EZMnw" />
        <property id="1073389446426" name="gridLayout" index="3EZMnz" />
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1176474535556" name="jetbrains.mps.lang.editor.structure.QueryFunction_JComponent" flags="in" index="3Fmcul" />
      <concept id="1163613822479" name="jetbrains.mps.lang.editor.structure.CellMenuPart_Abstract_editedNode" flags="nn" index="3GMtW1" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="1088612959204" name="jetbrains.mps.lang.editor.structure.CellModel_Alternation" flags="sg" stub="8104358048506729361" index="1QoScp">
        <property id="1088613081987" name="vertical" index="1QpmdY" />
        <child id="1145918517974" name="alternationCondition" index="3e4ffs" />
        <child id="1088612958265" name="ifTrueCellModel" index="1QoS34" />
        <child id="1088612973955" name="ifFalseCellModel" index="1QoVPY" />
      </concept>
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
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
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872830" name="jetbrains.mps.lang.actions.structure.NF_Link_SetNewChildOperation" flags="nn" index="2DeJnY" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="5253134957341870583" name="jetbrains.mps.lang.smodel.structure.PropertyNameRefExpression" flags="nn" index="pqAIu">
        <reference id="5253134957341870585" name="propertyDeclaration" index="pqAIg" />
        <reference id="5253134957341870584" name="conceptDeclaration" index="pqAIh" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <reference id="1140138128738" name="concept" index="1PxNhF" />
        <child id="1140138123956" name="leftExpression" index="1PxMeX" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165595910856" name="jetbrains.mps.baseLanguage.collections.structure.GetLastOperation" flags="nn" index="1yVyf7" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="hwtCPcv">
    <property role="3GE5qa" value="Actions.Groups.GroupMembers" />
    <ref role="1XX52x" to="tp4k:hwtCFDn" resolve="ActionInstance" />
    <node concept="3EZMnI" id="hzhYxxq" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="1iCGBv" id="hzhYxGa" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:hwtCJ9Z" />
        <node concept="1sVBvm" id="hzhYxGb" role="1sWHZn">
          <node concept="3F0A7n" id="hzhYxGc" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="hQJ_Jm7" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="VPM3Z" id="hQJ_Jm8" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="hQJ_Yxo" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
        </node>
        <node concept="3F2HdR" id="hQJ_RHh" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="tp4k:hQJ__c3" />
          <node concept="2iRfu4" id="i2ICeHL" role="2czzBx" />
        </node>
        <node concept="3F0ifn" id="hQJA44p" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
        </node>
        <node concept="pkWqt" id="hQJ_LUX" role="pqm2j">
          <node concept="3clFbS" id="hQJ_LUY" role="2VODD2">
            <node concept="3clFbF" id="hQJ_MKt" role="3cqZAp">
              <node concept="2OqwBi" id="hQJ_Ogw" role="3clFbG">
                <node concept="2OqwBi" id="hQJ_MWd" role="2Oq$k0">
                  <node concept="2OqwBi" id="hQJB36E" role="2Oq$k0">
                    <node concept="pncrf" id="hQJ_MKu" role="2Oq$k0" />
                    <node concept="3TrEf2" id="hQJB3m$" role="2OqNvi">
                      <ref role="3Tt5mk" to="tp4k:hwtCJ9Z" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="hQJB4c3" role="2OqNvi">
                    <ref role="3TtcxE" to="tp4k:hQJraAU" />
                  </node>
                </node>
                <node concept="3GX2aA" id="hQJ_ODd" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="i2ICeFF" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="i2ICeH5" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hwtD6uj">
    <property role="3GE5qa" value="Actions.Groups" />
    <ref role="1XX52x" to="tp4k:hwtC5zi" resolve="ActionGroupDeclaration" />
    <node concept="3EZMnI" id="hwtDpTk" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="hwtDrSk" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="7vZlS_8XFvA" role="3EZMnx">
          <property role="3F0ifm" value="(plugin.xml)" />
          <node concept="pkWqt" id="7vZlS_8XFvB" role="pqm2j">
            <node concept="3clFbS" id="7vZlS_8XFvC" role="2VODD2">
              <node concept="3clFbF" id="7vZlS_8XFvD" role="3cqZAp">
                <node concept="2OqwBi" id="7vZlS_8XFvE" role="3clFbG">
                  <node concept="pncrf" id="7vZlS_8XFvF" role="2Oq$k0" />
                  <node concept="3TrcHB" id="7vZlS_8XFvH" role="2OqNvi">
                    <ref role="3TsBF5" to="tp4k:5xxKcMGfQZ8" resolve="isPluginXmlGroup" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="hwtDtfh" role="3EZMnx">
          <property role="3F0ifm" value="group" />
          <node concept="VPM3Z" id="hEU$OZV" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0A7n" id="hwtDvaP" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="VPM3Z" id="hEU$POz" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2ICeGQ" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="6dadvKB5Wyt" role="3EZMnx">
        <node concept="VPM3Z" id="6dadvKB5Wyu" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="6dadvKB5Wyw" role="2iSdaV" />
        <node concept="3F0ifn" id="6dadvKB5Wyy" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="pkWqt" id="6dadvKB5Wyz" role="pqm2j">
            <node concept="3clFbS" id="6dadvKB5Wy$" role="2VODD2">
              <node concept="3clFbF" id="6dadvKB5Wy_" role="3cqZAp">
                <node concept="2OqwBi" id="6dadvKB5WyK" role="3clFbG">
                  <node concept="2OqwBi" id="6dadvKB5WyB" role="2Oq$k0">
                    <node concept="pncrf" id="6dadvKB5WyA" role="2Oq$k0" />
                    <node concept="2Xjw5R" id="6dadvKB5WyF" role="2OqNvi">
                      <node concept="1xMEDy" id="6dadvKB5WyG" role="1xVPHs">
                        <node concept="chp4Y" id="6dadvKB5WyJ" role="ri$Ld">
                          <ref role="cht4Q" to="tp4k:hwtC5zi" resolve="ActionGroupDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3x8VRR" id="6dadvKB5WyO" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3EZMnI" id="6dadvKB5WyQ" role="3EZMnx">
          <node concept="3EZMnI" id="6dadvKB5WzA" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3F0ifn" id="6dadvKB5WzB" role="3EZMnx">
              <property role="3F0ifm" value="is popup:" />
            </node>
            <node concept="3F0A7n" id="6dadvKB5WzC" role="3EZMnx">
              <ref role="1NtTu8" to="tp4k:hDXlLAK" resolve="isPopup" />
            </node>
            <node concept="VPM3Z" id="6dadvKB5WzD" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="6dadvKB5WzE" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="6dadvKB5WyT" role="3EZMnx">
            <property role="3EZMnw" value="true" />
            <node concept="3EZMnI" id="6dadvKB5WyU" role="3EZMnx">
              <property role="3EZMnw" value="false" />
              <node concept="VPM3Z" id="6dadvKB5WyV" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="3F0ifn" id="6dadvKB5WyW" role="3EZMnx">
                <property role="3F0ifm" value="caption:" />
                <node concept="VPM3Z" id="6dadvKB5WyX" role="3F10Kt">
                  <property role="VOm3f" value="false" />
                </node>
              </node>
              <node concept="3F0A7n" id="6dadvKB5WyY" role="3EZMnx">
                <property role="1O74Pk" value="true" />
                <property role="1$x2rV" value="&lt;no caption&gt;" />
                <ref role="1NtTu8" to="tp4k:hyf7t$N" resolve="caption" />
              </node>
              <node concept="2iRfu4" id="6dadvKB5WyZ" role="2iSdaV" />
            </node>
            <node concept="3EZMnI" id="6dadvKB5Wz0" role="3EZMnx">
              <property role="3EZMnw" value="false" />
              <node concept="VPM3Z" id="6dadvKB5Wz1" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="3F0ifn" id="6dadvKB5Wz2" role="3EZMnx">
                <property role="3F0ifm" value="mnemonic:" />
                <node concept="VPM3Z" id="6dadvKB5Wz3" role="3F10Kt">
                  <property role="VOm3f" value="false" />
                </node>
              </node>
              <node concept="3F0A7n" id="6dadvKB5Wz4" role="3EZMnx">
                <property role="1O74Pk" value="true" />
                <property role="1$x2rV" value="&lt;no mnemonic&gt;" />
                <ref role="1NtTu8" to="tp4k:hypbE5v" resolve="mnemonic" />
              </node>
              <node concept="2iRfu4" id="6dadvKB5Wz5" role="2iSdaV" />
            </node>
            <node concept="3EZMnI" id="6dadvKB5Wz6" role="3EZMnx">
              <property role="3EZMnw" value="false" />
              <node concept="VPM3Z" id="6dadvKB5Wz7" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="3F0ifn" id="6dadvKB5Wz8" role="3EZMnx">
                <property role="3F0ifm" value="is invisible when disabled:" />
                <node concept="VPM3Z" id="6dadvKB5Wz9" role="3F10Kt">
                  <property role="VOm3f" value="false" />
                </node>
              </node>
              <node concept="3F0A7n" id="6dadvKB5Wza" role="3EZMnx">
                <property role="1O74Pk" value="true" />
                <property role="1$x2rV" value="&lt;no mnemonic&gt;" />
                <ref role="1NtTu8" to="tp4k:hHrdrIt" resolve="isInvisibleWhenDisabled" />
              </node>
              <node concept="2iRfu4" id="6dadvKB5Wzb" role="2iSdaV" />
            </node>
            <node concept="pkWqt" id="6dadvKB5Wzc" role="pqm2j">
              <node concept="3clFbS" id="6dadvKB5Wzd" role="2VODD2">
                <node concept="3clFbF" id="6dadvKB5Wze" role="3cqZAp">
                  <node concept="2OqwBi" id="6dadvKB5Wzf" role="3clFbG">
                    <node concept="pncrf" id="6dadvKB5Wzg" role="2Oq$k0" />
                    <node concept="3TrcHB" id="6dadvKB5Wzh" role="2OqNvi">
                      <ref role="3TsBF5" to="tp4k:hDXlLAK" resolve="isPopup" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2iRkQZ" id="6dadvKB5Wzi" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="6dadvKB5Wzj" role="3EZMnx">
            <node concept="VPM3Z" id="6dadvKB5Wzk" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="6dadvKB5Wzl" role="3EZMnx">
            <property role="1$x2rV" value="&lt;contents&gt;" />
            <ref role="1NtTu8" to="tp4k:h$ftENW" />
          </node>
          <node concept="3EZMnI" id="6dadvKB5Wzm" role="3EZMnx">
            <property role="3EZMnw" value="true" />
            <node concept="3F0ifn" id="6dadvKB5Wzn" role="3EZMnx">
              <node concept="VPM3Z" id="6dadvKB5Wzo" role="3F10Kt" />
            </node>
            <node concept="PMmxH" id="6dadvKB5Wzp" role="3EZMnx">
              <ref role="PMmxG" node="hGhYsyC" resolve="ModificationsEditor" />
            </node>
            <node concept="pkWqt" id="6dadvKB5Wzq" role="pqm2j">
              <node concept="3clFbS" id="6dadvKB5Wzr" role="2VODD2">
                <node concept="3clFbF" id="6dadvKB5Wzs" role="3cqZAp">
                  <node concept="3clFbC" id="6dadvKB5Wzt" role="3clFbG">
                    <node concept="10Nm6u" id="6dadvKB5Wzu" role="3uHU7w" />
                    <node concept="2OqwBi" id="6dadvKB5Wzv" role="3uHU7B">
                      <node concept="pncrf" id="6dadvKB5Wzw" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="6dadvKB5Wzx" role="2OqNvi">
                        <node concept="1xMEDy" id="6dadvKB5Wzy" role="1xVPHs">
                          <node concept="chp4Y" id="6dadvKB5Wzz" role="ri$Ld">
                            <ref role="cht4Q" to="tp4k:hwtC5zi" resolve="ActionGroupDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2iRkQZ" id="6dadvKB5Wz$" role="2iSdaV" />
          </node>
          <node concept="2iRkQZ" id="6dadvKB5WyS" role="2iSdaV" />
        </node>
      </node>
      <node concept="2iRkQZ" id="i2ICeFy" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="5xxKcMGfQZa" role="6VMZX">
      <node concept="3EZMnI" id="hypbUGL" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="hypbVn1" role="3EZMnx">
          <property role="3F0ifm" value="isInternal:" />
        </node>
        <node concept="3F0A7n" id="hypbZ81" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:hypbKf4" resolve="isInternal" />
        </node>
        <node concept="2iRfu4" id="i2ICeGL" role="2iSdaV" />
        <node concept="pkWqt" id="i3tsjT5" role="pqm2j">
          <node concept="3clFbS" id="i3tsjT6" role="2VODD2">
            <node concept="3clFbF" id="i3tsvRX" role="3cqZAp">
              <node concept="2YIFZM" id="1H3cvSjMc1B" role="3clFbG">
                <ref role="1Pybhc" to="fyhk:~InternalFlag" resolve="InternalFlag" />
                <ref role="37wK5l" to="fyhk:~InternalFlag.isInternalMode():boolean" resolve="isInternalMode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="5xxKcMGfQZd" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="5xxKcMGfQZe" role="3EZMnx">
          <property role="3F0ifm" value="register via plugin.xml:" />
        </node>
        <node concept="3F0A7n" id="5xxKcMGfQZf" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:5xxKcMGfQZ8" resolve="isPluginXmlGroup" />
        </node>
        <node concept="2iRfu4" id="5xxKcMGfQZg" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="5xxKcMGfQZb" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hx0X6Yr">
    <property role="3GE5qa" value="Actions.Groups.GroupMembers" />
    <ref role="1XX52x" to="tp4k:hx0WQ29" resolve="GroupAnchor" />
    <node concept="3EZMnI" id="hx0X8pK" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="hx0X8Yq" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
      </node>
      <node concept="3F0A7n" id="hx0X9Zp" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="2iRfu4" id="i2ICeGj" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hx15guw">
    <property role="3GE5qa" value="Actions.Groups" />
    <ref role="1XX52x" to="tp4k:hwtT98d" resolve="ModificationStatement" />
    <node concept="3EZMnI" id="hx15i80" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="hx15otr" role="3EZMnx">
        <property role="3F0ifm" value="add to" />
      </node>
      <node concept="1iCGBv" id="hx15C6s" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:hwtU$xx" />
        <node concept="1sVBvm" id="hx15C6t" role="1sWHZn">
          <node concept="3F0A7n" id="hx15CIi" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hx1b_tt" role="3EZMnx">
        <property role="3F0ifm" value="at position" />
      </node>
      <node concept="1iCGBv" id="hyf8VF6" role="3EZMnx">
        <property role="1$x2rV" value="&lt;default&gt;" />
        <ref role="1NtTu8" to="tp4k:hyf8TaU" />
        <node concept="1sVBvm" id="hyf8VF7" role="1sWHZn">
          <node concept="3F0A7n" id="hyf8WE8" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="i2ICeF_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hxETZ$i">
    <property role="3GE5qa" value="Actions.Groups" />
    <ref role="1XX52x" to="tp4k:hxESbW1" resolve="InterfaceGroup" />
    <node concept="3EZMnI" id="hxEU5zo" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3EZMnI" id="hxEU5zp" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="hxEUfGL" role="3EZMnx">
          <property role="3F0ifm" value="bootstrap" />
          <node concept="VechU" id="hEZR8yY" role="3F10Kt">
            <property role="Vb096" value="red" />
          </node>
        </node>
        <node concept="3F0ifn" id="hxEU5zq" role="3EZMnx">
          <property role="3F0ifm" value="group" />
        </node>
        <node concept="3F0A7n" id="hxEU5zr" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="hxEUbPC" role="3EZMnx">
          <property role="3F0ifm" value="internal-id" />
        </node>
        <node concept="3F1sOY" id="hzmKMwh" role="3EZMnx">
          <property role="1$x2rV" value="&lt;id&gt;" />
          <ref role="1NtTu8" to="tp4k:hzmKDwC" />
        </node>
        <node concept="VPM3Z" id="hEU$P9R" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2ICeFO" role="2iSdaV" />
      </node>
      <node concept="3F1sOY" id="h$fFSnF" role="3EZMnx">
        <property role="1$x2rV" value="&lt;contents&gt;" />
        <ref role="1NtTu8" to="tp4k:h$fFXCB" />
      </node>
      <node concept="3F0ifn" id="hGhY2h8" role="3EZMnx">
        <node concept="VPM3Z" id="hGhY3GG" role="3F10Kt" />
      </node>
      <node concept="PMmxH" id="hGhYNcB" role="3EZMnx">
        <ref role="PMmxG" node="hGhYsyC" resolve="ModificationsEditor" />
      </node>
      <node concept="2iRkQZ" id="i2ICeGs" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="5xNU7znMJlQ" role="6VMZX">
      <node concept="3EZMnI" id="5xNU7znMJlZ" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="5xNU7znMJm0" role="3EZMnx">
          <property role="3F0ifm" value="register via plugin.xml:" />
        </node>
        <node concept="3F0A7n" id="5xNU7znMJm1" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:5xxKcMGfQZ8" resolve="isPluginXmlGroup" />
        </node>
        <node concept="2iRfu4" id="5xNU7znMJm2" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="5xNU7znMJm3" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hxFIv8L">
    <property role="3GE5qa" value="Actions.Groups.GroupModification.bootstrap" />
    <ref role="1XX52x" to="tp4k:hxFG8h3" resolve="InterfaceExtentionPoint" />
    <node concept="3EZMnI" id="hxFIFn4" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="hxFIFn5" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
      </node>
      <node concept="3F0ifn" id="hxFIOVU" role="3EZMnx">
        <property role="3F0ifm" value="bootstrap label" />
        <node concept="VechU" id="hEZR8nM" role="3F10Kt">
          <property role="Vb096" value="red" />
        </node>
      </node>
      <node concept="3F0A7n" id="hxFIFn6" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="hxFILjT" role="3EZMnx">
        <property role="3F0ifm" value="internal-id" />
      </node>
      <node concept="3F1sOY" id="hzmMiUI" role="3EZMnx">
        <property role="1$x2rV" value="&lt;id&gt;" />
        <ref role="1NtTu8" to="tp4k:hzmM6pQ" />
      </node>
      <node concept="2iRfu4" id="i2ICeFQ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hxJEG5Z">
    <property role="3GE5qa" value="Tool" />
    <ref role="1XX52x" to="tp4k:hwsEffU" resolve="ToolDeclaration" />
    <node concept="b$f91" id="h_iApFI" role="2wV5jI">
      <node concept="3EZMnI" id="h_iApFJ" role="b$wch">
        <property role="3EZMnw" value="true" />
        <node concept="3EZMnI" id="h_iApFN" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="h_iApFO" role="3EZMnx">
            <property role="3F0ifm" value="caption:" />
            <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
          </node>
          <node concept="3F0A7n" id="h_iApFP" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;use name&gt;" />
            <ref role="1NtTu8" to="tp4k:5FstybB4cVs" resolve="caption" />
          </node>
          <node concept="VPM3Z" id="hEU$Pov" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2ICeFk" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="h_iApFQ" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="h_iApFR" role="3EZMnx">
            <property role="3F0ifm" value="number:" />
            <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
          </node>
          <node concept="3F0A7n" id="h_iApFS" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;no&gt;" />
            <ref role="1NtTu8" to="tp4k:5FstybB4cWH" resolve="number" />
          </node>
          <node concept="3EZMnI" id="h_WxawU" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3F0ifn" id="h_WxcBA" role="3EZMnx">
              <property role="3F0ifm" value="(" />
              <node concept="3mYdg7" id="i17r84V" role="3F10Kt">
                <property role="1413C4" value="parenthesis" />
              </node>
              <node concept="VechU" id="hEZR8wq" role="3F10Kt">
                <property role="Vb096" value="lightGray" />
              </node>
            </node>
            <node concept="3F0ifn" id="h_WxawV" role="3EZMnx">
              <property role="3F0ifm" value="show keystroke: " />
              <node concept="VPM3Z" id="hEU$PS_" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="VechU" id="hEZR8_r" role="3F10Kt">
                <property role="Vb096" value="lightGray" />
              </node>
            </node>
            <node concept="1HlG4h" id="hPR1q2I" role="3EZMnx">
              <node concept="1HfYo3" id="hPR1q2J" role="1HlULh">
                <node concept="3TQlhw" id="hPR1q2K" role="1Hhtcw">
                  <node concept="3clFbS" id="hPR1q2L" role="2VODD2">
                    <node concept="3clFbF" id="hPR1q2M" role="3cqZAp">
                      <node concept="3cpWs3" id="hPR1q2N" role="3clFbG">
                        <node concept="Xl_RD" id="hPR1q2O" role="3uHU7B">
                          <property role="Xl_RC" value="Alt-" />
                        </node>
                        <node concept="2OqwBi" id="hPR1q2P" role="3uHU7w">
                          <node concept="pncrf" id="hPR1q2Q" role="2Oq$k0" />
                          <node concept="3TrcHB" id="hPR1q2R" role="2OqNvi">
                            <ref role="3TsBF5" to="tp4k:5FstybB4cWH" resolve="number" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="VPM3Z" id="hQ6uenA" role="3F10Kt" />
              <node concept="VechU" id="hQ6ufie" role="3F10Kt">
                <property role="Vb096" value="darkGray" />
              </node>
            </node>
            <node concept="3F0ifn" id="h_W$SGU" role="3EZMnx">
              <property role="3F0ifm" value=")" />
              <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
              <node concept="3mYdg7" id="i17rc24" role="3F10Kt">
                <property role="1413C4" value="parenthesis" />
              </node>
              <node concept="VechU" id="hEZR8zB" role="3F10Kt">
                <property role="Vb096" value="lightGray" />
              </node>
            </node>
            <node concept="pkWqt" id="h_Wxaxc" role="pqm2j">
              <node concept="3clFbS" id="h_Wxaxd" role="2VODD2">
                <node concept="3clFbF" id="h_Wxaxe" role="3cqZAp">
                  <node concept="2OqwBi" id="h_Wxaxf" role="3clFbG">
                    <node concept="2qgKlT" id="h_Wxaxg" role="2OqNvi">
                      <ref role="37wK5l" to="tp4s:5FstybB4d8v" resolve="hasNumber" />
                    </node>
                    <node concept="pncrf" id="h_Wxaxh" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="VPM3Z" id="hEU$OY1" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="i2ICeGy" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="hEU$Phw" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2ICeFS" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="h_V3g$o" role="3EZMnx">
          <node concept="3F0ifn" id="h_V3g$p" role="3EZMnx">
            <property role="3F0ifm" value="icon:" />
            <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
            <node concept="VPM3Z" id="hEU$Pq_" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="5T0Ssc9FREi" role="3EZMnx">
            <ref role="1NtTu8" to="tp4k:5T0Ssc9FAhp" />
          </node>
          <node concept="VPM3Z" id="hEU$P6W" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2ICeHj" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="2aGS$UDY7UN" role="3EZMnx">
          <node concept="3F0ifn" id="2aGS$UDY7UO" role="3EZMnx">
            <property role="3F0ifm" value="position:" />
            <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
            <node concept="VPM3Z" id="2aGS$UDY7UP" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0A7n" id="2aGS$UDY7UU" role="3EZMnx">
            <ref role="1NtTu8" to="tp4k:2aGS$UDXOxW" resolve="position" />
          </node>
          <node concept="VPM3Z" id="2aGS$UDY7UR" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="2aGS$UDY7US" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="hEUfxTZ" role="3EZMnx" />
        <node concept="3F2HdR" id="hHO7Njq" role="3EZMnx">
          <property role="2czwfN" value="true" />
          <ref role="1NtTu8" to="tp4k:5FstybB4cZ1" />
          <node concept="2iRkQZ" id="i2ICeHy" role="2czzBx" />
          <node concept="3F0ifn" id="52YnOubbUyq" role="2czzBI">
            <property role="3F0ifm" value="&lt;no tool fields&gt;" />
            <node concept="VechU" id="52YnOubcucy" role="3F10Kt">
              <property role="Vb096" value="gray" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="hHO7Njr" role="3EZMnx" />
        <node concept="3F1sOY" id="7FeWWZPuM1A" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:71t2ztIwl$I" />
        </node>
        <node concept="3F0ifn" id="hEUgBuv" role="3EZMnx" />
        <node concept="3F1sOY" id="7FeWWZPuM1C" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:71t2ztIwl$J" />
        </node>
        <node concept="3F0ifn" id="hEUgBux" role="3EZMnx" />
        <node concept="3F1sOY" id="hEUg7qX" role="3EZMnx">
          <property role="1$x2rV" value="&lt;getComponent block&gt;" />
          <ref role="1NtTu8" to="tp4k:hEUm5BQ" />
        </node>
        <node concept="3F0ifn" id="h_iApG1" role="3EZMnx" />
        <node concept="3F2HdR" id="hExraOH" role="3EZMnx">
          <property role="2czwfN" value="true" />
          <property role="2czwfO" value=" " />
          <ref role="1NtTu8" to="tp4k:5FstybB4cZ0" />
          <node concept="2iRkQZ" id="i2ICeHu" role="2czzBx" />
        </node>
        <node concept="VPM3Z" id="hEU$Q1R" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="i2ICeG5" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="hECdVch" role="b$u42">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="h_iApG9" role="3EZMnx">
          <property role="3F0ifm" value="tool" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        </node>
        <node concept="3F0A7n" id="hECdXsq" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no name&gt;" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPM3Z" id="hEU$PCZ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2V7CMv" id="hEVbLlm" role="3F10Kt">
            <property role="2V7CMs" value="default_RTransform" />
          </node>
        </node>
        <node concept="2iRfu4" id="i2ICeGw" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hxK62HT">
    <property role="3GE5qa" value="Tool.Methods" />
    <ref role="1XX52x" to="tp4k:hxK5Sx3" resolve="ToolInstanceExpression" />
    <node concept="3F0ifn" id="hxK63lv" role="2wV5jI">
      <property role="3F0ifm" value="instance" />
      <node concept="Vb9p2" id="hEUNQY_" role="3F10Kt">
        <property role="Vbekb" value="BOLD" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hya7L_D">
    <property role="3GE5qa" value="Actions.Groups.GroupMembers" />
    <ref role="1XX52x" to="tp4k:hya7GQa" resolve="Separator" />
    <node concept="3F0ifn" id="hya7MOj" role="2wV5jI">
      <property role="3F0ifm" value="&lt;---&gt;" />
    </node>
  </node>
  <node concept="24kQdi" id="hyS4WJe">
    <property role="3GE5qa" value="Actions.Action.Parameters" />
    <ref role="1XX52x" to="tp4k:hyS4$9Z" resolve="ActionParameterDeclaration" />
    <node concept="3EZMnI" id="hyS4YJr" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F1sOY" id="hyS4Z9l" role="3EZMnx">
        <ref role="1NtTu8" to="tpee:4VkOLwjf83e" />
      </node>
      <node concept="PMmxH" id="112RIkggjAP" role="3EZMnx">
        <ref role="PMmxG" node="112RIkggjcW" resolve="ActionParameter_NameCellComponent" />
      </node>
      <node concept="3F0ifn" id="hyS5eQ_" role="3EZMnx">
        <property role="3F0ifm" value="key:" />
        <node concept="VPM3Z" id="hEU$P$5" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3$7fVu" id="56vFGQuZ6B7" role="3F10Kt">
          <property role="3$6WeP" value="0" />
        </node>
      </node>
      <node concept="1HlG4h" id="112RIkghKJC" role="3EZMnx">
        <node concept="1HfYo3" id="112RIkghKJD" role="1HlULh">
          <node concept="3TQlhw" id="112RIkghKJE" role="1Hhtcw">
            <node concept="3clFbS" id="112RIkghKJF" role="2VODD2">
              <node concept="3clFbF" id="112RIkgikZq" role="3cqZAp">
                <node concept="2OqwBi" id="112RIkgikZx" role="3clFbG">
                  <node concept="2OqwBi" id="112RIkgikZs" role="2Oq$k0">
                    <node concept="pncrf" id="112RIkgikZr" role="2Oq$k0" />
                    <node concept="2qgKlT" id="112RIkgil0v" role="2OqNvi">
                      <ref role="37wK5l" to="tp4s:112RIkgil0h" resolve="getFieldDeclaration" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="112RIkgikZA" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F2HdR" id="4VdA123c_l2" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="tp4k:4Ns790kX6MM" />
        <node concept="2iRfu4" id="4VdA123c_l3" role="2czzBx" />
      </node>
      <node concept="2iRfu4" id="cAZ8XCac7T" role="2iSdaV" />
    </node>
    <node concept="PMmxH" id="112RIkgil4_" role="6VMZX">
      <ref role="PMmxG" node="112RIkgil0Z" resolve="ActionParameter_Hint" />
    </node>
  </node>
  <node concept="24kQdi" id="hz2t5DM">
    <property role="3GE5qa" value="Actions.Action" />
    <ref role="1XX52x" to="tp4k:hz2pzaz" resolve="ActionType" />
    <node concept="3EZMnI" id="hz2t7Yw" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="6UEaXWpU7mz" role="3EZMnx">
        <property role="3F0ifm" value="action" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="3$7jql" id="6UEaXWpU7m$" role="3F10Kt">
          <property role="3$6WeP" value="0.0" />
        </node>
      </node>
      <node concept="3F0ifn" id="6UEaXWpU7m_" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" to="tpen:hF$iDz7" resolve="Bracket" />
        <node concept="11L4FC" id="6UEaXWpU7mA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="6UEaXWpU7mB" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="6UEaXWpU7mC" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:hz2pEjn" />
        <node concept="1sVBvm" id="6UEaXWpU7mD" role="1sWHZn">
          <node concept="3F0A7n" id="6UEaXWpU7mE" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="3$7jql" id="6UEaXWpU7mF" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6UEaXWpU7mG" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" to="tpen:hF$iDz7" resolve="Bracket" />
        <node concept="11L4FC" id="6UEaXWpU7mH" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="i2ICeFB" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hzgK6XR">
    <property role="3GE5qa" value="Actions.Action.Parameters" />
    <ref role="1XX52x" to="tp4k:hzgHZEN" resolve="ActionParameterReferenceOperation" />
    <node concept="1iCGBv" id="hzgK9xq" role="2wV5jI">
      <ref role="1NtTu8" to="tp4k:hzgISMZ" />
      <node concept="1sVBvm" id="hzgK9xr" role="1sWHZn">
        <node concept="3F0A7n" id="hzgKaMZ" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="3$7jql" id="hHhAHiN" role="3F10Kt">
            <property role="3$6WeP" value="0.0" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="h$ft__L">
    <property role="3GE5qa" value="Actions.Groups.GroupContents" />
    <ref role="1XX52x" to="tp4k:h$ftmJ5" resolve="ElementListContents" />
    <node concept="3EZMnI" id="h$fDkcb" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3F0ifn" id="h$fDlRF" role="3EZMnx">
        <property role="3F0ifm" value="contents" />
        <node concept="VPM3Z" id="i2O2QuH" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="h$fDkth" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="h$fDkti" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="hEU$Pph" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F2HdR" id="h$fDktj" role="3EZMnx">
          <property role="2czwfN" value="true" />
          <property role="S$F3r" value="true" />
          <property role="2czwfP" value="false" />
          <ref role="1NtTu8" to="tp4k:h$ftvUl" />
          <node concept="2iRkQZ" id="i2ICeHH" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="i2ICeGn" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2ICeH9" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="h$pLTRN">
    <property role="3GE5qa" value="Actions.Action" />
    <ref role="1XX52x" to="tp4k:h$pLAnk" resolve="KeyMapKeystroke" />
    <node concept="3EZMnI" id="h$pLU$i" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <property role="1ayjP4" value="false" />
      <node concept="3F0ifn" id="h$pLU$j" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="11LMrY" id="i1sKI0U" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="hEU$PRn" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3mYdg7" id="5suWGB1iDdb" role="3F10Kt">
          <property role="1413C4" value="mod" />
        </node>
      </node>
      <node concept="3F0A7n" id="h$pLU$k" role="3EZMnx">
        <property role="1O74Pk" value="true" />
        <property role="1$x2rV" value="any" />
        <ref role="1NtTu8" to="tp4k:h$pLAnl" resolve="modifiers" />
        <node concept="OXEIz" id="h$pLU$l" role="P5bDN">
          <node concept="PvTIS" id="h$pLU$m" role="OY2wv">
            <node concept="MLZmj" id="h$pLU$n" role="PvTIR">
              <node concept="3clFbS" id="h$pLU$o" role="2VODD2">
                <node concept="3cpWs8" id="19wSTnXYOds" role="3cqZAp">
                  <node concept="3cpWsn" id="19wSTnXYOdt" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <node concept="_YKpA" id="19wSTnXYOdk" role="1tU5fm">
                      <node concept="17QB3L" id="19wSTnXYOdn" role="_ZDj9" />
                    </node>
                    <node concept="2ShNRf" id="19wSTnXYOdu" role="33vP2m">
                      <node concept="Tc6Ow" id="19wSTnXYOdv" role="2ShVmc">
                        <node concept="17QB3L" id="19wSTnXYOdw" role="HW$YZ" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="19wSTnXYOiq" role="3cqZAp">
                  <node concept="2OqwBi" id="19wSTnXYP1N" role="3clFbG">
                    <node concept="X8dFx" id="19wSTnXYU$V" role="2OqNvi">
                      <node concept="2YIFZM" id="19wSTnYaEMJ" role="25WWJ7">
                        <ref role="37wK5l" to="la0d:~AWTKeymapHandler.getValidModifiers():java.util.List" resolve="getValidModifiers" />
                        <ref role="1Pybhc" to="la0d:~AWTKeymapHandler" resolve="AWTKeymapHandler" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="19wSTnXYOip" role="2Oq$k0">
                      <ref role="3cqZAo" node="19wSTnXYOdt" resolve="result" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="19wSTnXYVBS" role="3cqZAp">
                  <node concept="37vLTw" id="19wSTnXYOdx" role="3cqZAk">
                    <ref role="3cqZAo" node="19wSTnXYOdt" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VechU" id="hJmhZgY" role="3F10Kt">
          <property role="Vb096" value="blue" />
        </node>
      </node>
      <node concept="3F0ifn" id="h$pLU$_" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
        <node concept="11L4FC" id="i1sKDkJ" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="hEU$OW5" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3mYdg7" id="5suWGB1iDdd" role="3F10Kt">
          <property role="1413C4" value="mod" />
        </node>
      </node>
      <node concept="3F0ifn" id="hJmf_Wq" role="3EZMnx">
        <property role="3F0ifm" value="+" />
        <node concept="VPM3Z" id="hJmjN8a" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="11L4FC" id="hYoXVBP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="hYoXWFA" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="hJmfC9$" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="11LMrY" id="i1sKKhW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="hJmjPR3" role="3F10Kt" />
        <node concept="3mYdg7" id="5suWGB1iDdf" role="3F10Kt">
          <property role="1413C4" value="keycode" />
        </node>
      </node>
      <node concept="3F0A7n" id="h$pLU$A" role="3EZMnx">
        <property role="1$x2rV" value="&lt;keycode&gt;" />
        <ref role="1NtTu8" to="tp4k:h$pLAnm" resolve="keycode" />
        <node concept="OXEIz" id="h$pLU$B" role="P5bDN">
          <node concept="PvTIS" id="h$pLU$C" role="OY2wv">
            <node concept="MLZmj" id="h$pLU$D" role="PvTIR">
              <node concept="3clFbS" id="h$pLU$E" role="2VODD2">
                <node concept="3cpWs8" id="19wSTnXZ791" role="3cqZAp">
                  <node concept="3cpWsn" id="19wSTnXZ792" role="3cpWs9">
                    <property role="TrG5h" value="result" />
                    <node concept="_YKpA" id="19wSTnXZ793" role="1tU5fm">
                      <node concept="17QB3L" id="19wSTnXZ794" role="_ZDj9" />
                    </node>
                    <node concept="2ShNRf" id="19wSTnXZ795" role="33vP2m">
                      <node concept="Tc6Ow" id="19wSTnXZ796" role="2ShVmc">
                        <node concept="17QB3L" id="19wSTnXZ797" role="HW$YZ" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="19wSTnXZ798" role="3cqZAp">
                  <node concept="2OqwBi" id="19wSTnXZ799" role="3clFbG">
                    <node concept="X8dFx" id="19wSTnXZ79a" role="2OqNvi">
                      <node concept="2YIFZM" id="19wSTnXZ79b" role="25WWJ7">
                        <ref role="1Pybhc" to="la0d:~AWTKeymapHandler" resolve="AWTKeymapHandler" />
                        <ref role="37wK5l" to="la0d:~AWTKeymapHandler.getValidKeyCodes():java.util.List" resolve="getValidKeyCodes" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="19wSTnXZ79c" role="2Oq$k0">
                      <ref role="3cqZAo" node="19wSTnXZ792" resolve="result" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="19wSTnXZ79d" role="3cqZAp">
                  <node concept="37vLTw" id="19wSTnXZ79e" role="3cqZAk">
                    <ref role="3cqZAo" node="19wSTnXZ792" resolve="result" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VechU" id="hJmi3Wk" role="3F10Kt">
          <property role="Vb096" value="blue" />
        </node>
      </node>
      <node concept="3F0ifn" id="h$pLU$Y" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
        <node concept="11L4FC" id="i1sKEQT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VPM3Z" id="hEU$Prl" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3mYdg7" id="5suWGB1iDdh" role="3F10Kt">
          <property role="1413C4" value="keycode" />
        </node>
      </node>
      <node concept="2iRfu4" id="i2ICeFH" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="h$$4cTt">
    <property role="3GE5qa" value="Actions.Groups" />
    <ref role="1XX52x" to="tp4k:h$$3T5C" resolve="GroupType" />
    <node concept="3EZMnI" id="h$$4dmw" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="6UEaXWpU7sn" role="3EZMnx">
        <property role="3F0ifm" value="group" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="3$7jql" id="6UEaXWpU7so" role="3F10Kt">
          <property role="3$6WeP" value="0.0" />
        </node>
      </node>
      <node concept="3F0ifn" id="6UEaXWpU7sp" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" to="tpen:hF$iDz7" resolve="Bracket" />
        <node concept="11L4FC" id="6UEaXWpU7sq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="6UEaXWpU7sr" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="6UEaXWpU7ss" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:h$$3T5E" />
        <node concept="1sVBvm" id="6UEaXWpU7st" role="1sWHZn">
          <node concept="3F0A7n" id="6UEaXWpU7su" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="3$7jql" id="6UEaXWpU7sv" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6UEaXWpU7sw" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" to="tpen:hF$iDz7" resolve="Bracket" />
        <node concept="11L4FC" id="6UEaXWpU7sx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="i2ICeGl" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="h_xYnCF">
    <property role="3GE5qa" value="Tool" />
    <ref role="1XX52x" to="tp4k:h_xUVW$" resolve="ToolType" />
    <node concept="3EZMnI" id="h_xYoYC" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="6UEaXWpU7mc" role="3EZMnx">
        <property role="3F0ifm" value="tool" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="3$7jql" id="6UEaXWpU7md" role="3F10Kt">
          <property role="3$6WeP" value="0.0" />
        </node>
      </node>
      <node concept="3F0ifn" id="6UEaXWpU7me" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" to="tpen:hF$iDz7" resolve="Bracket" />
        <node concept="11L4FC" id="6UEaXWpU7mf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="6UEaXWpU7mg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="6UEaXWpU7mh" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:h_xYkIF" />
        <node concept="1sVBvm" id="6UEaXWpU7mi" role="1sWHZn">
          <node concept="3F0A7n" id="6UEaXWpU7mj" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="3$7jql" id="6UEaXWpU7mk" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6UEaXWpU7ml" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" to="tpen:hF$iDz7" resolve="Bracket" />
        <node concept="11L4FC" id="6UEaXWpU7mm" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="i2ICeGS" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hAOkvhQ">
    <property role="3GE5qa" value="Actions.Groups" />
    <ref role="1XX52x" to="tp4k:hAOkkHm" resolve="GetGroupOperation" />
    <node concept="3EZMnI" id="hAOk$6n" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="hAOk$n4" role="3EZMnx">
        <property role="3F0ifm" value="actionGroup" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="hAOkEAv" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" to="tpen:i18cmFm" resolve="BaseAngleBracket" />
      </node>
      <node concept="1iCGBv" id="hAOkFHm" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:hAOko$T" />
        <node concept="1sVBvm" id="hAOkFHn" role="1sWHZn">
          <node concept="3F0A7n" id="hAOkGhD" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="hAOkEOB" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" to="tpen:i18cmFm" resolve="BaseAngleBracket" />
      </node>
      <node concept="l2Vlx" id="i0NqqiE" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hB4jAeU">
    <property role="3GE5qa" value="Preference.Members" />
    <ref role="1XX52x" to="tp4k:hB4jfOQ" resolve="PersistentPropertyDeclaration" />
    <node concept="3EZMnI" id="hB4jJ3b" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F1sOY" id="hB4jJIy" role="3EZMnx">
        <ref role="1NtTu8" to="tpee:4VkOLwjf83e" />
      </node>
      <node concept="PMmxH" id="hB4lgEx" role="3EZMnx">
        <ref role="PMmxG" to="tpen:hcE9nLY" resolve="VariableDeclaration_NameCellComponent" />
        <ref role="1k5W1q" to="tpen:hshQ_OE" resolve="Field" />
        <ref role="1ERwB7" node="hB4o04a" resolve="PersistenPropertyDeclaration_Actions" />
      </node>
      <node concept="3EZMnI" id="hB4nIGr" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="pkWqt" id="hB4nOjK" role="pqm2j">
          <node concept="3clFbS" id="hB4nOjL" role="2VODD2">
            <node concept="3clFbF" id="hB4nOIH" role="3cqZAp">
              <node concept="3y3z36" id="hB4nQ0Z" role="3clFbG">
                <node concept="10Nm6u" id="hB4nQjz" role="3uHU7w" />
                <node concept="2OqwBi" id="hB4nOV6" role="3uHU7B">
                  <node concept="pncrf" id="hB4nOII" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hB4nPMk" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:fz3vP1I" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="hEU$PDD" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="hB4lmFn" role="3EZMnx">
          <property role="3F0ifm" value="=" />
          <ref role="1k5W1q" to="tpen:hF$iUjy" resolve="Operator" />
        </node>
        <node concept="3F1sOY" id="hB4lpdj" role="3EZMnx">
          <ref role="1NtTu8" to="tpee:fz3vP1I" />
        </node>
        <node concept="l2Vlx" id="i1BJ9pN" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="hB4lrsB" role="3EZMnx">
        <property role="3F0ifm" value=";" />
      </node>
      <node concept="l2Vlx" id="i1BJ9pO" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hB4lIUY">
    <property role="3GE5qa" value="Preference" />
    <ref role="1XX52x" to="tp4k:hB4j29J" resolve="PreferencesComponentDeclaration" />
    <node concept="b$f91" id="hB4lOE3" role="2wV5jI">
      <node concept="3EZMnI" id="hBxY2Bf" role="b$wch">
        <property role="3EZMnw" value="true" />
        <node concept="3F2HdR" id="hBxY2Bg" role="3EZMnx">
          <property role="2czwfN" value="true" />
          <ref role="1NtTu8" to="tp4k:hB4lFUm" />
          <node concept="3F0ifn" id="hBxY2Bh" role="2czzBI">
            <property role="3F0ifm" value="&lt;persistent properties&gt;" />
            <ref role="1k5W1q" to="tpen:hinfsDb" resolve="EmptyCell" />
          </node>
          <node concept="2iRkQZ" id="i2ICeHA" role="2czzBx" />
        </node>
        <node concept="3F0ifn" id="hBxY6uS" role="3EZMnx">
          <property role="3F0ifm" value="" />
          <node concept="VPM3Z" id="hEU$PcU" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="hBxY8$6" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no afterRead block&gt;" />
          <ref role="1NtTu8" to="tp4k:hBxXST0" />
        </node>
        <node concept="3F0ifn" id="hBxY9K8" role="3EZMnx">
          <property role="3F0ifm" value="" />
          <node concept="VPM3Z" id="hEU$PqR" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="hBxY9Ka" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no beforeWrite block&gt;" />
          <ref role="1NtTu8" to="tp4k:hBxXV_8" />
        </node>
        <node concept="3F0ifn" id="hByqDcp" role="3EZMnx">
          <property role="3F0ifm" value="" />
          <node concept="VPM3Z" id="hEU$PFD" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0ifn" id="hByFS8x" role="3EZMnx">
          <property role="3F0ifm" value="" />
          <node concept="VPM3Z" id="hEU$Pb0" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F2HdR" id="hByqHju" role="3EZMnx">
          <property role="2czwfN" value="true" />
          <ref role="1NtTu8" to="tp4k:hByq$DB" />
          <node concept="3F0ifn" id="hByqKGZ" role="2czzBI">
            <property role="3F0ifm" value="&lt;no preference pages&gt;" />
            <ref role="1k5W1q" to="tpen:hinfsDb" resolve="EmptyCell" />
          </node>
          <node concept="2iRkQZ" id="i2ICeHs" role="2czzBx" />
        </node>
        <node concept="VPM3Z" id="hEU$P8E" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="i2ICeF0" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="hB4lP8N" role="b$u42">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="hIiPpSM" role="3EZMnx">
          <property role="3F0ifm" value="preferences component" />
        </node>
        <node concept="3F0A7n" id="hB4lSlw" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="3$7jql" id="hIiNEnZ" role="3F10Kt">
            <property role="3$6WeP" value="0.0" />
          </node>
        </node>
        <node concept="2iRfu4" id="i2ICeHh" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="hB4o04a">
    <property role="TrG5h" value="PersistenPropertyDeclaration_Actions" />
    <property role="3GE5qa" value="Preference" />
    <ref role="1h_SK9" to="tp4k:hB4jfOQ" resolve="PersistentPropertyDeclaration" />
    <node concept="1hA7zw" id="hB4o2Dj" role="1h_SK8">
      <property role="1hHO97" value="Add initializer" />
      <property role="1hAc7j" value="right_transform_action_id" />
      <node concept="1hAIg9" id="hB4o2Dk" role="1hA7z_">
        <node concept="3clFbS" id="hB4o2Dl" role="2VODD2">
          <node concept="3clFbF" id="hB4o3DS" role="3cqZAp">
            <node concept="2OqwBi" id="hB4o4kY" role="3clFbG">
              <node concept="2OqwBi" id="hB4o3Q2" role="2Oq$k0">
                <node concept="0IXxy" id="hB4o3DT" role="2Oq$k0" />
                <node concept="3TrEf2" id="hB4o4cd" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpee:fz3vP1I" />
                </node>
              </node>
              <node concept="2DeJnY" id="5wUAOoBBfq1" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hB4qGCq">
    <property role="3GE5qa" value="Preference.Members" />
    <ref role="1XX52x" to="tp4k:hB4pF8E" resolve="PersistentPropertyReference" />
    <node concept="1iCGBv" id="hB4qJ7Y" role="2wV5jI">
      <ref role="1NtTu8" to="tp4k:hB4pZzc" />
      <node concept="1sVBvm" id="hB4qJ7Z" role="1sWHZn">
        <node concept="3F0A7n" id="hB4qJYx" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1k5W1q" to="tpen:hshQ_OE" resolve="Field" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="3$7jql" id="hIiNLHJ" role="3F10Kt">
            <property role="3$6WeP" value="0.0" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hB4AoS6">
    <property role="3GE5qa" value="Preference" />
    <ref role="1XX52x" to="tp4k:hB4_ZL$" resolve="PreferencesComponentType" />
    <node concept="3EZMnI" id="hB4ApUS" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="6UEaXWpU7mn" role="3EZMnx">
        <property role="3F0ifm" value="preferenceComponent" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="3$7jql" id="6UEaXWpU7mo" role="3F10Kt">
          <property role="3$6WeP" value="0.0" />
        </node>
      </node>
      <node concept="3F0ifn" id="6UEaXWpU7mp" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" to="tpen:hF$iDz7" resolve="Bracket" />
        <node concept="11L4FC" id="6UEaXWpU7mq" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="6UEaXWpU7mr" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="1iCGBv" id="6UEaXWpU7ms" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:hB4A7R8" />
        <node concept="1sVBvm" id="6UEaXWpU7mt" role="1sWHZn">
          <node concept="3F0A7n" id="6UEaXWpU7mu" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <node concept="3$7jql" id="6UEaXWpU7mv" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6UEaXWpU7mw" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" to="tpen:hF$iDz7" resolve="Bracket" />
        <node concept="11L4FC" id="6UEaXWpU7mx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="2iRfu4" id="i2ICeG_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hBy$sGE">
    <property role="3GE5qa" value="Preference.Page" />
    <ref role="1XX52x" to="tp4k:hByqquv" resolve="PreferencePage" />
    <node concept="b$f91" id="hBy$tr$" role="2wV5jI">
      <node concept="3EZMnI" id="hBy$GI5" role="b$wch">
        <property role="3EZMnw" value="true" />
        <node concept="3EZMnI" id="hBy_7LH" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="hBy_9cm" role="3EZMnx">
            <property role="3F0ifm" value="component" />
            <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
          </node>
          <node concept="3F0ifn" id="hByFANx" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hEU$Pjh" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2UZ17K" id="hEV2aGY" role="3F10Kt">
              <property role="2UZ17L" value="punctuation" />
            </node>
          </node>
          <node concept="3F1sOY" id="hBy_7LI" role="3EZMnx">
            <ref role="1NtTu8" to="tp4k:hByzN9J" />
          </node>
          <node concept="VPM3Z" id="hEU$PhS" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2ICeFe" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="hBy_nHi" role="3EZMnx">
          <node concept="3F0ifn" id="hBy_nHj" role="3EZMnx">
            <property role="3F0ifm" value="icon" />
            <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
            <node concept="VPM3Z" id="hEU$PT1" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="hByF_V_" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="hEU$PC$" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2UZ17K" id="hEV2aGv" role="3F10Kt">
              <property role="2UZ17L" value="punctuation" />
            </node>
          </node>
          <node concept="1QoScp" id="hBy_nHk" role="3EZMnx">
            <node concept="pkWqt" id="hBy_nHl" role="3e4ffs">
              <node concept="3clFbS" id="hBy_nHm" role="2VODD2">
                <node concept="3cpWs8" id="hI3uYWh" role="3cqZAp">
                  <node concept="3cpWsn" id="hI3uYWi" role="3cpWs9">
                    <property role="TrG5h" value="path" />
                    <node concept="17QB3L" id="hP3aza7" role="1tU5fm" />
                    <node concept="10Nm6u" id="hI3uYWk" role="33vP2m" />
                  </node>
                </node>
                <node concept="3cpWs8" id="hI3uYWl" role="3cqZAp">
                  <node concept="3cpWsn" id="hI3uYWm" role="3cpWs9">
                    <property role="TrG5h" value="module" />
                    <node concept="2OqwBi" id="256tImPkKGo" role="33vP2m">
                      <node concept="2JrnkZ" id="256tImPkKGr" role="2Oq$k0">
                        <node concept="2OqwBi" id="256tImPkKGs" role="2JrQYb">
                          <node concept="pncrf" id="256tImPkKGt" role="2Oq$k0" />
                          <node concept="I4A8Y" id="256tImPkKGu" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="liA8E" id="256tImPkKGp" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getModule():org.jetbrains.mps.openapi.module.SModule" resolve="getModule" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="hI3uYWn" role="1tU5fm">
                      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="hI3uYWq" role="3cqZAp">
                  <node concept="2ZW3vV" id="6tm98vZgFCQ" role="3clFbw">
                    <node concept="3uibUv" id="6tm98vZgHgK" role="2ZW6by">
                      <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                    </node>
                    <node concept="37vLTw" id="6tm98vZgF1L" role="2ZW6bz">
                      <ref role="3cqZAo" node="hI3uYWm" resolve="module" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="hI3uYWr" role="3clFbx">
                    <node concept="3clFbF" id="hI3uYWs" role="3cqZAp">
                      <node concept="37vLTI" id="hI3uYWt" role="3clFbG">
                        <node concept="2OqwBi" id="5vviDNw7pO0" role="37vLTx">
                          <node concept="2YIFZM" id="6tm98vZgvjv" role="2Oq$k0">
                            <ref role="37wK5l" to="18ew:~MacrosFactory.forModule(jetbrains.mps.project.AbstractModule):jetbrains.mps.util.MacroHelper" resolve="forModule" />
                            <ref role="1Pybhc" to="18ew:~MacrosFactory" resolve="MacrosFactory" />
                            <node concept="10QFUN" id="6tm98vZgJ7W" role="37wK5m">
                              <node concept="37vLTw" id="3GM_nagT_nN" role="10QFUP">
                                <ref role="3cqZAo" node="hI3uYWm" resolve="module" />
                              </node>
                              <node concept="3uibUv" id="6tm98vZgJ7T" role="10QFUM">
                                <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="5vviDNw7pO5" role="2OqNvi">
                            <ref role="37wK5l" to="18ew:~MacroHelper.expandPath(java.lang.String):java.lang.String" resolve="expandPath" />
                            <node concept="2OqwBi" id="hI3uYWv" role="37wK5m">
                              <node concept="pncrf" id="hI3uYWw" role="2Oq$k0" />
                              <node concept="3TrcHB" id="hI3v0tu" role="2OqNvi">
                                <ref role="3TsBF5" to="tp4k:hByz$4F" resolve="icon" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="3GM_nagTrW_" role="37vLTJ">
                          <ref role="3cqZAo" node="hI3uYWi" resolve="path" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="hI3uYWD" role="3cqZAp">
                  <node concept="1Wc70l" id="hI3uYWE" role="3clFbG">
                    <node concept="3y3z36" id="hI3uYWF" role="3uHU7B">
                      <node concept="10Nm6u" id="hI3uYWG" role="3uHU7w" />
                      <node concept="37vLTw" id="3GM_nagTsAR" role="3uHU7B">
                        <ref role="3cqZAo" node="hI3uYWi" resolve="path" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4RnppgkjRAV" role="3uHU7w">
                      <node concept="2OqwBi" id="4RnppgkjRAP" role="2Oq$k0">
                        <node concept="2YIFZM" id="4RnppgkjRAO" role="2Oq$k0">
                          <ref role="37wK5l" to="3ju5:~FileSystem.getInstance():jetbrains.mps.vfs.FileSystem" resolve="getInstance" />
                          <ref role="1Pybhc" to="3ju5:~FileSystem" resolve="FileSystem" />
                        </node>
                        <node concept="liA8E" id="4RnppgkjRAT" role="2OqNvi">
                          <ref role="37wK5l" to="3ju5:~FileSystem.getFileByPath(java.lang.String):jetbrains.mps.vfs.IFile" resolve="getFileByPath" />
                          <node concept="37vLTw" id="3GM_nagTvHo" role="37wK5m">
                            <ref role="3cqZAo" node="hI3uYWi" resolve="path" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="4RnppgkjRAZ" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.exists():boolean" resolve="exists" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3F0ifn" id="hBy_nHF" role="1QoVPY">
              <property role="3F0ifm" value="&lt;no icon&gt;" />
              <ref role="1k5W1q" to="tpen:hinfsDb" resolve="EmptyCell" />
              <node concept="VechU" id="hEZR8m7" role="3F10Kt">
                <property role="Vb096" value="gray" />
              </node>
              <node concept="Vb9p2" id="1msw07ZG3f0" role="3F10Kt" />
            </node>
            <node concept="3EZMnI" id="hBy_nHG" role="1QoS34">
              <property role="3EZMnw" value="false" />
              <node concept="1u4HXA" id="hBy_nHH" role="3EZMnx">
                <node concept="4EIwk" id="hBy_nHI" role="4GRq3">
                  <node concept="3clFbS" id="hBy_nHJ" role="2VODD2">
                    <node concept="3clFbF" id="hBy_nHK" role="3cqZAp">
                      <node concept="2OqwBi" id="hBy_nHL" role="3clFbG">
                        <node concept="pncrf" id="hBy_nHM" role="2Oq$k0" />
                        <node concept="3TrcHB" id="hBy_r_A" role="2OqNvi">
                          <ref role="3TsBF5" to="tp4k:hByz$4F" resolve="icon" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3F0A7n" id="hBy_nHO" role="3EZMnx">
                <ref role="1NtTu8" to="tp4k:hByz$4F" resolve="icon" />
              </node>
              <node concept="VPM3Z" id="hEU$Pw1" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="2iRfu4" id="i2ICeFU" role="2iSdaV" />
            </node>
          </node>
          <node concept="3gTLQM" id="hBy_nHP" role="3EZMnx">
            <node concept="3Fmcul" id="hBy_nHQ" role="3FoqZy">
              <node concept="3clFbS" id="hBy_nHR" role="2VODD2">
                <node concept="3cpWs6" id="hBy_nHS" role="3cqZAp">
                  <node concept="2YIFZM" id="18qFtJYJDEO" role="3cqZAk">
                    <ref role="37wK5l" to="7a0s:1tyjSjK6Usc" resolve="createSelectIconButton" />
                    <ref role="1Pybhc" to="7a0s:6UDbxo8i0QW" resolve="EditorUtil" />
                    <node concept="pncrf" id="18qFtJYJDEP" role="37wK5m" />
                    <node concept="pqAIu" id="18qFtJYJDEQ" role="37wK5m">
                      <ref role="pqAIh" to="tp4k:hByqquv" resolve="PreferencePage" />
                      <ref role="pqAIg" to="tp4k:hByz$4F" resolve="icon" />
                    </node>
                    <node concept="1Q80Hx" id="18qFtJYJDER" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="VPM3Z" id="hEU$PIy" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="i2ICeGW" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="1msw07ZFyB_" role="3EZMnx">
          <node concept="VPM3Z" id="1msw07ZFyBA" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="1msw07ZFyBD" role="3EZMnx">
            <property role="3F0ifm" value="help topic" />
            <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
          </node>
          <node concept="3F0ifn" id="1msw07ZFyJ6" role="3EZMnx">
            <property role="3F0ifm" value=":" />
            <node concept="VPM3Z" id="1msw07ZFyJ7" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2UZ17K" id="1msw07ZFyJ8" role="3F10Kt">
              <property role="2UZ17L" value="punctuation" />
            </node>
          </node>
          <node concept="2iRfu4" id="1msw07ZFyBC" role="2iSdaV" />
          <node concept="3F0A7n" id="1msw07ZFyJa" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;default help topic&gt;" />
            <ref role="1NtTu8" to="tp4k:1msw07ZFuCh" resolve="helpTopic" />
          </node>
        </node>
        <node concept="3F0ifn" id="hBy_bQW" role="3EZMnx">
          <property role="3F0ifm" value="" />
          <node concept="VPM3Z" id="hEU$P_q" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="hBy_d20" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:hBy$9us" />
        </node>
        <node concept="3F0ifn" id="hBy_dOy" role="3EZMnx">
          <property role="3F0ifm" value="" />
          <node concept="VPM3Z" id="hEU$Q2B" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="hBy_fdR" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:hBy$egA" />
        </node>
        <node concept="3F0ifn" id="hIiUOXw" role="3EZMnx">
          <property role="3F0ifm" value="" />
          <node concept="VPM3Z" id="hIiUOXx" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="hIiUOXy" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:hBB8Lxa" />
        </node>
        <node concept="VPM3Z" id="hEU$PcX" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="i2ICeGF" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="hBy$uIs" role="b$u42">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="hIiX_pX" role="3EZMnx">
          <property role="3F0ifm" value="page" />
        </node>
        <node concept="3F0A7n" id="hBy$DPo" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="3$7jql" id="hIiXvdr" role="3F10Kt">
            <property role="3$6WeP" value="0.0" />
          </node>
        </node>
        <node concept="2iRfu4" id="i2ICeHb" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="hGhYsyC">
    <property role="TrG5h" value="ModificationsEditor" />
    <ref role="1XX52x" to="tp4k:hwtC5zi" resolve="ActionGroupDeclaration" />
    <node concept="3EZMnI" id="hGhY_HB" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="3F0ifn" id="hGhY_UO" role="3EZMnx">
        <property role="3F0ifm" value="modifications" />
        <node concept="VPM3Z" id="hGhY_UP" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3EZMnI" id="hGhY_UQ" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="hGhY_UR" role="3EZMnx">
          <property role="3F0ifm" value="  " />
          <node concept="VPM3Z" id="hGhY_US" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F2HdR" id="hGhY_UT" role="3EZMnx">
          <property role="2czwfN" value="true" />
          <ref role="1NtTu8" to="tp4k:hyf5YMa" />
          <node concept="2iRkQZ" id="i2ICeHw" role="2czzBx" />
        </node>
        <node concept="VPM3Z" id="hGhY_UU" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="i2ICeF7" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="i2ICeGJ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="hHDTlbj">
    <property role="3GE5qa" value="Actions.Action.Parameters" />
    <ref role="1XX52x" to="tp4k:hHDS2nw" resolve="ActionDataParameterDeclaration" />
    <node concept="3EZMnI" id="hHDUTdB" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="1HlG4h" id="hPR1pFJ" role="3EZMnx">
        <node concept="1HfYo3" id="hPR1pFK" role="1HlULh">
          <node concept="3TQlhw" id="hPR1pFL" role="1Hhtcw">
            <node concept="3clFbS" id="hPR1pFM" role="2VODD2">
              <node concept="3cpWs6" id="hPR1pFN" role="3cqZAp">
                <node concept="2OqwBi" id="hPR1pFO" role="3cqZAk">
                  <node concept="2OqwBi" id="hPR1pFP" role="2Oq$k0">
                    <node concept="pncrf" id="hPR1pFQ" role="2Oq$k0" />
                    <node concept="2qgKlT" id="112RIkgh9XU" role="2OqNvi">
                      <ref role="37wK5l" to="tp4s:112RIkggjzD" resolve="getType" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="hPR1pFS" role="2OqNvi">
                    <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="PMmxH" id="112RIkggjAN" role="3EZMnx">
        <ref role="PMmxG" node="112RIkggjcW" resolve="ActionParameter_NameCellComponent" />
      </node>
      <node concept="3F0ifn" id="hHDUXHz" role="3EZMnx">
        <property role="3F0ifm" value="key:" />
      </node>
      <node concept="1iCGBv" id="hHDVlkw" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:hHDUlRP" />
        <node concept="1sVBvm" id="hHDVlkx" role="1sWHZn">
          <node concept="3F0A7n" id="hHDVlMM" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F2HdR" id="4VdA123c_l5" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="tp4k:4Ns790kX6MM" />
        <node concept="2iRfu4" id="4VdA123c_l6" role="2czzBx" />
      </node>
      <node concept="2iRfu4" id="i2ICeFZ" role="2iSdaV" />
    </node>
    <node concept="PMmxH" id="112RIkgil4A" role="6VMZX">
      <ref role="PMmxG" node="112RIkgil0Z" resolve="ActionParameter_Hint" />
    </node>
  </node>
  <node concept="24kQdi" id="hHDTG_j">
    <property role="3GE5qa" value="Actions.Action.Parameters" />
    <ref role="1XX52x" to="tp4k:hHDTwJw" resolve="ActionDataParameterReferenceOperation" />
    <node concept="1iCGBv" id="hHDTIMS" role="2wV5jI">
      <ref role="1NtTu8" to="tp4k:hHDTwJz" />
      <node concept="1sVBvm" id="hHDTIMT" role="1sWHZn">
        <node concept="3F0A7n" id="hHDTJiF" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="3$7jql" id="hHSs1Xe" role="3F10Kt">
            <property role="3$6WeP" value="0.0" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hQJtEFS">
    <property role="3GE5qa" value="Actions.Action.Parameters" />
    <ref role="1XX52x" to="tp4k:hQJrA3z" resolve="ActionConstructorParameterReferenceOperation" />
    <node concept="1iCGBv" id="hQJtFTy" role="2wV5jI">
      <ref role="1NtTu8" to="tp4k:hQJrQ9I" />
      <node concept="1sVBvm" id="hQJtFTz" role="1sWHZn">
        <node concept="3F0A7n" id="hQJtGtf" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hQJxXJ7">
    <property role="3GE5qa" value="Actions.Action.Parameters" />
    <ref role="1XX52x" to="tp4k:hQJriJs" resolve="ActionConstructionParameterDeclaration" />
    <node concept="3EZMnI" id="hQJxYdb" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F1sOY" id="hQJxYdc" role="3EZMnx">
        <ref role="1NtTu8" to="tpee:4VkOLwjf83e" />
      </node>
      <node concept="3F0A7n" id="hQJxYdd" role="3EZMnx">
        <property role="1$x2rV" value="&lt;name&gt;" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="hQJxYdf" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
      </node>
      <node concept="2iRfu4" id="i2ICeEV" role="2iSdaV" />
    </node>
    <node concept="3F1sOY" id="hQK8ju6" role="6VMZX">
      <ref role="1NtTu8" to="tp4k:hQK2Ca0" />
      <node concept="pkWqt" id="hQK8lKP" role="pqm2j">
        <node concept="3clFbS" id="hQK8lKQ" role="2VODD2">
          <node concept="3clFbF" id="hQK8nFr" role="3cqZAp">
            <node concept="3fqX7Q" id="hQK8x2g" role="3clFbG">
              <node concept="2OqwBi" id="hQK8x2h" role="3fr31v">
                <node concept="2OqwBi" id="hQK8x2i" role="2Oq$k0">
                  <node concept="pncrf" id="hQK8x2j" role="2Oq$k0" />
                  <node concept="3TrEf2" id="hQK8x2k" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpee:4VkOLwjf83e" />
                  </node>
                </node>
                <node concept="1mIQ4w" id="hQK8x2l" role="2OqNvi">
                  <node concept="chp4Y" id="hQK8x2m" role="cj9EA">
                    <ref role="cht4Q" to="tpee:gWaQbR$" resolve="PrimitiveType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="hQJFvpt">
    <property role="3GE5qa" value="Actions.Groups.GroupContents.Statements" />
    <ref role="1XX52x" to="tp4k:hQJFkGB" resolve="AddStatement" />
    <node concept="3EZMnI" id="hQJFvYm" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="hQJFvYn" role="3EZMnx">
        <property role="3F0ifm" value="add" />
      </node>
      <node concept="3F1sOY" id="hQJFvYp" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:hQJFLi2" />
      </node>
      <node concept="3F0ifn" id="hQJFvYq" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="i0Nn3su" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="i2OjQhm">
    <property role="3GE5qa" value="Actions.Groups.GroupContents" />
    <ref role="1XX52x" to="tp4k:i2OiABj" resolve="UpdateGroupBlock" />
    <node concept="3EZMnI" id="i2OjU7l" role="2wV5jI">
      <node concept="3F1sOY" id="i2OjV1Y" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:i2Oj6Lr" />
      </node>
      <node concept="3F0ifn" id="i2OjVQg" role="3EZMnx" />
      <node concept="3F1sOY" id="i2OjXE0" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no enumerate function&gt;" />
        <ref role="1NtTu8" to="tp4k:i2Ojau1" />
      </node>
      <node concept="2iRkQZ" id="i2OjU7n" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1mJS7WEAV3a">
    <property role="3GE5qa" value="Actions.Keymaps" />
    <ref role="1XX52x" to="tp4k:1mJS7WEAV1P" resolve="KeymapChangesDeclaration" />
    <node concept="3EZMnI" id="1mJS7WEAVXQ" role="2wV5jI">
      <node concept="3EZMnI" id="1mJS7WEAVXT" role="3EZMnx">
        <node concept="3F0ifn" id="7vZlS_8XFvs" role="3EZMnx">
          <property role="3F0ifm" value="(plugin.xml)" />
          <node concept="pkWqt" id="7vZlS_8XFvt" role="pqm2j">
            <node concept="3clFbS" id="7vZlS_8XFvu" role="2VODD2">
              <node concept="3clFbF" id="7vZlS_8XFvv" role="3cqZAp">
                <node concept="2OqwBi" id="7vZlS_8XFvx" role="3clFbG">
                  <node concept="pncrf" id="7vZlS_8XFvw" role="2Oq$k0" />
                  <node concept="3TrcHB" id="7vZlS_8XFv_" role="2OqNvi">
                    <ref role="3TsBF5" to="tp4k:7vZlS_8XFtM" resolve="isPluginXmlKeymap" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="1mJS7WEAVXU" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="1mJS7WEAVXW" role="2iSdaV" />
        <node concept="3F0ifn" id="1mJS7WEAVXY" role="3EZMnx">
          <property role="3F0ifm" value="keymap changes" />
        </node>
        <node concept="3F0A7n" id="5suWGB1jkV$" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="5suWGB1jkVy" role="3EZMnx">
          <property role="3F0ifm" value="for" />
        </node>
        <node concept="3F0A7n" id="1mJS7WEAVY0" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:1mJS7WEAV39" resolve="keymap" />
        </node>
      </node>
      <node concept="3F0ifn" id="1mJS7WEAVY2" role="3EZMnx" />
      <node concept="3F2HdR" id="1mJS7WEAVY4" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:1mJS7WEAV1R" />
        <node concept="2EHx9g" id="1mJS7WEAVYh" role="2czzBx" />
      </node>
      <node concept="2iRkQZ" id="1mJS7WEAVXS" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="7vZlS_8XFvn" role="6VMZX">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="7vZlS_8XFvo" role="3EZMnx">
        <property role="3F0ifm" value="register via plugin.xml:" />
      </node>
      <node concept="3F0A7n" id="7vZlS_8XFvp" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:7vZlS_8XFtM" resolve="isPluginXmlKeymap" />
      </node>
      <node concept="2iRfu4" id="7vZlS_8XFvq" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1mJS7WEAVY6">
    <property role="3GE5qa" value="Actions.Keymaps.ShortcutChange" />
    <ref role="1XX52x" to="tp4k:1mJS7WEAV1Q" resolve="SimpleShortcutChange" />
    <node concept="3EZMnI" id="1mJS7WEAVY8" role="2wV5jI">
      <node concept="1iCGBv" id="1mJS7WEAVYb" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:5nN2_Ou2mLQ" />
        <node concept="1sVBvm" id="1mJS7WEAVYc" role="1sWHZn">
          <node concept="3F0A7n" id="1mJS7WEAVYe" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
        <node concept="3$7fVu" id="1mJS7WEBAS7" role="3F10Kt">
          <property role="3$6WeP" value="3" />
        </node>
      </node>
      <node concept="3F2HdR" id="5nN2_Ou2mMa" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:1mJS7WEAV1Y" />
        <node concept="2iRkQZ" id="5nN2_Ou2mMc" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="2uWhK$n4jDX" role="3EZMnx">
        <property role="3F0ifm" value=" " />
      </node>
      <node concept="2iRfu4" id="1mJS7WEAVYa" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5nN2_Ou2mKX">
    <property role="3GE5qa" value="Actions.Keymaps.ShortcutChange" />
    <ref role="1XX52x" to="tp4k:5nN2_Ou2mKU" resolve="ParameterizedShortcutChange" />
    <node concept="3EZMnI" id="6$w_9FKfSLA" role="2wV5jI">
      <node concept="2iRfu4" id="6$w_9FKfSLB" role="2iSdaV" />
      <node concept="1iCGBv" id="6$w_9FKfSLD" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:5nN2_Ou2mLQ" />
        <node concept="1sVBvm" id="6$w_9FKfSLE" role="1sWHZn">
          <node concept="3F0A7n" id="6$w_9FKfSLF" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
        <node concept="3$7fVu" id="6$w_9FKfSLG" role="3F10Kt">
          <property role="3$6WeP" value="3" />
        </node>
      </node>
      <node concept="b$f91" id="1_7GY3K_r6H" role="3EZMnx">
        <node concept="3F1sOY" id="1_7GY3K_r7y" role="b$wch">
          <ref role="1NtTu8" to="tpee:gyVODHa" />
        </node>
        <node concept="3EZMnI" id="1_7GY3K_r6J" role="b$u42">
          <node concept="1HlG4h" id="1_7GY3K_r6O" role="3EZMnx">
            <node concept="1HfYo3" id="1_7GY3K_r6P" role="1HlULh">
              <node concept="3TQlhw" id="1_7GY3K_r6Q" role="1Hhtcw">
                <node concept="3clFbS" id="1_7GY3K_r6R" role="2VODD2">
                  <node concept="3cpWs8" id="1_7GY3K_r6S" role="3cqZAp">
                    <node concept="3cpWsn" id="1_7GY3K_r6T" role="3cpWs9">
                      <property role="TrG5h" value="params" />
                      <node concept="3uibUv" id="1_7GY3K_r6U" role="1tU5fm">
                        <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                      </node>
                      <node concept="2ShNRf" id="1_7GY3K_r6V" role="33vP2m">
                        <node concept="1pGfFk" id="1_7GY3K_r6W" role="2ShVmc">
                          <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2Gpval" id="1_7GY3K_r6X" role="3cqZAp">
                    <node concept="2GrKxI" id="1_7GY3K_r6Y" role="2Gsz3X">
                      <property role="TrG5h" value="param" />
                    </node>
                    <node concept="2OqwBi" id="1_7GY3K_r6Z" role="2GsD0m">
                      <node concept="2OqwBi" id="1_7GY3K_r70" role="2Oq$k0">
                        <node concept="pncrf" id="1_7GY3K_r71" role="2Oq$k0" />
                        <node concept="3TrEf2" id="1_7GY3K_r72" role="2OqNvi">
                          <ref role="3Tt5mk" to="tp4k:5nN2_Ou2mLQ" />
                        </node>
                      </node>
                      <node concept="3Tsc0h" id="46zYegEFY6k" role="2OqNvi">
                        <ref role="3TtcxE" to="tp4k:hQJraAU" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1_7GY3K_r74" role="2LFqv$">
                      <node concept="3clFbF" id="1_7GY3K_r75" role="3cqZAp">
                        <node concept="2OqwBi" id="1_7GY3K_r76" role="3clFbG">
                          <node concept="37vLTw" id="3GM_nagTu44" role="2Oq$k0">
                            <ref role="3cqZAo" node="1_7GY3K_r6T" resolve="params" />
                          </node>
                          <node concept="liA8E" id="1_7GY3K_r78" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                            <node concept="2OqwBi" id="1_7GY3K_r79" role="37wK5m">
                              <node concept="2GrUjf" id="1_7GY3K_r7a" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="1_7GY3K_r6Y" resolve="param" />
                              </node>
                              <node concept="3TrcHB" id="1_7GY3K_r7b" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="5gWfW87ry2o" role="3cqZAp">
                        <node concept="3clFbS" id="5gWfW87ry2p" role="3clFbx">
                          <node concept="3clFbF" id="5gWfW87ry2K" role="3cqZAp">
                            <node concept="2OqwBi" id="5gWfW87ry2L" role="3clFbG">
                              <node concept="37vLTw" id="3GM_nagTBO2" role="2Oq$k0">
                                <ref role="3cqZAo" node="1_7GY3K_r6T" resolve="params" />
                              </node>
                              <node concept="liA8E" id="5gWfW87ry2N" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                                <node concept="Xl_RD" id="5gWfW87ry2O" role="37wK5m">
                                  <property role="Xl_RC" value=", " />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="5gWfW87ry2G" role="3clFbw">
                          <node concept="2GrUjf" id="5gWfW87ry2J" role="3uHU7w">
                            <ref role="2Gs0qQ" node="1_7GY3K_r6Y" resolve="param" />
                          </node>
                          <node concept="2OqwBi" id="5gWfW87ry2B" role="3uHU7B">
                            <node concept="2OqwBi" id="5gWfW87ry2y" role="2Oq$k0">
                              <node concept="2OqwBi" id="5gWfW87ry2t" role="2Oq$k0">
                                <node concept="pncrf" id="5gWfW87ry2s" role="2Oq$k0" />
                                <node concept="3TrEf2" id="5gWfW87ry2x" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tp4k:5nN2_Ou2mLQ" />
                                </node>
                              </node>
                              <node concept="3Tsc0h" id="46zYegEFY6l" role="2OqNvi">
                                <ref role="3TtcxE" to="tp4k:hQJraAU" />
                              </node>
                            </node>
                            <node concept="1yVyf7" id="5gWfW87ry2F" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1_7GY3K_r7r" role="3cqZAp">
                    <node concept="3cpWs3" id="1_7GY3K_r7s" role="3cqZAk">
                      <node concept="Xl_RD" id="1_7GY3K_r7t" role="3uHU7w">
                        <property role="Xl_RC" value=")" />
                      </node>
                      <node concept="3cpWs3" id="1_7GY3K_r7u" role="3uHU7B">
                        <node concept="37vLTw" id="3GM_nagT_5d" role="3uHU7w">
                          <ref role="3cqZAo" node="1_7GY3K_r6T" resolve="params" />
                        </node>
                        <node concept="Xl_RD" id="1_7GY3K_r7w" role="3uHU7B">
                          <property role="Xl_RC" value="(" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRfu4" id="1_7GY3K_r7x" role="2iSdaV" />
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="112RIkggjcW">
    <property role="TrG5h" value="ActionParameter_NameCellComponent" />
    <property role="3GE5qa" value="Actions.Action.Parameters" />
    <ref role="1XX52x" to="tp4k:hHNuAHW" resolve="ActionParameter" />
    <node concept="3F0A7n" id="112RIkggjyL" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      <node concept="OXEIz" id="112RIkggjyM" role="P5bDN">
        <node concept="3yc0Fo" id="112RIkggjyN" role="OY2wv">
          <node concept="3ycQeJ" id="112RIkggjyO" role="3yc0Fp">
            <node concept="3clFbS" id="112RIkggjyP" role="2VODD2">
              <node concept="3cpWs8" id="112RIkggjyQ" role="3cqZAp">
                <node concept="3cpWsn" id="112RIkggjyR" role="3cpWs9">
                  <property role="TrG5h" value="result" />
                  <node concept="_YKpA" id="112RIkggjyS" role="1tU5fm">
                    <node concept="17QB3L" id="112RIkggjyT" role="_ZDj9" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="112RIkggjyU" role="3cqZAp">
                <node concept="3cpWsn" id="112RIkggjyV" role="3cpWs9">
                  <property role="TrG5h" value="nodeType" />
                  <node concept="3Tqbb2" id="112RIkggjyW" role="1tU5fm">
                    <ref role="ehGHo" to="tpee:fz3vP1H" resolve="Type" />
                  </node>
                  <node concept="2OqwBi" id="112RIkggjyX" role="33vP2m">
                    <node concept="3GMtW1" id="112RIkggjyY" role="2Oq$k0" />
                    <node concept="2qgKlT" id="112RIkggjAL" role="2OqNvi">
                      <ref role="37wK5l" to="tp4s:112RIkggjzD" resolve="getType" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="112RIkggjz0" role="3cqZAp">
                <node concept="3clFbS" id="112RIkggjz1" role="3clFbx">
                  <node concept="3clFbF" id="112RIkggjz2" role="3cqZAp">
                    <node concept="37vLTI" id="112RIkggjz3" role="3clFbG">
                      <node concept="2OqwBi" id="112RIkggjz4" role="37vLTx">
                        <node concept="37vLTw" id="3GM_nagTwCl" role="2Oq$k0">
                          <ref role="3cqZAo" node="112RIkggjyV" resolve="nodeType" />
                        </node>
                        <node concept="2qgKlT" id="112RIkggjz6" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:hEwIzNo" resolve="getVariableSuffixes" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="3GM_nagTBBX" role="37vLTJ">
                        <ref role="3cqZAo" node="112RIkggjyR" resolve="result" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="112RIkggjz8" role="3clFbw">
                  <node concept="10Nm6u" id="112RIkggjz9" role="3uHU7w" />
                  <node concept="37vLTw" id="3GM_nagTyzD" role="3uHU7B">
                    <ref role="3cqZAo" node="112RIkggjyV" resolve="nodeType" />
                  </node>
                </node>
                <node concept="9aQIb" id="112RIkggjzb" role="9aQIa">
                  <node concept="3clFbS" id="112RIkggjzc" role="9aQI4">
                    <node concept="3clFbF" id="112RIkggjzd" role="3cqZAp">
                      <node concept="37vLTI" id="112RIkggjze" role="3clFbG">
                        <node concept="2ShNRf" id="112RIkggjzf" role="37vLTx">
                          <node concept="Tc6Ow" id="112RIkggjzg" role="2ShVmc">
                            <node concept="17QB3L" id="112RIkggjzh" role="HW$YZ" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="3GM_nagTuH2" role="37vLTJ">
                          <ref role="3cqZAo" node="112RIkggjyR" resolve="result" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3SKdUt" id="6pumIWoCG7R" role="3cqZAp">
                <node concept="3SKdUq" id="6pumIWoCG7S" role="3SKWNk">
                  <property role="3SKdUp" value="we need this because of smart input" />
                </node>
              </node>
              <node concept="3SKdUt" id="6pumIWoCG7J" role="3cqZAp">
                <node concept="3SKdUq" id="6pumIWoCG7K" role="3SKWNk">
                  <property role="3SKdUp" value="DO NOT REMOVE IT" />
                </node>
              </node>
              <node concept="3clFbJ" id="112RIkggjzl" role="3cqZAp">
                <node concept="3clFbS" id="112RIkggjzm" role="3clFbx">
                  <node concept="3clFbF" id="112RIkggjzn" role="3cqZAp">
                    <node concept="2OqwBi" id="112RIkggjzo" role="3clFbG">
                      <node concept="37vLTw" id="3GM_nagTtln" role="2Oq$k0">
                        <ref role="3cqZAo" node="112RIkggjyR" resolve="result" />
                      </node>
                      <node concept="TSZUe" id="112RIkggjzq" role="2OqNvi">
                        <node concept="2OqwBi" id="112RIkggjzr" role="25WWJ7">
                          <node concept="3GMtW1" id="112RIkggjzs" role="2Oq$k0" />
                          <node concept="3TrcHB" id="112RIkggjzt" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="112RIkggjzu" role="3clFbw">
                  <node concept="10Nm6u" id="112RIkggjzv" role="3uHU7w" />
                  <node concept="2OqwBi" id="112RIkggjzw" role="3uHU7B">
                    <node concept="3GMtW1" id="112RIkggjzx" role="2Oq$k0" />
                    <node concept="3TrcHB" id="112RIkggjzy" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="112RIkggjzz" role="3cqZAp">
                <node concept="37vLTw" id="3GM_nagT_G9" role="3cqZAk">
                  <ref role="3cqZAo" node="112RIkggjyR" resolve="result" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="112RIkgil0Z">
    <property role="TrG5h" value="ActionParameter_Hint" />
    <property role="3GE5qa" value="Actions.Action.Parameters" />
    <ref role="1XX52x" to="tp4k:hHNuAHW" resolve="ActionParameter" />
    <node concept="3EZMnI" id="112RIkgil11" role="2wV5jI">
      <property role="3EZMnw" value="true" />
      <node concept="1HlG4h" id="112RIkgil12" role="3EZMnx">
        <node concept="1HfYo3" id="112RIkgil13" role="1HlULh">
          <node concept="3TQlhw" id="112RIkgil14" role="1Hhtcw">
            <node concept="3clFbS" id="112RIkgil15" role="2VODD2">
              <node concept="3cpWs8" id="112RIkgil16" role="3cqZAp">
                <node concept="3cpWsn" id="112RIkgil17" role="3cpWs9">
                  <property role="TrG5h" value="annotation" />
                  <node concept="3Tqbb2" id="112RIkgil18" role="1tU5fm">
                    <ref role="ehGHo" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
                  </node>
                  <node concept="2OqwBi" id="112RIkgil19" role="33vP2m">
                    <node concept="2OqwBi" id="112RIkgil1a" role="2Oq$k0">
                      <node concept="2OqwBi" id="112RIkgil1b" role="2Oq$k0">
                        <node concept="3Tsc0h" id="112RIkgil1c" role="2OqNvi">
                          <ref role="3TtcxE" to="tpee:hiAJF2X" />
                        </node>
                        <node concept="2OqwBi" id="112RIkgil1d" role="2Oq$k0">
                          <node concept="pncrf" id="112RIkgil1e" role="2Oq$k0" />
                          <node concept="2qgKlT" id="112RIkgil4z" role="2OqNvi">
                            <ref role="37wK5l" to="tp4s:112RIkgil0h" resolve="getFieldDeclaration" />
                          </node>
                        </node>
                      </node>
                      <node concept="3zZkjj" id="112RIkgil1g" role="2OqNvi">
                        <node concept="1bVj0M" id="112RIkgil1h" role="23t8la">
                          <node concept="Rh6nW" id="112RIkgil1i" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="1P4c1XrzTit" role="1tU5fm" />
                          </node>
                          <node concept="3clFbS" id="112RIkgil1k" role="1bW5cS">
                            <node concept="3clFbF" id="112RIkgil1l" role="3cqZAp">
                              <node concept="2OqwBi" id="112RIkgil1m" role="3clFbG">
                                <node concept="2OqwBi" id="112RIkgil1n" role="2Oq$k0">
                                  <node concept="2OqwBi" id="112RIkgil1o" role="2Oq$k0">
                                    <node concept="37vLTw" id="2BHiRxgm6C0" role="2Oq$k0">
                                      <ref role="3cqZAo" node="112RIkgil1i" resolve="it" />
                                    </node>
                                    <node concept="3TrEf2" id="112RIkgil1q" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpee:hiAI5P0" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="112RIkgil1r" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="112RIkgil1s" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                  <node concept="2OqwBi" id="112RIkgil1t" role="37wK5m">
                                    <node concept="1PxgMI" id="112RIkgil1u" role="2Oq$k0">
                                      <ref role="1PxNhF" to="tpee:hiABswc" resolve="Annotation" />
                                      <node concept="2OqwBi" id="112RIkgil1v" role="1PxMeX">
                                        <node concept="2c44tf" id="112RIkgil1w" role="2Oq$k0">
                                          <node concept="3uibUv" id="5nlt9wE7MUR" role="2c44tc">
                                            <ref role="3uigEE" to="qq03:~MPSCommonDataKeys$Description" resolve="MPSCommonDataKeys.Description" />
                                          </node>
                                        </node>
                                        <node concept="3TrEf2" id="112RIkgil1y" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpee:g7uigIF" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3TrcHB" id="112RIkgil1z" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1uHKPH" id="112RIkgil1$" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="112RIkgil1_" role="3cqZAp">
                <node concept="3clFbC" id="112RIkgil1A" role="3clFbw">
                  <node concept="37vLTw" id="3GM_nagTsap" role="3uHU7B">
                    <ref role="3cqZAo" node="112RIkgil17" resolve="annotation" />
                  </node>
                  <node concept="10Nm6u" id="112RIkgil1C" role="3uHU7w" />
                </node>
                <node concept="3clFbS" id="112RIkgil1D" role="3clFbx">
                  <node concept="3cpWs6" id="112RIkgil1E" role="3cqZAp">
                    <node concept="Xl_RD" id="112RIkgil1F" role="3cqZAk">
                      <property role="Xl_RC" value="" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="112RIkgil1G" role="3cqZAp">
                <node concept="3cpWsn" id="112RIkgil1H" role="3cpWs9">
                  <property role="TrG5h" value="description" />
                  <node concept="3Tqbb2" id="112RIkgil1I" role="1tU5fm">
                    <ref role="ehGHo" to="tpee:hiB6LFO" resolve="AnnotationInstanceValue" />
                  </node>
                  <node concept="2OqwBi" id="112RIkgil1J" role="33vP2m">
                    <node concept="2OqwBi" id="112RIkgil1K" role="2Oq$k0">
                      <node concept="2OqwBi" id="112RIkgil1L" role="2Oq$k0">
                        <node concept="3Tsc0h" id="112RIkgil1M" role="2OqNvi">
                          <ref role="3TtcxE" to="tpee:hiB76_Z" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTwhf" role="2Oq$k0">
                          <ref role="3cqZAo" node="112RIkgil17" resolve="annotation" />
                        </node>
                      </node>
                      <node concept="3zZkjj" id="112RIkgil1O" role="2OqNvi">
                        <node concept="1bVj0M" id="112RIkgil1P" role="23t8la">
                          <node concept="Rh6nW" id="112RIkgil1Q" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="1P4c1XrzT89" role="1tU5fm" />
                          </node>
                          <node concept="3clFbS" id="112RIkgil1S" role="1bW5cS">
                            <node concept="3clFbF" id="112RIkgil1T" role="3cqZAp">
                              <node concept="1Wc70l" id="7qvzmYFs$T5" role="3clFbG">
                                <node concept="1Wc70l" id="7qvzmYFs$U1" role="3uHU7B">
                                  <node concept="3y3z36" id="7qvzmYFs$Up" role="3uHU7B">
                                    <node concept="10Nm6u" id="7qvzmYFs$Us" role="3uHU7w" />
                                    <node concept="37vLTw" id="2BHiRxglkf3" role="3uHU7B">
                                      <ref role="3cqZAo" node="112RIkgil1Q" resolve="it" />
                                    </node>
                                  </node>
                                  <node concept="3y3z36" id="7qvzmYFs$TT" role="3uHU7w">
                                    <node concept="2OqwBi" id="7qvzmYFs$Tt" role="3uHU7B">
                                      <node concept="37vLTw" id="2BHiRxgllou" role="2Oq$k0">
                                        <ref role="3cqZAo" node="112RIkgil1Q" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="7qvzmYFs$Tz" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpee:hiB6Ojz" />
                                      </node>
                                    </node>
                                    <node concept="10Nm6u" id="7qvzmYFs$TW" role="3uHU7w" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="112RIkgil1U" role="3uHU7w">
                                  <node concept="liA8E" id="112RIkgil20" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                    <node concept="2OqwBi" id="112RIkgil1V" role="37wK5m">
                                      <node concept="2OqwBi" id="112RIkgil1W" role="2Oq$k0">
                                        <node concept="37vLTw" id="2BHiRxghg8e" role="2Oq$k0">
                                          <ref role="3cqZAo" node="112RIkgil1Q" resolve="it" />
                                        </node>
                                        <node concept="3TrEf2" id="112RIkgil1Y" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpee:hiB6Ojz" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="112RIkgil1Z" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="112RIkgil21" role="2Oq$k0">
                                    <property role="Xl_RC" value="description" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1uHKPH" id="112RIkgil22" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="112RIkgil23" role="3cqZAp">
                <node concept="3clFbS" id="112RIkgil24" role="3clFbx">
                  <node concept="3cpWs6" id="112RIkgil25" role="3cqZAp">
                    <node concept="Xl_RD" id="112RIkgil26" role="3cqZAk" />
                  </node>
                </node>
                <node concept="3clFbC" id="112RIkgil27" role="3clFbw">
                  <node concept="10Nm6u" id="112RIkgil28" role="3uHU7w" />
                  <node concept="37vLTw" id="3GM_nagTs9_" role="3uHU7B">
                    <ref role="3cqZAo" node="112RIkgil1H" resolve="description" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="112RIkgil2a" role="3cqZAp">
                <node concept="3cpWsn" id="112RIkgil2b" role="3cpWs9">
                  <property role="TrG5h" value="descriptionString" />
                  <node concept="17QB3L" id="112RIkgil2c" role="1tU5fm" />
                  <node concept="2OqwBi" id="112RIkgil2d" role="33vP2m">
                    <node concept="1PxgMI" id="112RIkgil2e" role="2Oq$k0">
                      <ref role="1PxNhF" to="tpee:f$Xl_Og" resolve="StringLiteral" />
                      <node concept="2OqwBi" id="112RIkgil2f" role="1PxMeX">
                        <node concept="37vLTw" id="3GM_nagT$f0" role="2Oq$k0">
                          <ref role="3cqZAo" node="112RIkgil1H" resolve="description" />
                        </node>
                        <node concept="3TrEf2" id="112RIkgil2h" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:hiB70Z4" />
                        </node>
                      </node>
                    </node>
                    <node concept="3TrcHB" id="112RIkgil2i" role="2OqNvi">
                      <ref role="3TsBF5" to="tpee:f$Xl_Oh" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="112RIkgil2j" role="3cqZAp">
                <node concept="37vLTw" id="3GM_nagTBGS" role="3cqZAk">
                  <ref role="3cqZAo" node="112RIkgil2b" resolve="descriptionString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="112RIkgil2s" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="112RIkgil2t" role="3EZMnx">
        <node concept="VPM3Z" id="112RIkgil2u" role="3F10Kt" />
      </node>
      <node concept="1HlG4h" id="112RIkgil2v" role="3EZMnx">
        <node concept="1HfYo3" id="112RIkgil2w" role="1HlULh">
          <node concept="3TQlhw" id="112RIkgil2x" role="1Hhtcw">
            <node concept="3clFbS" id="112RIkgil2y" role="2VODD2">
              <node concept="3cpWs8" id="112RIkgil2z" role="3cqZAp">
                <node concept="3cpWsn" id="112RIkgil2$" role="3cpWs9">
                  <property role="TrG5h" value="annotation" />
                  <node concept="3Tqbb2" id="112RIkgil2_" role="1tU5fm">
                    <ref role="ehGHo" to="tpee:hiAHcMF" resolve="AnnotationInstance" />
                  </node>
                  <node concept="2OqwBi" id="112RIkgil2A" role="33vP2m">
                    <node concept="2OqwBi" id="112RIkgil2B" role="2Oq$k0">
                      <node concept="2OqwBi" id="112RIkgil2C" role="2Oq$k0">
                        <node concept="3Tsc0h" id="112RIkgil2D" role="2OqNvi">
                          <ref role="3TtcxE" to="tpee:hiAJF2X" />
                        </node>
                        <node concept="2OqwBi" id="112RIkgil2E" role="2Oq$k0">
                          <node concept="pncrf" id="112RIkgil2F" role="2Oq$k0" />
                          <node concept="2qgKlT" id="112RIkgil4$" role="2OqNvi">
                            <ref role="37wK5l" to="tp4s:112RIkgil0h" resolve="getFieldDeclaration" />
                          </node>
                        </node>
                      </node>
                      <node concept="3zZkjj" id="112RIkgil2H" role="2OqNvi">
                        <node concept="1bVj0M" id="112RIkgil2I" role="23t8la">
                          <node concept="Rh6nW" id="112RIkgil2J" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="1P4c1XrzThv" role="1tU5fm" />
                          </node>
                          <node concept="3clFbS" id="112RIkgil2L" role="1bW5cS">
                            <node concept="3clFbF" id="112RIkgil2M" role="3cqZAp">
                              <node concept="2OqwBi" id="112RIkgil2N" role="3clFbG">
                                <node concept="2OqwBi" id="112RIkgil2O" role="2Oq$k0">
                                  <node concept="2OqwBi" id="112RIkgil2P" role="2Oq$k0">
                                    <node concept="37vLTw" id="2BHiRxgmaJM" role="2Oq$k0">
                                      <ref role="3cqZAo" node="112RIkgil2J" resolve="it" />
                                    </node>
                                    <node concept="3TrEf2" id="112RIkgil2R" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpee:hiAI5P0" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="112RIkgil2S" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="112RIkgil2T" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                  <node concept="2OqwBi" id="112RIkgil2U" role="37wK5m">
                                    <node concept="1PxgMI" id="112RIkgil2V" role="2Oq$k0">
                                      <ref role="1PxNhF" to="tpee:hiABswc" resolve="Annotation" />
                                      <node concept="2OqwBi" id="112RIkgil2W" role="1PxMeX">
                                        <node concept="2c44tf" id="112RIkgil2X" role="2Oq$k0">
                                          <node concept="3uibUv" id="5nlt9wE7MUS" role="2c44tc">
                                            <ref role="3uigEE" to="qq03:~MPSCommonDataKeys$Description" resolve="MPSCommonDataKeys.Description" />
                                          </node>
                                        </node>
                                        <node concept="3TrEf2" id="112RIkgil2Z" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpee:g7uigIF" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3TrcHB" id="112RIkgil30" role="2OqNvi">
                                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1uHKPH" id="112RIkgil31" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="112RIkgil32" role="3cqZAp">
                <node concept="3clFbC" id="112RIkgil33" role="3clFbw">
                  <node concept="37vLTw" id="3GM_nagTubf" role="3uHU7B">
                    <ref role="3cqZAo" node="112RIkgil2$" resolve="annotation" />
                  </node>
                  <node concept="10Nm6u" id="112RIkgil35" role="3uHU7w" />
                </node>
                <node concept="3clFbS" id="112RIkgil36" role="3clFbx">
                  <node concept="3cpWs6" id="112RIkgil37" role="3cqZAp">
                    <node concept="Xl_RD" id="112RIkgil38" role="3cqZAk">
                      <property role="Xl_RC" value="" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="112RIkgil39" role="3cqZAp">
                <node concept="3cpWsn" id="112RIkgil3a" role="3cpWs9">
                  <property role="TrG5h" value="longDescription" />
                  <node concept="3Tqbb2" id="112RIkgil3b" role="1tU5fm">
                    <ref role="ehGHo" to="tpee:hiB6LFO" resolve="AnnotationInstanceValue" />
                  </node>
                  <node concept="2OqwBi" id="112RIkgil3c" role="33vP2m">
                    <node concept="2OqwBi" id="112RIkgil3d" role="2Oq$k0">
                      <node concept="2OqwBi" id="112RIkgil3e" role="2Oq$k0">
                        <node concept="3Tsc0h" id="112RIkgil3f" role="2OqNvi">
                          <ref role="3TtcxE" to="tpee:hiB76_Z" />
                        </node>
                        <node concept="37vLTw" id="3GM_nagTtVm" role="2Oq$k0">
                          <ref role="3cqZAo" node="112RIkgil2$" resolve="annotation" />
                        </node>
                      </node>
                      <node concept="3zZkjj" id="112RIkgil3h" role="2OqNvi">
                        <node concept="1bVj0M" id="112RIkgil3i" role="23t8la">
                          <node concept="Rh6nW" id="112RIkgil3j" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="1P4c1XrzTm3" role="1tU5fm" />
                          </node>
                          <node concept="3clFbS" id="112RIkgil3l" role="1bW5cS">
                            <node concept="3clFbF" id="112RIkgil3m" role="3cqZAp">
                              <node concept="1Wc70l" id="3Wm9TsEyXxE" role="3clFbG">
                                <node concept="1Wc70l" id="3Wm9TsEyXyq" role="3uHU7B">
                                  <node concept="3y3z36" id="3Wm9TsEyXzd" role="3uHU7w">
                                    <node concept="10Nm6u" id="3Wm9TsEyXzg" role="3uHU7w" />
                                    <node concept="2OqwBi" id="3Wm9TsEyXyM" role="3uHU7B">
                                      <node concept="37vLTw" id="2BHiRxghcyk" role="2Oq$k0">
                                        <ref role="3cqZAo" node="112RIkgil3j" resolve="it" />
                                      </node>
                                      <node concept="3TrEf2" id="3Wm9TsEyXyR" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpee:hiB6Ojz" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3y3z36" id="3Wm9TsEyXy2" role="3uHU7B">
                                    <node concept="37vLTw" id="2BHiRxgm9j3" role="3uHU7B">
                                      <ref role="3cqZAo" node="112RIkgil3j" resolve="it" />
                                    </node>
                                    <node concept="10Nm6u" id="3Wm9TsEyXy5" role="3uHU7w" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="112RIkgil3n" role="3uHU7w">
                                  <node concept="liA8E" id="112RIkgil3t" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                    <node concept="2OqwBi" id="112RIkgil3o" role="37wK5m">
                                      <node concept="2OqwBi" id="112RIkgil3p" role="2Oq$k0">
                                        <node concept="37vLTw" id="2BHiRxgm8Nz" role="2Oq$k0">
                                          <ref role="3cqZAo" node="112RIkgil3j" resolve="it" />
                                        </node>
                                        <node concept="3TrEf2" id="112RIkgil3r" role="2OqNvi">
                                          <ref role="3Tt5mk" to="tpee:hiB6Ojz" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="112RIkgil3s" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="112RIkgil3u" role="2Oq$k0">
                                    <property role="Xl_RC" value="longDescription" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1yVyf7" id="112RIkgil3v" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="112RIkgil3w" role="3cqZAp">
                <node concept="3clFbS" id="112RIkgil3x" role="3clFbx">
                  <node concept="3cpWs6" id="112RIkgil3y" role="3cqZAp">
                    <node concept="Xl_RD" id="112RIkgil3z" role="3cqZAk" />
                  </node>
                </node>
                <node concept="3clFbC" id="112RIkgil3$" role="3clFbw">
                  <node concept="10Nm6u" id="112RIkgil3_" role="3uHU7w" />
                  <node concept="37vLTw" id="3GM_nagTBiB" role="3uHU7B">
                    <ref role="3cqZAo" node="112RIkgil3a" resolve="longDescription" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="112RIkgil3B" role="3cqZAp">
                <node concept="3cpWsn" id="112RIkgil3C" role="3cpWs9">
                  <property role="TrG5h" value="longDescriptionString" />
                  <node concept="17QB3L" id="112RIkgil3D" role="1tU5fm" />
                  <node concept="2OqwBi" id="112RIkgil3E" role="33vP2m">
                    <node concept="1PxgMI" id="112RIkgil3F" role="2Oq$k0">
                      <ref role="1PxNhF" to="tpee:f$Xl_Og" resolve="StringLiteral" />
                      <node concept="2OqwBi" id="112RIkgil3G" role="1PxMeX">
                        <node concept="37vLTw" id="3GM_nagTs9p" role="2Oq$k0">
                          <ref role="3cqZAo" node="112RIkgil3a" resolve="longDescription" />
                        </node>
                        <node concept="3TrEf2" id="112RIkgil3I" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpee:hiB70Z4" />
                        </node>
                      </node>
                    </node>
                    <node concept="3TrcHB" id="112RIkgil3J" role="2OqNvi">
                      <ref role="3TsBF5" to="tpee:f$Xl_Oh" resolve="value" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="112RIkgil3K" role="3cqZAp">
                <node concept="37vLTw" id="3GM_nagTrDa" role="3cqZAk">
                  <ref role="3cqZAo" node="112RIkgil3C" resolve="longDescriptionString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="VPM3Z" id="112RIkgil3T" role="3F10Kt" />
      </node>
      <node concept="pkWqt" id="112RIkgil3U" role="pqm2j">
        <node concept="3clFbS" id="112RIkgil3V" role="2VODD2">
          <node concept="3clFbF" id="112RIkgil3W" role="3cqZAp">
            <node concept="3y3z36" id="112RIkgil3X" role="3clFbG">
              <node concept="10Nm6u" id="112RIkgil3Y" role="3uHU7w" />
              <node concept="2OqwBi" id="112RIkgil3Z" role="3uHU7B">
                <node concept="pncrf" id="112RIkgil40" role="2Oq$k0" />
                <node concept="2qgKlT" id="112RIkgiZb$" role="2OqNvi">
                  <ref role="37wK5l" to="tp4s:112RIkgil0h" resolve="getFieldDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRkQZ" id="112RIkgil42" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="lUOfkjhOer">
    <property role="3GE5qa" value="Actions.Action.Places" />
    <ref role="1XX52x" to="tp4k:lUOfkjhOeo" resolve="EverywhereActionPlace" />
    <node concept="3F0ifn" id="lUOfkjhPa5" role="2wV5jI">
      <property role="3F0ifm" value="everywhere" />
      <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
    </node>
  </node>
  <node concept="24kQdi" id="57l5h3Ls$1H">
    <property role="3GE5qa" value="Tool" />
    <ref role="1XX52x" to="tp4k:57l5h3Lsyf5" resolve="TabbedToolDeclaration" />
    <node concept="b$f91" id="57l5h3Ls$6A" role="2wV5jI">
      <node concept="3EZMnI" id="57l5h3Ls$6B" role="b$wch">
        <property role="3EZMnw" value="true" />
        <node concept="3EZMnI" id="57l5h3Ls$6C" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="57l5h3Ls$6D" role="3EZMnx">
            <property role="3F0ifm" value="caption:" />
            <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
          </node>
          <node concept="3F0A7n" id="57l5h3Ls$6E" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;use name&gt;" />
            <ref role="1NtTu8" to="tp4k:5FstybB4cVs" resolve="caption" />
          </node>
          <node concept="VPM3Z" id="57l5h3Ls$6F" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="57l5h3Ls$6G" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="57l5h3Ls$6H" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="57l5h3Ls$6I" role="3EZMnx">
            <property role="3F0ifm" value="number:" />
            <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
          </node>
          <node concept="3F0A7n" id="57l5h3Ls$6J" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;no&gt;" />
            <ref role="1NtTu8" to="tp4k:5FstybB4cWH" resolve="number" />
          </node>
          <node concept="3EZMnI" id="57l5h3Ls$6K" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3F0ifn" id="57l5h3Ls$6L" role="3EZMnx">
              <property role="3F0ifm" value="(" />
              <node concept="3mYdg7" id="57l5h3Ls$6M" role="3F10Kt">
                <property role="1413C4" value="parenthesis" />
              </node>
              <node concept="VechU" id="57l5h3Ls$6N" role="3F10Kt">
                <property role="Vb096" value="lightGray" />
              </node>
            </node>
            <node concept="3F0ifn" id="57l5h3Ls$6O" role="3EZMnx">
              <property role="3F0ifm" value="show keystroke: " />
              <node concept="VPM3Z" id="57l5h3Ls$6P" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
              <node concept="VechU" id="57l5h3Ls$6Q" role="3F10Kt">
                <property role="Vb096" value="lightGray" />
              </node>
            </node>
            <node concept="1HlG4h" id="57l5h3Ls$6R" role="3EZMnx">
              <node concept="1HfYo3" id="57l5h3Ls$6S" role="1HlULh">
                <node concept="3TQlhw" id="57l5h3Ls$6T" role="1Hhtcw">
                  <node concept="3clFbS" id="57l5h3Ls$6U" role="2VODD2">
                    <node concept="3clFbF" id="57l5h3Ls$6V" role="3cqZAp">
                      <node concept="3cpWs3" id="57l5h3Ls$6W" role="3clFbG">
                        <node concept="Xl_RD" id="57l5h3Ls$6X" role="3uHU7B">
                          <property role="Xl_RC" value="Alt-" />
                        </node>
                        <node concept="2OqwBi" id="57l5h3Ls$6Y" role="3uHU7w">
                          <node concept="pncrf" id="57l5h3Ls$6Z" role="2Oq$k0" />
                          <node concept="3TrcHB" id="57l5h3Ls$70" role="2OqNvi">
                            <ref role="3TsBF5" to="tp4k:5FstybB4cWH" resolve="number" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="VPM3Z" id="57l5h3Ls$71" role="3F10Kt" />
              <node concept="VechU" id="57l5h3Ls$72" role="3F10Kt">
                <property role="Vb096" value="darkGray" />
              </node>
            </node>
            <node concept="3F0ifn" id="57l5h3Ls$73" role="3EZMnx">
              <property role="3F0ifm" value=")" />
              <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
              <node concept="3mYdg7" id="57l5h3Ls$74" role="3F10Kt">
                <property role="1413C4" value="parenthesis" />
              </node>
              <node concept="VechU" id="57l5h3Ls$75" role="3F10Kt">
                <property role="Vb096" value="lightGray" />
              </node>
            </node>
            <node concept="pkWqt" id="57l5h3Ls$76" role="pqm2j">
              <node concept="3clFbS" id="57l5h3Ls$77" role="2VODD2">
                <node concept="3clFbF" id="57l5h3Ls$78" role="3cqZAp">
                  <node concept="2OqwBi" id="57l5h3Ls$79" role="3clFbG">
                    <node concept="2qgKlT" id="57l5h3Ls$7a" role="2OqNvi">
                      <ref role="37wK5l" to="tp4s:5FstybB4d8v" resolve="hasNumber" />
                    </node>
                    <node concept="pncrf" id="57l5h3Ls$7b" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="VPM3Z" id="57l5h3Ls$7c" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="57l5h3Ls$7d" role="2iSdaV" />
          </node>
          <node concept="VPM3Z" id="57l5h3Ls$7e" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="57l5h3Ls$7f" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="57l5h3Ls$7g" role="3EZMnx">
          <node concept="3F0ifn" id="57l5h3Ls$7h" role="3EZMnx">
            <property role="3F0ifm" value="icon:" />
            <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
            <node concept="VPM3Z" id="57l5h3Ls$7i" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F1sOY" id="5T0Ssc9FREg" role="3EZMnx">
            <ref role="1NtTu8" to="tp4k:5T0Ssc9FAhp" />
          </node>
          <node concept="VPM3Z" id="57l5h3Ls$8c" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="57l5h3Ls$8d" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="2aGS$UDY7UW" role="3EZMnx">
          <node concept="3F0ifn" id="2aGS$UDY7UX" role="3EZMnx">
            <property role="3F0ifm" value="position:" />
            <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
            <node concept="VPM3Z" id="2aGS$UDY7UY" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0A7n" id="2aGS$UDY7UZ" role="3EZMnx">
            <ref role="1NtTu8" to="tp4k:2aGS$UDXOxW" resolve="position" />
          </node>
          <node concept="VPM3Z" id="2aGS$UDY7V0" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="2aGS$UDY7V1" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="57l5h3Ls$8e" role="3EZMnx" />
        <node concept="3F2HdR" id="57l5h3Ls$8f" role="3EZMnx">
          <property role="2czwfN" value="true" />
          <ref role="1NtTu8" to="tp4k:5FstybB4cZ1" />
          <node concept="2iRkQZ" id="57l5h3Ls$8g" role="2czzBx" />
          <node concept="3F0ifn" id="52YnOubbUyr" role="2czzBI">
            <property role="3F0ifm" value="&lt;no tool fields&gt;" />
            <node concept="VechU" id="52YnOubcucx" role="3F10Kt">
              <property role="Vb096" value="gray" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="57l5h3Ls$8h" role="3EZMnx" />
        <node concept="3F1sOY" id="57l5h3Ls$8r" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:71t2ztIwl$I" />
        </node>
        <node concept="3F0ifn" id="57l5h3Ls$8s" role="3EZMnx" />
        <node concept="3F1sOY" id="57l5h3Ls$8A" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:71t2ztIwl$J" />
        </node>
        <node concept="3F0ifn" id="57l5h3Ls$8B" role="3EZMnx" />
        <node concept="3F2HdR" id="57l5h3Ls$8E" role="3EZMnx">
          <property role="2czwfN" value="true" />
          <property role="2czwfO" value=" " />
          <ref role="1NtTu8" to="tp4k:5FstybB4cZ0" />
          <node concept="2iRkQZ" id="57l5h3Ls$8F" role="2czzBx" />
        </node>
        <node concept="VPM3Z" id="57l5h3Ls$8G" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRkQZ" id="57l5h3Ls$8H" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="57l5h3Ls$8I" role="b$u42">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="57l5h3Ls$8J" role="3EZMnx">
          <property role="3F0ifm" value="tabbed tool" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        </node>
        <node concept="3F0A7n" id="57l5h3Ls$8K" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no name&gt;" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPM3Z" id="57l5h3Ls$8L" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="2V7CMv" id="57l5h3Ls$8M" role="3F10Kt">
            <property role="2V7CMs" value="default_RTransform" />
          </node>
        </node>
        <node concept="2iRfu4" id="57l5h3Ls$8N" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6$2CuKCDA9v">
    <property role="3GE5qa" value="Tool.Operations" />
    <ref role="1XX52x" to="tp4k:57l5h3LszuS" resolve="AddTabOperation" />
    <node concept="3EZMnI" id="6$2CuKCDA$t" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhY7o" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="6$2CuKCDA$_" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F1sOY" id="618UJ37zUOk" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:6$2CuKCDA98" />
      </node>
      <node concept="3F0ifn" id="6$2CuKCDA$B" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hXb$V4T" resolve="RightBracket" />
      </node>
      <node concept="l2Vlx" id="6$2CuKCDA$v" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="52YnOubdmOj">
    <property role="3GE5qa" value="Tool.Operations" />
    <ref role="1XX52x" to="tp4k:52YnOubdk7M" resolve="CloseTabOperation" />
    <node concept="3EZMnI" id="71t2ztIwl0O" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhY5L" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="71t2ztIwl0Q" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F0ifn" id="71t2ztIwl0R" role="3EZMnx">
        <property role="3F0ifm" value="component:" />
        <ref role="1k5W1q" to="tpen:hshU_KJ" resolve="Annotation" />
      </node>
      <node concept="3F1sOY" id="71t2ztIwl0S" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:52YnOubdkJs" />
      </node>
      <node concept="3F0ifn" id="71t2ztIwl12" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hXb$V4T" resolve="RightBracket" />
      </node>
      <node concept="l2Vlx" id="71t2ztIwl13" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1Bq1U5bwKu$">
    <property role="3GE5qa" value="Tool.Operations" />
    <ref role="1XX52x" to="tp4k:1Bq1U5bwIW6" resolve="GetSelectedTabOperation" />
    <node concept="3EZMnI" id="1Bq1U5bwKuA" role="2wV5jI">
      <node concept="PMmxH" id="2wdLO7KhY5H" role="3EZMnx">
        <property role="1cu_pB" value="0" />
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="1Bq1U5bwKuC" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F0ifn" id="1Bq1U5bwKuH" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="1Bq1U5bwKuI" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="qXyebw2FjN">
    <property role="3GE5qa" value="Tool.Operations" />
    <ref role="1XX52x" to="tp4k:qXyebw2ETC" resolve="SmartDisposeClosureParameterDeclaration" />
    <node concept="3EZMnI" id="qXyebw2FjT" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="qXyebw2FjU" role="3EZMnx">
        <property role="3F0ifm" value="~" />
        <ref role="1k5W1q" to="tpen:hshT2l5" resolve="Parameter" />
        <node concept="11LMrY" id="qXyebw2FjV" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11L4FC" id="qXyebw2FjW" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0A7n" id="qXyebw2FjX" role="3EZMnx">
        <ref role="1k5W1q" to="tpen:hshT2l5" resolve="Parameter" />
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="qXyebw2FjY" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="618UJ37zUmc">
    <property role="3GE5qa" value="Tool.Operations" />
    <ref role="1XX52x" to="tp4k:618UJ37zN9e" resolve="ToolTab" />
    <node concept="3EZMnI" id="618UJ37zUNN" role="2wV5jI">
      <node concept="3F0ifn" id="618UJ37AsKE" role="3EZMnx">
        <property role="3F0ifm" value="tab" />
      </node>
      <node concept="3F0ifn" id="618UJ37AsKH" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hF$iEdo" resolve="Brace" />
        <node concept="ljvvj" id="618UJ37AsKL" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="618UJ37zUNQ" role="3EZMnx">
        <property role="3F0ifm" value="component:" />
        <ref role="1k5W1q" to="tpen:hshU_KJ" resolve="Annotation" />
        <node concept="lj46D" id="618UJ37zUO8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="618UJ37zUNR" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:618UJ37zUOg" />
        <node concept="ljvvj" id="618UJ37zUNS" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="618UJ37zUNT" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="618UJ37zUNU" role="3EZMnx">
        <property role="3F0ifm" value="title:" />
        <ref role="1k5W1q" to="tpen:hshU_KJ" resolve="Annotation" />
        <node concept="lj46D" id="618UJ37zUNV" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="618UJ37zUNW" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no title&gt;" />
        <ref role="1NtTu8" to="tp4k:618UJ37zUOh" />
        <node concept="ljvvj" id="618UJ37zUNX" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="618UJ37zUNY" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="618UJ37zUNZ" role="3EZMnx">
        <property role="3F0ifm" value="icon:" />
        <ref role="1k5W1q" to="tpen:hshU_KJ" resolve="Annotation" />
        <node concept="lj46D" id="618UJ37zUO0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="618UJ37zUO1" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no icon&gt;" />
        <ref role="1NtTu8" to="tp4k:618UJ37zUOi" />
        <node concept="ljvvj" id="618UJ37zUO2" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="618UJ37zUO3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="618UJ37zUO4" role="3EZMnx">
        <property role="3F0ifm" value="dispose:" />
        <ref role="1k5W1q" to="tpen:hshU_KJ" resolve="Annotation" />
        <node concept="lj46D" id="618UJ37zUO5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="618UJ37zUO6" role="3EZMnx">
        <property role="1$x2rV" value="&lt;no dispose block&gt;" />
        <ref role="1NtTu8" to="tp4k:618UJ37zUOj" />
        <node concept="lj46D" id="618UJ37zUO7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="618UJ37AsKK" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hF$iEdo" resolve="Brace" />
        <node concept="pVoyu" id="618UJ37AsKM" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="618UJ37zUNP" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2LWQ9F8OklL">
    <ref role="1XX52x" to="tp4k:2LWQ9F8O0oc" resolve="ActionAccessOperation" />
    <node concept="3EZMnI" id="2LWQ9F8OkMY" role="2wV5jI">
      <node concept="3F0ifn" id="2LWQ9F8OkN2" role="3EZMnx">
        <property role="3F0ifm" value="action" />
      </node>
      <node concept="3F0ifn" id="2LWQ9F8OkNd" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="1iCGBv" id="2LWQ9F8OkN4" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:2LWQ9F8OklK" />
        <node concept="1sVBvm" id="2LWQ9F8OkN5" role="1sWHZn">
          <node concept="3F0A7n" id="2LWQ9F8OkN7" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2LWQ9F8OkNb" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="2iRfu4" id="2LWQ9F8OkN0" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2LWQ9F8OnPR">
    <ref role="1XX52x" to="tp4k:2LWQ9F8OnPO" resolve="GroupAccessOperation" />
    <node concept="3EZMnI" id="2LWQ9F8OnPT" role="2wV5jI">
      <node concept="3F0ifn" id="2LWQ9F8OnQ2" role="3EZMnx">
        <property role="3F0ifm" value="group" />
      </node>
      <node concept="3F0ifn" id="2LWQ9F8OnPV" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="1iCGBv" id="2LWQ9F8OnPW" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:2LWQ9F8OnPQ" />
        <node concept="1sVBvm" id="2LWQ9F8OnPX" role="1sWHZn">
          <node concept="3F0A7n" id="2LWQ9F8OnPY" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="2LWQ9F8OnPZ" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="2iRfu4" id="2LWQ9F8OnQ0" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4mQiM_caNsV">
    <property role="3GE5qa" value="Idea" />
    <ref role="1XX52x" to="tp4k:4mQiM_caNkk" resolve="IdeaInitializerDescriptor" />
    <node concept="3EZMnI" id="4mQiM_caQ51" role="2wV5jI">
      <node concept="3EZMnI" id="4mQiM_caQ54" role="3EZMnx">
        <node concept="3F0ifn" id="4mQiM_caQ59" role="3EZMnx">
          <property role="3F0ifm" value="id:" />
        </node>
        <node concept="3F0A7n" id="4mQiM_caQ5J" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:4mQiM_caNkm" resolve="id" />
        </node>
        <node concept="VPM3Z" id="4mQiM_caQ55" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="4mQiM_caQ57" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4mQiM_caQ5c" role="3EZMnx">
        <node concept="3F0ifn" id="4mQiM_caQ5d" role="3EZMnx">
          <property role="3F0ifm" value="name:" />
        </node>
        <node concept="3F0A7n" id="4mQiM_caQ5K" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="VPM3Z" id="4mQiM_caQ5f" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="4mQiM_caQ5g" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4mQiM_caQ5h" role="3EZMnx">
        <node concept="3F0ifn" id="4mQiM_caQ5i" role="3EZMnx">
          <property role="3F0ifm" value="description:" />
        </node>
        <node concept="3F0A7n" id="4mQiM_caQ5L" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:4mQiM_caNko" resolve="descripttion" />
        </node>
        <node concept="VPM3Z" id="4mQiM_caQ5k" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="4mQiM_caQ5l" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4mQiM_caQ5E" role="3EZMnx">
        <node concept="3F0ifn" id="4mQiM_caQ5F" role="3EZMnx">
          <property role="3F0ifm" value="version:" />
        </node>
        <node concept="3F0A7n" id="4mQiM_caQ5M" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:4mQiM_caNkp" resolve="version" />
        </node>
        <node concept="VPM3Z" id="4mQiM_caQ5H" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="4mQiM_caQ5I" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4mQiM_caQ5m" role="3EZMnx">
        <node concept="3F0ifn" id="4mQiM_caQ5n" role="3EZMnx">
          <property role="3F0ifm" value="vendor:" />
        </node>
        <node concept="3F0A7n" id="4mQiM_caQ5N" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:4mQiM_caNkr" resolve="vendor" />
        </node>
        <node concept="VPM3Z" id="4mQiM_caQ5p" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="4mQiM_caQ5q" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4mQiM_caQ5r" role="3EZMnx">
        <node concept="3F0ifn" id="4mQiM_caQ5s" role="3EZMnx">
          <property role="3F0ifm" value="vendor url:" />
        </node>
        <node concept="3F0A7n" id="4mQiM_caQ5O" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:4mQiM_caNks" resolve="vendorUrl" />
        </node>
        <node concept="VPM3Z" id="4mQiM_caQ5u" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="4mQiM_caQ5v" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3BkmlDzoTeJ" role="3EZMnx">
        <node concept="3F0ifn" id="3BkmlDzoTeK" role="3EZMnx">
          <property role="3F0ifm" value="vendor logo:" />
        </node>
        <node concept="3F0A7n" id="3BkmlDzoTeL" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:3BkmlDzoyHv" resolve="vendorLogo" />
        </node>
        <node concept="VPM3Z" id="3BkmlDzoTeM" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="3BkmlDzoTeN" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="4mQiM_caQ5w" role="3EZMnx">
        <node concept="3F0ifn" id="4mQiM_caQ5x" role="3EZMnx">
          <property role="3F0ifm" value="Idea ver.:" />
        </node>
        <node concept="3F0A7n" id="4mQiM_caQ5P" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:4mQiM_caNkt" resolve="ideaVersion" />
        </node>
        <node concept="VPM3Z" id="4mQiM_caQ5z" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="4mQiM_caQ5$" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="55z4ZnCljs1" role="3EZMnx" />
      <node concept="3EZMnI" id="55z4ZnCljs2" role="3EZMnx">
        <node concept="VPM3Z" id="55z4ZnCljs3" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="55z4ZnCljs6" role="3EZMnx">
          <property role="3F0ifm" value="dependency:" />
        </node>
        <node concept="3EZMnI" id="55z4ZnCljs8" role="3EZMnx">
          <node concept="VPM3Z" id="55z4ZnCljs9" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3XFhqQ" id="55z4ZnCljsc" role="3EZMnx" />
          <node concept="3F2HdR" id="55z4ZnCljse" role="3EZMnx">
            <ref role="1NtTu8" to="tp4k:55z4ZnCkRVF" />
            <node concept="2iRkQZ" id="55z4ZnCljsg" role="2czzBx" />
          </node>
          <node concept="2iRfu4" id="55z4ZnCljsb" role="2iSdaV" />
        </node>
        <node concept="2iRkQZ" id="55z4ZnCljs5" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="ezNMlLhvEe" role="3EZMnx" />
      <node concept="3EZMnI" id="ezNMlLhC2c" role="3EZMnx">
        <node concept="VPM3Z" id="ezNMlLhC2d" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="ezNMlLhC2g" role="3EZMnx">
          <property role="3F0ifm" value="load modules:" />
        </node>
        <node concept="3F0A7n" id="ezNMlLhNsx" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:7ESt5vf16cC" resolve="loadModules" />
        </node>
        <node concept="2iRfu4" id="ezNMlLhC2f" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="1nms1vYtSgk" role="3EZMnx">
        <node concept="VPM3Z" id="1nms1vYtSgl" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="1nms1vYtSgm" role="3EZMnx">
          <property role="3F0ifm" value="handle errors:" />
        </node>
        <node concept="3F0A7n" id="1nms1vYtSgn" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:1nms1vYtSgh" resolve="handleErrors" />
        </node>
        <node concept="2iRfu4" id="1nms1vYtSgo" role="2iSdaV" />
        <node concept="pkWqt" id="1nms1vYuisB" role="pqm2j">
          <node concept="3clFbS" id="1nms1vYuisC" role="2VODD2">
            <node concept="3clFbF" id="1nms1vYuisD" role="3cqZAp">
              <node concept="2YIFZM" id="1nms1vYuisF" role="3clFbG">
                <ref role="37wK5l" to="fyhk:~InternalFlag.isInternalMode():boolean" resolve="isInternalMode" />
                <ref role="1Pybhc" to="fyhk:~InternalFlag" resolve="InternalFlag" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="ioJBUBfVHq" role="3EZMnx">
        <property role="3F0ifm" value="" />
      </node>
      <node concept="3F1sOY" id="ioJBUBfVHt" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:ioJBUBfVHs" />
      </node>
      <node concept="2EHx9g" id="4mQiM_caQ5b" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7Du95iZNqOm">
    <property role="3GE5qa" value="Actions.Action" />
    <ref role="1XX52x" to="tp4k:7Du95iZNqOk" resolve="KeyStrokeType" />
    <node concept="3F0ifn" id="7Du95iZNts_" role="2wV5jI">
      <property role="3F0ifm" value="keystroke" />
    </node>
  </node>
  <node concept="24kQdi" id="73o9OgiE9DF">
    <property role="3GE5qa" value="Actions.Action" />
    <ref role="1XX52x" to="tp4k:73o9OgiE96s" resolve="AddKeystrokeStatement" />
    <node concept="3EZMnI" id="73o9OgiEawl" role="2wV5jI">
      <node concept="3F0ifn" id="73o9OgiEawo" role="3EZMnx">
        <property role="3F0ifm" value="addKeystroke" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="73o9OgiEawq" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hY9fg1G" resolve="LeftParenAfterName" />
      </node>
      <node concept="3F1sOY" id="73o9OgiERu9" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:73o9OgiEO_t" />
      </node>
      <node concept="3F0ifn" id="73o9OgiEaws" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="3F0ifn" id="6$w_9FKgwsa" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
      </node>
      <node concept="2iRfu4" id="73o9OgiEawn" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="283lDAXPS5d">
    <property role="3GE5qa" value="EditorTab" />
    <ref role="1XX52x" to="tp4k:283lDAXPS5b" resolve="EditorTabReference" />
    <node concept="1iCGBv" id="283lDAXPS5e" role="2wV5jI">
      <ref role="1NtTu8" to="tp4k:283lDAXPS5c" />
      <node concept="1sVBvm" id="283lDAXPS5f" role="1sWHZn">
        <node concept="3F0A7n" id="283lDAXPS5g" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPRnO" id="6o2z4lPu_1D" role="3F10Kt" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="283lDAXPS5h">
    <property role="3GE5qa" value="EditorTab" />
    <ref role="1XX52x" to="tp4k:283lDAXPS57" resolve="Order" />
    <node concept="1QoScp" id="283lDAXQkAi" role="2wV5jI">
      <property role="1QpmdY" value="true" />
      <node concept="pkWqt" id="283lDAXQkAj" role="3e4ffs">
        <node concept="3clFbS" id="283lDAXQkAk" role="2VODD2">
          <node concept="3clFbF" id="283lDAXQkSA" role="3cqZAp">
            <node concept="2OqwBi" id="283lDAXQkSL" role="3clFbG">
              <node concept="2OqwBi" id="283lDAXQkSG" role="2Oq$k0">
                <node concept="pncrf" id="283lDAXQkSB" role="2Oq$k0" />
                <node concept="1mfA1w" id="283lDAXQkSK" role="2OqNvi" />
              </node>
              <node concept="3x8VRR" id="283lDAXQkSP" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="283lDAXQkSQ" role="1QoVPY">
        <node concept="3EZMnI" id="283lDAXQkST" role="3EZMnx">
          <node concept="VPM3Z" id="283lDAXQkSU" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="283lDAXQkSX" role="3EZMnx">
            <property role="3F0ifm" value="order" />
          </node>
          <node concept="3F0A7n" id="283lDAXQkT1" role="3EZMnx">
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
          <node concept="2iRfu4" id="283lDAXQkSW" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="283lDAXQkT6" role="3EZMnx" />
        <node concept="3F0ifn" id="283lDAXQkT8" role="3EZMnx">
          <property role="3F0ifm" value="tabs:" />
        </node>
        <node concept="3F2HdR" id="283lDAXQkT3" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:283lDAXPS59" />
          <node concept="2iRkQZ" id="283lDAXQkT9" role="2czzBx" />
        </node>
        <node concept="2iRkQZ" id="283lDAXQkSS" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="283lDAXQkAo" role="1QoS34">
        <node concept="3F0ifn" id="283lDAXQkAr" role="3EZMnx">
          <property role="3F0ifm" value="[" />
        </node>
        <node concept="2iRfu4" id="283lDAXQkAp" role="2iSdaV" />
        <node concept="3F2HdR" id="283lDAXQkAn" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="tp4k:283lDAXPS59" />
        </node>
        <node concept="3F0ifn" id="283lDAXQkAt" role="3EZMnx">
          <property role="3F0ifm" value="]" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="283lDAXPT8j">
    <property role="3GE5qa" value="EditorTab" />
    <ref role="1XX52x" to="tp4k:283lDAXPT8h" resolve="OrderReference" />
    <node concept="1iCGBv" id="283lDAXPT8k" role="2wV5jI">
      <ref role="1NtTu8" to="tp4k:283lDAXPT8i" />
      <node concept="1sVBvm" id="283lDAXPT8l" role="1sWHZn">
        <node concept="3F0A7n" id="283lDAXPT8m" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="66ZZ2RilY6e">
    <property role="3GE5qa" value="Actions.Action" />
    <ref role="1XX52x" to="tp4k:hwsE7KS" resolve="ActionDeclaration" />
    <node concept="b$f91" id="66ZZ2RilY6f" role="2wV5jI">
      <node concept="3EZMnI" id="66ZZ2RilY6g" role="b$wch">
        <property role="3EZMnw" value="true" />
        <node concept="3EZMnI" id="66ZZ2RilY6h" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="VPM3Z" id="66ZZ2RilY6i" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="66ZZ2RilY6j" role="3EZMnx">
            <property role="3F0ifm" value="mnemonic:" />
            <node concept="VPM3Z" id="66ZZ2RilY6k" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0A7n" id="66ZZ2RilY6l" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;no mnemonic&gt;" />
            <ref role="1NtTu8" to="tp4k:hGngH8m" resolve="mnemonic" />
          </node>
          <node concept="2iRfu4" id="66ZZ2RilY6m" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="66ZZ2RilY6n" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="66ZZ2RilY6o" role="3EZMnx">
            <property role="3F0ifm" value="execute outside command:" />
          </node>
          <node concept="3F0A7n" id="66ZZ2RilY6p" role="3EZMnx">
            <ref role="1NtTu8" to="tp4k:hC72QVY" resolve="outsideCommandExecution" />
          </node>
          <node concept="VPM3Z" id="66ZZ2RilY6q" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="66ZZ2RilY6r" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="66ZZ2RilY6s" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="66ZZ2RilY6t" role="3EZMnx">
            <property role="3F0ifm" value="also available in:" />
          </node>
          <node concept="3F2HdR" id="66ZZ2RilY6u" role="3EZMnx">
            <property role="2czwfO" value="," />
            <ref role="1NtTu8" to="tp4k:lUOfkjgwbH" />
            <node concept="2iRfu4" id="66ZZ2RilY6v" role="2czzBx" />
          </node>
          <node concept="VPM3Z" id="66ZZ2RilY6w" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="66ZZ2RilY6x" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="66ZZ2RilY6y" role="3EZMnx">
          <node concept="VPM3Z" id="66ZZ2RilY6z" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3EZMnI" id="66ZZ2RilY6$" role="3EZMnx">
          <property role="3EZMnw" value="true" />
          <property role="3EZMnz" value="true" />
          <node concept="3EZMnI" id="66ZZ2RilY6_" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3F0ifn" id="66ZZ2RilY6A" role="3EZMnx">
              <property role="3F0ifm" value="caption:" />
            </node>
            <node concept="3F0A7n" id="66ZZ2RilY6B" role="3EZMnx">
              <property role="1O74Pk" value="false" />
              <property role="1$x2rV" value="&lt;no caption&gt;" />
              <ref role="1NtTu8" to="tp4k:hyuzpDp" resolve="caption" />
            </node>
            <node concept="VPM3Z" id="66ZZ2RilY6C" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="66ZZ2RilY6D" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="66ZZ2RilY6E" role="3EZMnx">
            <property role="3EZMnw" value="false" />
            <node concept="3F0ifn" id="66ZZ2RilY6F" role="3EZMnx">
              <property role="3F0ifm" value="description:" />
            </node>
            <node concept="3F0A7n" id="66ZZ2RilY6G" role="3EZMnx">
              <property role="1O74Pk" value="true" />
              <property role="1$x2rV" value="&lt;no description&gt;" />
              <ref role="1NtTu8" to="tp4k:hDWHSm8" resolve="description" />
            </node>
            <node concept="VPM3Z" id="66ZZ2RilY6H" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="66ZZ2RilY6I" role="2iSdaV" />
          </node>
          <node concept="3EZMnI" id="7MiEWU6EVQh" role="3EZMnx">
            <node concept="3F0ifn" id="7MiEWU6EVQi" role="3EZMnx">
              <property role="3F0ifm" value="icon:" />
              <node concept="VPM3Z" id="7MiEWU6EVQj" role="3F10Kt">
                <property role="VOm3f" value="false" />
              </node>
            </node>
            <node concept="3F1sOY" id="7MiEWU6EVRi" role="3EZMnx">
              <ref role="1NtTu8" to="tp4k:7MiEWU6EVQf" />
            </node>
            <node concept="VPM3Z" id="7MiEWU6EVRf" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="2iRfu4" id="7MiEWU6EVRg" role="2iSdaV" />
          </node>
          <node concept="2EHx9g" id="66ZZ2RilY7J" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="66ZZ2RilY7K" role="3EZMnx">
          <node concept="VPM3Z" id="66ZZ2RilY7L" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0ifn" id="66ZZ2RilY7M" role="3EZMnx">
          <property role="3F0ifm" value="construction parameters" />
        </node>
        <node concept="3EZMnI" id="66ZZ2RilY7N" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="VPM3Z" id="66ZZ2RilY7O" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3XFhqQ" id="66ZZ2RilY7P" role="3EZMnx" />
          <node concept="3F2HdR" id="66ZZ2RilY7Q" role="3EZMnx">
            <property role="2czwfN" value="true" />
            <ref role="1NtTu8" to="tp4k:hQJraAU" />
            <node concept="2iRkQZ" id="66ZZ2RilY7R" role="2czzBx" />
          </node>
          <node concept="2iRfu4" id="66ZZ2RilY7S" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="66ZZ2RilY7T" role="3EZMnx">
          <node concept="VPM3Z" id="66ZZ2RilY7U" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3EZMnI" id="66ZZ2RilY7V" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <node concept="3F0ifn" id="66ZZ2RilY7W" role="3EZMnx">
            <property role="3F0ifm" value="action context parameters" />
          </node>
          <node concept="3F0ifn" id="66ZZ2RilY7X" role="3EZMnx">
            <property role="3F0ifm" value="(" />
            <ref role="1k5W1q" to="tpen:i177PM9" resolve="Matching" />
            <node concept="VPM3Z" id="66ZZ2RilY7Y" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
            <node concept="3$7jql" id="66ZZ2RilY7Z" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
          </node>
          <node concept="3F0ifn" id="66ZZ2RilY80" role="3EZMnx">
            <property role="3F0ifm" value="always visible" />
            <node concept="VPM3Z" id="66ZZ2RilY81" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0ifn" id="66ZZ2RilY82" role="3EZMnx">
            <property role="3F0ifm" value="=" />
            <node concept="VPM3Z" id="66ZZ2RilY83" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="3F0A7n" id="66ZZ2RilY84" role="3EZMnx">
            <ref role="1NtTu8" to="tp4k:h$fJNc1" resolve="isAlwaysVisible" />
            <node concept="3$7jql" id="66ZZ2RilY85" role="3F10Kt">
              <property role="3$6WeP" value="0.0" />
            </node>
          </node>
          <node concept="3F0ifn" id="66ZZ2RilY86" role="3EZMnx">
            <property role="3F0ifm" value=")" />
            <ref role="1k5W1q" to="tpen:i177PM9" resolve="Matching" />
            <node concept="VPM3Z" id="66ZZ2RilY87" role="3F10Kt">
              <property role="VOm3f" value="false" />
            </node>
          </node>
          <node concept="VPM3Z" id="66ZZ2RilY88" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="66ZZ2RilY89" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="66ZZ2RilY8a" role="3EZMnx">
          <property role="3EZMnw" value="false" />
          <property role="3EZMnz" value="true" />
          <node concept="3XFhqQ" id="66ZZ2RilY8b" role="3EZMnx" />
          <node concept="3F2HdR" id="66ZZ2RilY8c" role="3EZMnx">
            <property role="2czwfN" value="true" />
            <property role="2czwfM" value="true" />
            <ref role="1NtTu8" to="tp4k:hHNuT6$" />
            <node concept="2EHx9g" id="66ZZ2RilY8d" role="2czzBx" />
          </node>
          <node concept="VPM3Z" id="66ZZ2RilY8e" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="2iRfu4" id="66ZZ2RilY8f" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="66ZZ2RilY8g" role="3EZMnx">
          <node concept="VPM3Z" id="66ZZ2RilY8h" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="66ZZ2RilY8i" role="3EZMnx">
          <property role="1$x2rV" value="&lt;update block&gt;" />
          <ref role="1NtTu8" to="tp4k:hwtmbzj" />
        </node>
        <node concept="3F0ifn" id="66ZZ2RilY8j" role="3EZMnx">
          <node concept="VPM3Z" id="66ZZ2RilY8k" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F1sOY" id="66ZZ2RilY8l" role="3EZMnx">
          <property role="1$x2rV" value="&lt;execute block&gt;" />
          <ref role="1NtTu8" to="tp4k:hwtncg6" />
        </node>
        <node concept="3F0ifn" id="66ZZ2RilY8m" role="3EZMnx">
          <node concept="VPM3Z" id="66ZZ2RilY8n" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0ifn" id="66ZZ2RilY8o" role="3EZMnx">
          <property role="3F0ifm" value="additional methods" />
          <node concept="VPM3Z" id="66ZZ2RilY8p" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="30gYXW" id="66ZZ2RilY8q" role="3F10Kt">
            <property role="Vb096" value="orange" />
          </node>
        </node>
        <node concept="3F0ifn" id="66ZZ2RilY8r" role="3EZMnx">
          <node concept="VPM3Z" id="66ZZ2RilY8s" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F2HdR" id="66ZZ2RilY8t" role="3EZMnx">
          <property role="2czwfN" value="true" />
          <ref role="1NtTu8" to="tp4k:hz2lrYP" />
          <node concept="2iRkQZ" id="66ZZ2RilY8u" role="2czzBx" />
        </node>
        <node concept="2iRkQZ" id="66ZZ2RilY8v" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="66ZZ2RilY8w" role="b$u42">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="66ZZ2RilY8x" role="3EZMnx">
          <property role="3F0ifm" value="action" />
          <node concept="VPM3Z" id="66ZZ2RilY8y" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0A7n" id="66ZZ2RilY8z" role="3EZMnx">
          <property role="1$x2rV" value="&lt;no name&gt;" />
          <ref role="1k5W1q" to="tpen:hFIVf2f" resolve="ClassName" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="66ZZ2RilY8$" role="2iSdaV" />
      </node>
      <node concept="VPM3Z" id="7uLDVytsJix" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="3EZMnI" id="RmlFTgVj1T" role="6VMZX">
      <node concept="2EHx9g" id="RmlFTgVjgo" role="2iSdaV" />
      <node concept="3EZMnI" id="3taKAfxfPcg" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="3taKAfxfPch" role="3EZMnx">
          <property role="3F0ifm" value="ID" />
          <node concept="VPM3Z" id="RmlFTgVjdD" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="37jFXN" id="RmlFTgVFtQ" role="3F10Kt">
            <property role="37lx6p" value="RIGHT" />
          </node>
        </node>
        <node concept="3F0ifn" id="RmlFTgVj47" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="VPM3Z" id="RmlFTgVjfk" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0A7n" id="3taKAfxfPci" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <property role="1$x2rV" value="&lt;auto generated from fq name and params&gt;" />
          <ref role="1NtTu8" to="tp4k:3taKAfxfOEY" resolve="ID" />
        </node>
        <node concept="VPM3Z" id="3taKAfxfPcj" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="3taKAfxfPck" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="RmlFTgVj2e" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="RmlFTgVj2f" role="3EZMnx">
          <property role="3F0ifm" value="Keep action context" />
          <node concept="VPM3Z" id="RmlFTgVjaS" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0ifn" id="RmlFTgVj4i" role="3EZMnx">
          <property role="3F0ifm" value=":" />
          <node concept="VPM3Z" id="RmlFTgVjbY" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0A7n" id="RmlFTgVj2g" role="3EZMnx">
          <property role="1O74Pk" value="true" />
          <ref role="1NtTu8" to="tp4k:RmlFTgVj1F" resolve="fillActionContext" />
        </node>
        <node concept="VPM3Z" id="RmlFTgVj2h" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="RmlFTgVj2i" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="RmlFTgVFuE" role="3EZMnx">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="RmlFTgVFuF" role="3EZMnx">
          <node concept="VPM3Z" id="RmlFTgVFuG" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0ifn" id="RmlFTgVFuH" role="3EZMnx">
          <node concept="VPM3Z" id="RmlFTgVFuI" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="VPM3Z" id="RmlFTgVFuK" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="RmlFTgVFuL" role="2iSdaV" />
        <node concept="3F0ifn" id="RmlFTgVFuO" role="3EZMnx">
          <property role="3F0ifm" value="true to use a copy of action context parameters" />
          <ref role="1k5W1q" to="tpen:hshO_Yc" resolve="Comment" />
          <node concept="VPM3Z" id="RmlFTgVFuP" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1InOx6V0wuN">
    <property role="3GE5qa" value="Actions.Creation" />
    <ref role="1XX52x" to="tp4k:1InOx6V0wuJ" resolve="ButtonCreator" />
    <node concept="3EZMnI" id="1InOx6V0wx6" role="2wV5jI">
      <node concept="3F0ifn" id="1InOx6V0wx9" role="3EZMnx">
        <property role="3F0ifm" value="button" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="1InOx6V0wxd" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" to="tpen:75A9veqzBn9" resolve="LeftAngleBracket" />
      </node>
      <node concept="3F1sOY" id="1InOx6V0wxm" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:1InOx6V0wxk" />
      </node>
      <node concept="3F0ifn" id="1InOx6V0wxf" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" to="tpen:75A9veqzBna" resolve="RightAngleBracket" />
      </node>
      <node concept="2iRfu4" id="1InOx6V0wx8" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1InOx6V0wxn">
    <property role="3GE5qa" value="Actions.Creation" />
    <ref role="1XX52x" to="tp4k:1InOx6V0wuF" resolve="PopupCreator" />
    <node concept="3EZMnI" id="1InOx6V0wxp" role="2wV5jI">
      <node concept="3F0ifn" id="1InOx6V0wxq" role="3EZMnx">
        <property role="3F0ifm" value="popup" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="1InOx6V0wxr" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" to="tpen:75A9veqzBn9" resolve="LeftAngleBracket" />
      </node>
      <node concept="3F1sOY" id="7Og6y43yUiL" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:7Og6y43yUiJ" />
      </node>
      <node concept="3F0ifn" id="1InOx6V0wxt" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" to="tpen:75A9veqzBna" resolve="RightAngleBracket" />
      </node>
      <node concept="2iRfu4" id="1InOx6V0wxu" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2_CMTN_oI5A">
    <property role="3GE5qa" value="Actions.Creation" />
    <ref role="1XX52x" to="tp4k:1InOx6V0vrQ" resolve="ToolbarCreator" />
    <node concept="3EZMnI" id="2_CMTN_oI5D" role="2wV5jI">
      <node concept="3F0ifn" id="2_CMTN_oI5E" role="3EZMnx">
        <property role="3F0ifm" value="toolbar" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0ifn" id="2_CMTN_oI5F" role="3EZMnx">
        <property role="3F0ifm" value="&lt;" />
        <ref role="1k5W1q" to="tpen:75A9veqzBn9" resolve="LeftAngleBracket" />
      </node>
      <node concept="3F1sOY" id="7Og6y43yIgz" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:7Og6y43yG$3" />
      </node>
      <node concept="3F0ifn" id="2_CMTN_pUAz" role="3EZMnx">
        <property role="3F0ifm" value="," />
      </node>
      <node concept="3F0A7n" id="2_CMTN_pUA_" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:2_CMTN_pUAu" resolve="isHorizontal" />
      </node>
      <node concept="3F0ifn" id="2_CMTN_oI5J" role="3EZMnx">
        <property role="3F0ifm" value="&gt;" />
        <ref role="1k5W1q" to="tpen:75A9veqzBna" resolve="RightAngleBracket" />
      </node>
      <node concept="2iRfu4" id="2_CMTN_oI5K" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1r3sUHZQVpN">
    <property role="3GE5qa" value="EditorTab" />
    <ref role="1XX52x" to="tp4k:1r3sUHZQVpB" resolve="CreateTabBlock" />
    <node concept="3EZMnI" id="1r3sUHZQVpQ" role="2wV5jI">
      <node concept="2iRkQZ" id="1r3sUHZQVpS" role="2iSdaV" />
      <node concept="3EZMnI" id="1r3sUHZQVpZ" role="3EZMnx">
        <node concept="3F0ifn" id="1r3sUHZQVq2" role="3EZMnx">
          <property role="3F0ifm" value="command:" />
        </node>
        <node concept="2iRfu4" id="1r3sUHZQVq0" role="2iSdaV" />
        <node concept="3F0A7n" id="1r3sUHZQVpW" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:1r3sUHZQVpI" resolve="commandOnCreate" />
        </node>
      </node>
      <node concept="3F1sOY" id="1r3sUHZQVpP" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:1r3sUHZQVpE" />
      </node>
      <node concept="3F1sOY" id="1r3sUHZQVpU" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:1r3sUHZQVpG" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3fOKOapZL7D">
    <ref role="1XX52x" to="tp4k:3fOKOapZKOJ" resolve="EditorTab" />
    <node concept="b$f91" id="3fOKOapZL7F" role="2wV5jI">
      <node concept="3EZMnI" id="3fOKOapZL7G" role="b$u42">
        <property role="3EZMnw" value="false" />
        <node concept="3F0ifn" id="3fOKOapZL7H" role="3EZMnx">
          <property role="3F0ifm" value="editor tab" />
        </node>
        <node concept="3F0A7n" id="3fOKOapZL7I" role="3EZMnx">
          <property role="1$x2rV" value="&lt;tab caption&gt;" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="VPM3Z" id="3fOKOapZL7J" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="2iRfu4" id="3fOKOapZL7K" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="3fOKOapZL7L" role="b$wch">
        <property role="3EZMnw" value="true" />
        <node concept="3EZMnI" id="24tKh709HWc" role="3EZMnx">
          <node concept="VPM3Z" id="24tKh709HWd" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="24tKh709HWe" role="3EZMnx">
            <property role="3F0ifm" value="icon:" />
          </node>
          <node concept="3F1sOY" id="24tKh709HWC" role="3EZMnx">
            <ref role="1NtTu8" to="tp4k:24tKh709Fr2" />
          </node>
          <node concept="2iRfu4" id="24tKh709HWA" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="3fOKOapZL8y" role="3EZMnx">
          <node concept="VPM3Z" id="3fOKOapZL8z" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="3fOKOapZL8$" role="3EZMnx">
            <property role="3F0ifm" value="shortcut char:" />
          </node>
          <node concept="3F0A7n" id="3fOKOapZL8_" role="3EZMnx">
            <property role="1O74Pk" value="true" />
            <property role="1$x2rV" value="&lt;no shortcut&gt;" />
            <ref role="1NtTu8" to="tp4k:3fOKOapZKOR" resolve="shortcutChar" />
          </node>
          <node concept="1HlG4h" id="3fOKOapZL8A" role="3EZMnx">
            <ref role="1k5W1q" to="tpen:hshO_Yc" resolve="Comment" />
            <node concept="1HfYo3" id="3fOKOapZL8B" role="1HlULh">
              <node concept="3TQlhw" id="3fOKOapZL8C" role="1Hhtcw">
                <node concept="3clFbS" id="3fOKOapZL8D" role="2VODD2">
                  <node concept="3clFbF" id="3fOKOapZL8E" role="3cqZAp">
                    <node concept="3cpWs3" id="3fOKOapZL8F" role="3clFbG">
                      <node concept="Xl_RD" id="3fOKOapZL8G" role="3uHU7w">
                        <property role="Xl_RC" value=")" />
                      </node>
                      <node concept="3cpWs3" id="3fOKOapZL8H" role="3uHU7B">
                        <node concept="Xl_RD" id="3fOKOapZL8I" role="3uHU7B">
                          <property role="Xl_RC" value="(alt shift " />
                        </node>
                        <node concept="2OqwBi" id="3fOKOapZL8J" role="3uHU7w">
                          <node concept="2OqwBi" id="3fOKOapZL8K" role="2Oq$k0">
                            <node concept="pncrf" id="3fOKOapZL8L" role="2Oq$k0" />
                            <node concept="3TrcHB" id="3fOKOapZL8M" role="2OqNvi">
                              <ref role="3TsBF5" to="tp4k:3fOKOapZKOR" resolve="shortcutChar" />
                            </node>
                          </node>
                          <node concept="liA8E" id="3fOKOapZL8N" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.toUpperCase():java.lang.String" resolve="toUpperCase" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="pkWqt" id="3fOKOapZL8O" role="pqm2j">
              <node concept="3clFbS" id="3fOKOapZL8P" role="2VODD2">
                <node concept="3clFbF" id="3fOKOapZL8Q" role="3cqZAp">
                  <node concept="2OqwBi" id="3fOKOapZL8R" role="3clFbG">
                    <node concept="2OqwBi" id="3fOKOapZL8S" role="2Oq$k0">
                      <node concept="pncrf" id="3fOKOapZL8T" role="2Oq$k0" />
                      <node concept="3TrcHB" id="3fOKOapZL8U" role="2OqNvi">
                        <ref role="3TsBF5" to="tp4k:3fOKOapZKOR" resolve="shortcutChar" />
                      </node>
                    </node>
                    <node concept="17RvpY" id="3fOKOapZL8V" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRfu4" id="3fOKOapZL8W" role="2iSdaV" />
        </node>
        <node concept="3EZMnI" id="3fOKOapZL9B" role="3EZMnx">
          <node concept="VPM3Z" id="3fOKOapZL9C" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="3fOKOapZL9D" role="3EZMnx">
            <property role="3F0ifm" value="order constraints:" />
          </node>
          <node concept="3F1sOY" id="3fOKOapZLa3" role="3EZMnx">
            <ref role="1NtTu8" to="tp4k:3fOKOapZLa6" />
          </node>
          <node concept="2iRfu4" id="3fOKOapZLa1" role="2iSdaV" />
        </node>
        <node concept="3F0ifn" id="3fOKOapZL9x" role="3EZMnx" />
        <node concept="3EZMnI" id="3fOKOapZL9o" role="3EZMnx">
          <node concept="VPM3Z" id="3fOKOapZL9p" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F0ifn" id="3fOKOapZL9q" role="3EZMnx">
            <property role="3F0ifm" value="base node concept: " />
          </node>
          <node concept="1iCGBv" id="3fOKOapZL9r" role="3EZMnx">
            <ref role="1NtTu8" to="tp4k:3fOKOapZKOK" />
            <node concept="1sVBvm" id="3fOKOapZL9s" role="1sWHZn">
              <node concept="3F0A7n" id="3fOKOapZL9t" role="2wV5jI">
                <property role="1Intyy" value="true" />
                <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="2iRfu4" id="3fOKOapZL9u" role="2iSdaV" />
        </node>
        <node concept="3F1sOY" id="3fOKOapZL9v" role="3EZMnx">
          <property role="1$x2rV" value="&lt;base node = default&gt;" />
          <ref role="1NtTu8" to="tp4k:3fOKOapZKOM" />
        </node>
        <node concept="3F0ifn" id="3fOKOapZW25" role="3EZMnx" />
        <node concept="3F1sOY" id="3fOKOapZW27" role="3EZMnx">
          <property role="1$x2rV" value="&lt;isApplicable = true&gt;" />
          <ref role="1NtTu8" to="tp4k:3fOKOapZW22" />
        </node>
        <node concept="3F0ifn" id="3fOKOapZL7X" role="3EZMnx" />
        <node concept="3F1sOY" id="3fOKOapZL80" role="3EZMnx">
          <property role="1$x2rV" value="&lt;nodes = default&gt;" />
          <ref role="1NtTu8" to="tp4k:3fOKOapZL7w" />
        </node>
        <node concept="3F0ifn" id="3fOKOapZL81" role="3EZMnx" />
        <node concept="3F1sOY" id="1r3sUHZQVpM" role="3EZMnx">
          <property role="1$x2rV" value="&lt;can't create nodes&gt;" />
          <ref role="1NtTu8" to="tp4k:1r3sUHZQVpK" />
        </node>
        <node concept="2iRkQZ" id="3fOKOapZL8u" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4Ns790kXiYK">
    <property role="3GE5qa" value="Actions.Action.Parameters.Condition" />
    <ref role="1XX52x" to="tp4k:4Ns790kXiYI" resolve="RequiredCondition" />
    <node concept="3F0ifn" id="4Ns790kXj5m" role="2wV5jI">
      <property role="3F0ifm" value="required" />
      <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
    </node>
  </node>
  <node concept="24kQdi" id="4VdA123c_6_">
    <property role="3GE5qa" value="Actions.Action.Parameters.Condition" />
    <ref role="1XX52x" to="tp4k:4VdA123c_6y" resolve="EditableModel" />
    <node concept="3F0ifn" id="4VdA123c_iF" role="2wV5jI">
      <property role="3F0ifm" value="editable" />
      <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
    </node>
  </node>
  <node concept="24kQdi" id="55z4ZnCkRVK">
    <property role="3GE5qa" value="Idea" />
    <ref role="1XX52x" to="tp4k:55z4ZnCkRVG" resolve="IdeaPluginDependency" />
    <node concept="3EZMnI" id="55z4ZnCkRVM" role="2wV5jI">
      <node concept="3F0ifn" id="55z4ZnCkRVP" role="3EZMnx">
        <property role="3F0ifm" value="idea plugin" />
      </node>
      <node concept="3F0A7n" id="55z4ZnCkRVR" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:55z4ZnCkRVJ" resolve="pluginId" />
      </node>
      <node concept="l2Vlx" id="55z4ZnCkRVO" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="biFim41QcM">
    <property role="3GE5qa" value="Idea" />
    <ref role="1XX52x" to="tp4k:biFim41QcK" resolve="MPSPluginDependency" />
    <node concept="3EZMnI" id="biFim41Zre" role="2wV5jI">
      <node concept="3F0ifn" id="biFim41Zrh" role="3EZMnx">
        <property role="3F0ifm" value="mps plugin" />
      </node>
      <node concept="1iCGBv" id="biFim41Zrj" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:biFim41QcL" />
        <node concept="1sVBvm" id="biFim41Zrk" role="1sWHZn">
          <node concept="3F0A7n" id="biFim41Zrm" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tp4k:4mQiM_caNkm" resolve="id" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="biFim41Zrg" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="ioJBUBfVCh">
    <property role="3GE5qa" value="Idea.Actions" />
    <ref role="1XX52x" to="tp4k:ioJBUBfUsu" resolve="IdeaActionsDescriptor" />
    <node concept="3EZMnI" id="ioJBUBfVCK" role="2wV5jI">
      <node concept="l2Vlx" id="ioJBUBfVCL" role="2iSdaV" />
      <node concept="3F0ifn" id="ioJBUBfVCM" role="3EZMnx">
        <property role="3F0ifm" value="actions:" />
        <node concept="ljvvj" id="ioJBUBgBJC" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="ioJBUBfVDv" role="3EZMnx">
        <node concept="VPM3Z" id="ioJBUBfVDw" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="ioJBUBfVCQ" role="3EZMnx">
          <property role="3F0ifm" value="groups:" />
          <node concept="ljvvj" id="ioJBUBfVD$" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="ioJBUBfVCR" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:ioJBUBfUsy" />
          <node concept="l2Vlx" id="ioJBUBfVCS" role="2czzBx" />
          <node concept="ljvvj" id="ioJBUBfVDq" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="lj46D" id="ioJBUBfVD_" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pj6Ft" id="ioJBUBfVDH" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="ioJBUBfVDB" role="3EZMnx">
          <property role="3F0ifm" value="" />
          <node concept="ljvvj" id="ioJBUBfVDC" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="ioJBUBfVDs" role="3EZMnx">
          <property role="3F0ifm" value="keymaps:" />
          <node concept="ljvvj" id="ioJBUBfVDE" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="ioJBUBfVCO" role="3EZMnx">
          <ref role="1NtTu8" to="tp4k:ioJBUBfUy0" />
          <node concept="l2Vlx" id="ioJBUBfVCP" role="2czzBx" />
          <node concept="lj46D" id="ioJBUBfVDp" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="ioJBUBfVDt" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pj6Ft" id="ioJBUBfVDG" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="ioJBUBfVDy" role="2iSdaV" />
        <node concept="lj46D" id="ioJBUBfVDz" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="ioJBUBfVDI">
    <property role="3GE5qa" value="Idea.Actions" />
    <ref role="1XX52x" to="tp4k:ioJBUBfUsv" resolve="ActionGroupRef" />
    <node concept="1iCGBv" id="ioJBUBfVDO" role="2wV5jI">
      <ref role="1NtTu8" to="tp4k:ioJBUBfUsw" />
      <node concept="1sVBvm" id="ioJBUBfVDP" role="1sWHZn">
        <node concept="3F0A7n" id="ioJBUBfVDQ" role="2wV5jI">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPRnO" id="6o2z4lP9U9y" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="ioJBUBfVDY">
    <property role="3GE5qa" value="Idea.Actions" />
    <ref role="1XX52x" to="tp4k:ioJBUBfUxY" resolve="KeymapRef" />
    <node concept="1iCGBv" id="ioJBUBfVE0" role="2wV5jI">
      <ref role="1NtTu8" to="tp4k:ioJBUBfUxZ" />
      <node concept="1sVBvm" id="ioJBUBfVE1" role="1sWHZn">
        <node concept="3F0A7n" id="ioJBUBfVE3" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPRnO" id="6o2z4lPxo80" role="3F10Kt" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2LXdEGeeK_t">
    <property role="3GE5qa" value="Idea" />
    <ref role="1XX52x" to="tp4k:2LXdEGeeK_q" resolve="IdeaConfigurationXml" />
    <node concept="3EZMnI" id="2LXdEGeeKAW" role="2wV5jI">
      <node concept="3F0A7n" id="2LXdEGeeKB2" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2LXdEGeeKB0" role="3EZMnx">
        <property role="3F0ifm" value=".xml" />
        <node concept="ljvvj" id="2LXdEGeeKB5" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="2LXdEGeeKB4" role="3EZMnx">
        <property role="3F0ifm" value="" />
        <node concept="ljvvj" id="2LXdEGeeKB6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="2LXdEGeeKAX" role="2iSdaV" />
      <node concept="3F1sOY" id="2LXdEGeeKAY" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:2LXdEGeeK_s" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="UjtgkvXiua">
    <property role="3GE5qa" value="Actions.Action.Parameters.Condition" />
    <ref role="1XX52x" to="tp4k:UjtgkvXiu1" resolve="ConceptCondition" />
    <node concept="3EZMnI" id="UjtgkvXiue" role="2wV5jI">
      <node concept="2iRfu4" id="UjtgkvXiuf" role="2iSdaV" />
      <node concept="3F0ifn" id="UjtgkvXiuc" role="3EZMnx">
        <property role="3F0ifm" value="concept=" />
      </node>
      <node concept="1iCGBv" id="UjtgkvXiuh" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:UjtgkvXiud" />
        <node concept="1sVBvm" id="UjtgkvXiui" role="1sWHZn">
          <node concept="3F0A7n" id="UjtgkvXiuk" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="h$fvwLC">
    <property role="3GE5qa" value="DEPRECATED" />
    <ref role="1XX52x" to="tp4k:h$fuyOq" resolve="AddElementStatement" />
    <node concept="3EZMnI" id="h$fvxMB" role="2wV5jI">
      <property role="3EZMnw" value="false" />
      <node concept="3F0ifn" id="h$fvySf" role="3EZMnx">
        <property role="3F0ifm" value="addJavaAction" />
      </node>
      <node concept="3F1sOY" id="h$fv$vO" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:h$fuBAi" />
      </node>
      <node concept="3F0ifn" id="h$fvAgV" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
      </node>
      <node concept="l2Vlx" id="i0Nn23t" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1jWAYEV8xjx">
    <property role="3GE5qa" value="Actions.Action.DumbAware" />
    <ref role="1XX52x" to="tp4k:1jWAYEV8xjv" resolve="ActionReference" />
    <node concept="1iCGBv" id="1jWAYEV8xjy" role="2wV5jI">
      <ref role="1NtTu8" to="tp4k:1jWAYEV8xjw" />
      <node concept="1sVBvm" id="1jWAYEV8xjz" role="1sWHZn">
        <node concept="3F0A7n" id="1jWAYEV8xj$" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <node concept="VPRnO" id="6o2z4lPrFwy" role="3F10Kt" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1jWAYEV8ySQ">
    <property role="3GE5qa" value="Actions.Action.DumbAware" />
    <ref role="1XX52x" to="tp4k:1jWAYEV8xjs" resolve="NonDumbAwareActions" />
    <node concept="3EZMnI" id="1jWAYEV8ySS" role="2wV5jI">
      <node concept="2iRkQZ" id="1jWAYEV8ySU" role="2iSdaV" />
      <node concept="3EZMnI" id="1jWAYEV8yT2" role="3EZMnx">
        <node concept="2iRfu4" id="1jWAYEV8yT3" role="2iSdaV" />
        <node concept="3F0ifn" id="1jWAYEV8ySW" role="3EZMnx">
          <property role="3F0ifm" value="Set" />
        </node>
        <node concept="3F0A7n" id="1jWAYEV8yT5" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="1jWAYEV8yT8" role="3EZMnx">
          <property role="3F0ifm" value="of actions disabled while indexing" />
        </node>
      </node>
      <node concept="3F2HdR" id="1jWAYEV8ySY" role="3EZMnx">
        <ref role="1NtTu8" to="tp4k:1jWAYEV8xjt" />
        <node concept="2iRkQZ" id="1jWAYEV8ySZ" role="2czzBx" />
      </node>
    </node>
  </node>
</model>

