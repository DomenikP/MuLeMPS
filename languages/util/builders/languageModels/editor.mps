<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4b2fc856-1e6f-49a5-825e-2904bdab655c(jetbrains.mps.baseLanguage.builders.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="pmg0" ref="r:77052501-5144-48a7-be50-7535fc6d1073(jetbrains.mps.baseLanguage.builders.structure)" />
    <import index="j8l" ref="r:3783215c-b297-48a0-a2ee-a2b26d55402b(jetbrains.mps.baseLanguage.builders.behavior)" />
    <import index="tpen" ref="r:00000000-0000-4000-0000-011c895902c3(jetbrains.mps.baseLanguage.editor)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1176897764478" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeFactory" flags="in" index="4$FPG" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <child id="1176897874615" name="nodeFactory" index="4_6I_" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
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
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186402211651" name="jetbrains.mps.lang.editor.structure.StyleSheet" flags="ng" index="V5hpn">
        <child id="1186402402630" name="styleClass" index="V601i" />
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
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="3383245079137382180" name="jetbrains.mps.lang.editor.structure.StyleClass" flags="ig" index="14StLt" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <property id="1130859485024" name="attractsFocus" index="1cu_pB" />
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
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
      <concept id="625126330682908270" name="jetbrains.mps.lang.editor.structure.CellModel_ReferencePresentation" flags="sg" stub="730538219795961225" index="3SHvHV" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
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
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="67LR$5LOFWh">
    <ref role="1XX52x" to="pmg0:67LR$5LOFWe" resolve="BuilderCreator" />
    <node concept="3EZMnI" id="67LR$5LOFWk" role="2wV5jI">
      <node concept="3F1sOY" id="67LR$5LOFWl" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:4ak9ytIbIbS" />
      </node>
      <node concept="3EZMnI" id="67LR$5LQnlD" role="3EZMnx">
        <node concept="VPM3Z" id="67LR$5LQnlE" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="67LR$5LQnlH" role="3EZMnx">
          <property role="3F0ifm" value="{" />
          <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
          <node concept="ljvvj" id="67LR$5LQnlI" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="67LR$5LQnlJ" role="3EZMnx">
          <ref role="1NtTu8" to="pmg0:4ak9ytI9has" />
          <node concept="lj46D" id="67LR$5LQnlK" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="67LR$5LQnlL" role="3EZMnx">
          <property role="3F0ifm" value="}" />
          <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
          <node concept="pVoyu" id="67LR$5LQnlM" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="67LR$5LQnlG" role="2iSdaV" />
        <node concept="pkWqt" id="67LR$5LQnlN" role="pqm2j">
          <node concept="3clFbS" id="67LR$5LQnlO" role="2VODD2">
            <node concept="3clFbF" id="67LR$5LQozr" role="3cqZAp">
              <node concept="3fqX7Q" id="67LR$5LQozs" role="3clFbG">
                <node concept="2OqwBi" id="67LR$5LQoz$" role="3fr31v">
                  <node concept="2OqwBi" id="67LR$5LQozv" role="2Oq$k0">
                    <node concept="pncrf" id="67LR$5LQozu" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4ak9ytIbIc9" role="2OqNvi">
                      <ref role="3Tt5mk" to="pmg0:4ak9ytIbIbS" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="67LR$5LQozC" role="2OqNvi">
                    <ref role="37wK5l" to="j8l:67LR$5LQnln" resolve="isLeaf" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="67LR$5LOFWm" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="67LR$5LOFWA">
    <ref role="1XX52x" to="pmg0:67LR$5LOFWz" resolve="BuilderStatement" />
    <node concept="3EZMnI" id="67LR$5LOFWF" role="2wV5jI">
      <node concept="3F1sOY" id="67LR$5LOFWG" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:4ak9ytIbIbS" />
      </node>
      <node concept="3F0ifn" id="6W8Q7RPJRjd" role="3EZMnx">
        <property role="3F0ifm" value=";" />
        <ref role="1k5W1q" to="tpen:hFDgi_W" resolve="Semicolon" />
        <node concept="pkWqt" id="6W8Q7RPJRje" role="pqm2j">
          <node concept="3clFbS" id="6W8Q7RPJRjf" role="2VODD2">
            <node concept="3clFbF" id="6W8Q7RPJRjg" role="3cqZAp">
              <node concept="2OqwBi" id="6W8Q7RPJRjn" role="3clFbG">
                <node concept="2OqwBi" id="6W8Q7RPJRji" role="2Oq$k0">
                  <node concept="pncrf" id="6W8Q7RPJRjh" role="2Oq$k0" />
                  <node concept="3TrEf2" id="6W8Q7RPJRjm" role="2OqNvi">
                    <ref role="3Tt5mk" to="pmg0:4ak9ytIbIbS" />
                  </node>
                </node>
                <node concept="2qgKlT" id="6W8Q7RPJRjr" role="2OqNvi">
                  <ref role="37wK5l" to="j8l:67LR$5LQnln" resolve="isLeaf" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="67LR$5LQozE" role="3EZMnx">
        <node concept="VPM3Z" id="67LR$5LQozF" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="67LR$5LQozI" role="3EZMnx">
          <property role="3F0ifm" value="{" />
          <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
          <node concept="ljvvj" id="67LR$5LQozJ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="67LR$5LQozK" role="3EZMnx">
          <ref role="1NtTu8" to="pmg0:4ak9ytI9has" />
          <node concept="lj46D" id="67LR$5LQozL" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="67LR$5LQozM" role="3EZMnx">
          <property role="3F0ifm" value="}" />
          <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
          <node concept="pVoyu" id="67LR$5LQozN" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="67LR$5LQozH" role="2iSdaV" />
        <node concept="pkWqt" id="67LR$5LQozO" role="pqm2j">
          <node concept="3clFbS" id="67LR$5LQozP" role="2VODD2">
            <node concept="3clFbF" id="67LR$5LQozQ" role="3cqZAp">
              <node concept="3fqX7Q" id="67LR$5LQo$2" role="3clFbG">
                <node concept="2OqwBi" id="67LR$5LQo$3" role="3fr31v">
                  <node concept="2OqwBi" id="67LR$5LQo$4" role="2Oq$k0">
                    <node concept="pncrf" id="67LR$5LQo$5" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4ak9ytIbIck" role="2OqNvi">
                      <ref role="3Tt5mk" to="pmg0:4ak9ytIbIbS" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="67LR$5LQo$7" role="2OqNvi">
                    <ref role="37wK5l" to="j8l:67LR$5LQnln" resolve="isLeaf" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="67LR$5LOFWN" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="67LR$5LP2_4">
    <ref role="1XX52x" to="pmg0:67LR$5LOFWb" resolve="Builder" />
    <node concept="PMmxH" id="2wdLO7KhYaq" role="2wV5jI">
      <property role="1cu_pB" value="0" />
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
    </node>
  </node>
  <node concept="24kQdi" id="6k$kQGI6dFz">
    <ref role="1XX52x" to="pmg0:6k$kQGI6dFw" resolve="ResultExpression" />
    <node concept="3F0ifn" id="6k$kQGI6dF_" role="2wV5jI">
      <property role="3F0ifm" value="result" />
      <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
    </node>
  </node>
  <node concept="24kQdi" id="6k$kQGI6xSY">
    <property role="3GE5qa" value="simple" />
    <ref role="1XX52x" to="pmg0:6k$kQGI6xSV" resolve="SimpleBuilders" />
    <node concept="3EZMnI" id="6k$kQGI6xT0" role="2wV5jI">
      <node concept="l2Vlx" id="6k$kQGI6xT2" role="2iSdaV" />
      <node concept="3F0ifn" id="6k$kQGI6xT4" role="3EZMnx">
        <property role="3F0ifm" value="builders" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="6k$kQGI6xT6" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="4wDZIZrGcOk" role="3EZMnx">
        <property role="3F0ifm" value="extends" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="1iCGBv" id="4wDZIZrGcOm" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:4wDZIZrGcOi" />
        <node concept="1sVBvm" id="4wDZIZrGcOn" role="1sWHZn">
          <node concept="3F0A7n" id="4wDZIZrGcOp" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6k$kQGI6xT8" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="ljvvj" id="6k$kQGI6xT9" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="6k$kQGI6xTe" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:6k$kQGI6xSX" />
        <node concept="4$FPG" id="1QpaM9zF8$m" role="4_6I_">
          <node concept="3clFbS" id="1QpaM9zF8$n" role="2VODD2">
            <node concept="3clFbF" id="1QpaM9zF8$o" role="3cqZAp">
              <node concept="2ShNRf" id="1QpaM9zF8$p" role="3clFbG">
                <node concept="3zrR0B" id="1QpaM9zF8$r" role="2ShVmc">
                  <node concept="3Tqbb2" id="1QpaM9zF8$s" role="3zrR0E">
                    <ref role="ehGHo" to="pmg0:6k$kQGI6xSS" resolve="SimpleBuilderDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="6k$kQGI6xTf" role="2czzBx" />
        <node concept="lj46D" id="6k$kQGI6xTg" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="6k$kQGI6Q2f" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6k$kQGI6xTb" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
        <node concept="pVoyu" id="6k$kQGI6xTh" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6k$kQGI6_Am">
    <property role="3GE5qa" value="simple" />
    <ref role="1XX52x" to="pmg0:6k$kQGI6xSS" resolve="SimpleBuilderDeclaration" />
    <node concept="3EZMnI" id="6k$kQGI6_Ap" role="2wV5jI">
      <node concept="3F0ifn" id="6k$kQGI6XRq" role="3EZMnx">
        <property role="3F0ifm" value="root" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="pkWqt" id="6k$kQGI6XRr" role="pqm2j">
          <node concept="3clFbS" id="6k$kQGI6XRs" role="2VODD2">
            <node concept="3clFbF" id="6k$kQGI72Ir" role="3cqZAp">
              <node concept="2OqwBi" id="6k$kQGI72It" role="3clFbG">
                <node concept="pncrf" id="6k$kQGI72Is" role="2Oq$k0" />
                <node concept="3TrcHB" id="6k$kQGI72Ix" role="2OqNvi">
                  <ref role="3TsBF5" to="pmg0:6k$kQGI6XRn" resolve="root" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6k$kQGIav9i" role="3EZMnx">
        <property role="3F0ifm" value="leaf" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="pkWqt" id="6k$kQGIav9j" role="pqm2j">
          <node concept="3clFbS" id="6k$kQGIav9k" role="2VODD2">
            <node concept="3clFbF" id="6k$kQGIav9l" role="3cqZAp">
              <node concept="2OqwBi" id="6k$kQGIav9n" role="3clFbG">
                <node concept="pncrf" id="6k$kQGIav9m" role="2Oq$k0" />
                <node concept="3TrcHB" id="6k$kQGIav9r" role="2OqNvi">
                  <ref role="3TsBF5" to="pmg0:6k$kQGIatVE" resolve="leaf" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="3jPK7hzSBcl" role="3EZMnx">
        <property role="3F0ifm" value="abstract" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="pkWqt" id="3jPK7hzSBcm" role="pqm2j">
          <node concept="3clFbS" id="3jPK7hzSBcn" role="2VODD2">
            <node concept="3clFbF" id="3jPK7hzSBco" role="3cqZAp">
              <node concept="2OqwBi" id="3jPK7hzSBcq" role="3clFbG">
                <node concept="pncrf" id="3jPK7hzSBcp" role="2Oq$k0" />
                <node concept="3TrcHB" id="3jPK7hzSBcu" role="2OqNvi">
                  <ref role="3TsBF5" to="pmg0:3jPK7hzREE3" resolve="isAbstract" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6k$kQGI6_As" role="3EZMnx">
        <property role="3F0ifm" value="builder" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="6k$kQGI6_Au" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="4Hc0vRp0gIj" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
        <node concept="11L4FC" id="3JyUPcAQxlt" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="4Hc0vRp0gIl" role="3EZMnx">
        <property role="2czwfO" value="," />
        <ref role="1NtTu8" to="pmg0:4Hc0vRp0gIh" />
        <node concept="l2Vlx" id="4Hc0vRp0gIm" role="2czzBx" />
        <node concept="3F0ifn" id="3JyUPcAQok2" role="2czzBI">
          <node concept="VPxyj" id="3JyUPcAQok3" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4Hc0vRp0gIo" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="3F0ifn" id="3jPK7hzQGJz" role="3EZMnx">
        <property role="3F0ifm" value="extends" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="1iCGBv" id="3jPK7hzQGJ_" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:3jPK7hzQBgP" />
        <node concept="1sVBvm" id="3jPK7hzQGJA" role="1sWHZn">
          <node concept="3F0A7n" id="3jPK7hzQGJC" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6k$kQGI6_Aw" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="ljvvj" id="6k$kQGI6_Ax" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3jPK7hzQXCj" role="3EZMnx">
        <property role="3F0ifm" value="type:" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="lj46D" id="3jPK7hzQXCk" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="3jPK7hzQXCm" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:3jPK7hzQXCb" />
        <node concept="ljvvj" id="3jPK7hzQXCn" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="3jPK7hzSX3f" role="3EZMnx">
        <node concept="VPM3Z" id="3jPK7hzSX3g" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="3jPK7hzSX3k" role="3EZMnx">
          <property role="3F0ifm" value="create:" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        </node>
        <node concept="3F1sOY" id="3jPK7hzSX3l" role="3EZMnx">
          <ref role="1NtTu8" to="pmg0:6k$kQGIaUGI" />
        </node>
        <node concept="l2Vlx" id="3jPK7hzSX3i" role="2iSdaV" />
        <node concept="lj46D" id="3jPK7hzSX3j" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="3jPK7hzSX3n" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pkWqt" id="3jPK7hzTb0i" role="pqm2j">
          <node concept="3clFbS" id="3jPK7hzTb0j" role="2VODD2">
            <node concept="3clFbF" id="3jPK7hzTb0k" role="3cqZAp">
              <node concept="22lmx$" id="4RAjgnMFClL" role="3clFbG">
                <node concept="2OqwBi" id="4RAjgnMFK3d" role="3uHU7w">
                  <node concept="2OqwBi" id="4RAjgnMFCm9" role="2Oq$k0">
                    <node concept="pncrf" id="4RAjgnMFClO" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4RAjgnMFK2R" role="2OqNvi">
                      <ref role="3Tt5mk" to="pmg0:6k$kQGIaUGI" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="4RAjgnMFKwF" role="2OqNvi" />
                </node>
                <node concept="3fqX7Q" id="3jPK7hzTb0l" role="3uHU7B">
                  <node concept="2OqwBi" id="3jPK7hzTb0o" role="3fr31v">
                    <node concept="pncrf" id="3jPK7hzTb0n" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3jPK7hzTb0s" role="2OqNvi">
                      <ref role="3TsBF5" to="pmg0:3jPK7hzREE3" resolve="isAbstract" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6k$kQGIaUGN" role="3EZMnx">
        <node concept="ljvvj" id="6k$kQGIaUGO" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="6k$kQGIaUGP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="6k$kQGI7Tn5" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:6k$kQGI7Tn4" />
        <node concept="l2Vlx" id="6k$kQGI7Tn6" role="2czzBx" />
        <node concept="lj46D" id="6k$kQGI7Tn7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="6k$kQGI7Tn8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="2DGCYNABMeY" role="2czzBI">
          <property role="ilYzB" value="&lt;&lt;children&gt;&gt;" />
          <node concept="VPxyj" id="2DGCYNABMf2" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F2HdR" id="4Fc1sznat83" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:4Fc1sznat87" />
        <node concept="l2Vlx" id="4Fc1sznat84" role="2czzBx" />
        <node concept="lj46D" id="4Fc1sznat85" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="4Fc1sznat86" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F0ifn" id="2DGCYNABMf3" role="2czzBI">
          <property role="ilYzB" value="&lt;&lt;properties&gt;&gt;" />
          <node concept="VPxyj" id="2DGCYNABMf4" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6k$kQGI6_Az" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
        <node concept="ljvvj" id="6k$kQGI7bqj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6k$kQGI7bqi" role="3EZMnx" />
      <node concept="l2Vlx" id="6k$kQGI6_Ar" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="6k$kQGI72Iy" role="6VMZX">
      <node concept="l2Vlx" id="6k$kQGI72Iz" role="2iSdaV" />
      <node concept="3F0ifn" id="6k$kQGI72I$" role="3EZMnx">
        <property role="3F0ifm" value="root" />
      </node>
      <node concept="3F0ifn" id="6k$kQGI72IA" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="6k$kQGI72IC" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:6k$kQGI6XRn" resolve="root" />
        <node concept="ljvvj" id="6k$kQGIaw8F" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6k$kQGIaw8H" role="3EZMnx">
        <property role="3F0ifm" value="leaf" />
      </node>
      <node concept="3F0ifn" id="6k$kQGIaw8L" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="6k$kQGIaw8J" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:6k$kQGIatVE" resolve="leaf" />
        <node concept="ljvvj" id="3jPK7hzSBcj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="3jPK7hzSBcg" role="3EZMnx">
        <property role="3F0ifm" value="abstract" />
      </node>
      <node concept="3F0A7n" id="3jPK7hzSBci" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:3jPK7hzREE3" resolve="isAbstract" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6k$kQGI82co">
    <property role="3GE5qa" value="simple" />
    <ref role="1XX52x" to="pmg0:6k$kQGI7jkU" resolve="SimpleBuilderChild" />
    <node concept="3EZMnI" id="6k$kQGI82cq" role="2wV5jI">
      <node concept="3F0ifn" id="6k$kQGI82ct" role="3EZMnx">
        <property role="3F0ifm" value="child" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="1iCGBv" id="6k$kQGI82cv" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:6k$kQGI7jkV" />
        <node concept="1sVBvm" id="6k$kQGI82cw" role="1sWHZn">
          <node concept="3F0A7n" id="6k$kQGI82cy" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="6k$kQGI82c$" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="ljvvj" id="6k$kQGI82c_" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="6k$kQGI82cG" role="3EZMnx">
        <node concept="VPM3Z" id="6k$kQGI82cH" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="6k$kQGI82cL" role="3EZMnx">
          <property role="3F0ifm" value="attach" />
          <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        </node>
        <node concept="3F1sOY" id="6k$kQGI9fWX" role="3EZMnx">
          <ref role="1NtTu8" to="pmg0:6k$kQGI7qLr" />
          <node concept="lj46D" id="6k$kQGI9fWY" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="6k$kQGI9fWZ" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="6k$kQGI82cJ" role="2iSdaV" />
        <node concept="lj46D" id="6k$kQGI82cK" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="6k$kQGI82cD" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
        <node concept="pVoyu" id="6k$kQGI82cE" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="l2Vlx" id="6k$kQGI82cs" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6k$kQGI9c2Z">
    <property role="3GE5qa" value="simple" />
    <ref role="1XX52x" to="pmg0:6k$kQGI9c2U" resolve="SimpleBuilder" />
    <node concept="3EZMnI" id="3JyUPcAOMT3" role="2wV5jI">
      <node concept="1iCGBv" id="3JyUPcAOMT4" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:6k$kQGI9c2V" />
        <node concept="1sVBvm" id="3JyUPcAOMT5" role="1sWHZn">
          <node concept="3F0A7n" id="3JyUPcAOMT6" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            <ref role="1k5W1q" node="3JyUPcAQHo8" resolve="Builder" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="3JyUPcAOMTd" role="3EZMnx">
        <node concept="VPM3Z" id="3JyUPcAOMTe" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="3JyUPcAOMTh" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
          <node concept="11L4FC" id="3JyUPcAPOkM" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="3JyUPcAP7Ty" role="3EZMnx">
          <property role="2czwfO" value="," />
          <ref role="1NtTu8" to="pmg0:3JyUPcAP7Tw" />
          <node concept="l2Vlx" id="3JyUPcAP7Tz" role="2czzBx" />
          <node concept="3F0ifn" id="3JyUPcAPXjV" role="2czzBI">
            <property role="1cu_pB" value="1" />
            <node concept="VPxyj" id="3JyUPcAQ6jH" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="3JyUPcAOMTj" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
        </node>
        <node concept="l2Vlx" id="3JyUPcAOMTg" role="2iSdaV" />
        <node concept="pkWqt" id="3JyUPcAOMTk" role="pqm2j">
          <node concept="3clFbS" id="3JyUPcAOMTl" role="2VODD2">
            <node concept="3clFbF" id="3JyUPcAOOXO" role="3cqZAp">
              <node concept="2OqwBi" id="3JyUPcAOOY0" role="3clFbG">
                <node concept="2OqwBi" id="3JyUPcAOOXV" role="2Oq$k0">
                  <node concept="2OqwBi" id="3JyUPcAOOXQ" role="2Oq$k0">
                    <node concept="pncrf" id="3JyUPcAOOXP" role="2Oq$k0" />
                    <node concept="3TrEf2" id="3JyUPcAOOXU" role="2OqNvi">
                      <ref role="3Tt5mk" to="pmg0:6k$kQGI9c2V" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="3JyUPcAOOXZ" role="2OqNvi">
                    <ref role="3TtcxE" to="pmg0:4Hc0vRp0gIh" />
                  </node>
                </node>
                <node concept="3GX2aA" id="3JyUPcAOOY4" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="3JyUPcAOMT7" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4Hc0vRp0rQv">
    <property role="3GE5qa" value="simple" />
    <ref role="1XX52x" to="pmg0:4Hc0vRp0g_o" resolve="SimpleBuilderParameter" />
    <node concept="3EZMnI" id="4Hc0vRp0rQx" role="2wV5jI">
      <node concept="3F1sOY" id="4Hc0vRp0rQ$" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:4Hc0vRp0g_p" />
      </node>
      <node concept="3F0A7n" id="4Hc0vRp0rQA" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="l2Vlx" id="4Hc0vRp0rQz" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4Hc0vRp0DNA">
    <property role="3GE5qa" value="simple" />
    <ref role="1XX52x" to="pmg0:4Hc0vRp0DN$" resolve="SimpleBuilderParameterReference" />
    <node concept="1iCGBv" id="4Hc0vRp0DNC" role="2wV5jI">
      <ref role="1NtTu8" to="pmg0:4Hc0vRp0DN_" />
      <node concept="1sVBvm" id="4Hc0vRp0DND" role="1sWHZn">
        <node concept="3F0A7n" id="4Hc0vRp0DNF" role="2wV5jI">
          <property role="1Intyy" value="true" />
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          <ref role="1k5W1q" node="3JyUPcAS_Yb" resolve="Parameter" />
        </node>
      </node>
    </node>
  </node>
  <node concept="V5hpn" id="3JyUPcAQHo7">
    <property role="TrG5h" value="StyleSheet" />
    <node concept="14StLt" id="3JyUPcAQHo8" role="V601i">
      <property role="TrG5h" value="Builder" />
      <node concept="Vb9p2" id="3JyUPcAQHoa" role="3F10Kt">
        <property role="Vbekb" value="BOLD" />
      </node>
      <node concept="VechU" id="3JyUPcAQHoc" role="3F10Kt">
        <property role="Vb096" value="blue" />
      </node>
    </node>
    <node concept="14StLt" id="3JyUPcAS_Yb" role="V601i">
      <property role="TrG5h" value="Parameter" />
      <node concept="Vb9p2" id="3JyUPcAS_Yc" role="3F10Kt">
        <property role="Vbekb" value="ITALIC" />
      </node>
      <node concept="VechU" id="3JyUPcAS_Yd" role="3F10Kt">
        <property role="Vb096" value="blue" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="3JyUPcASP47">
    <property role="3GE5qa" value="simple.childParams" />
    <ref role="1XX52x" to="pmg0:6k$kQGI7jl0" resolve="SimpleBuilderExpression" />
    <node concept="PMmxH" id="2wdLO7KhYbK" role="2wV5jI">
      <property role="1cu_pB" value="0" />
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <ref role="1k5W1q" node="3JyUPcAS_Yb" resolve="Parameter" />
    </node>
  </node>
  <node concept="24kQdi" id="6L7f8C86lSw">
    <ref role="1XX52x" to="pmg0:6L7f8C86lSs" resolve="AsBuilderStatement" />
    <node concept="3EZMnI" id="6L7f8C86lSy" role="2wV5jI">
      <node concept="3F1sOY" id="6L7f8C86lSV" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:6L7f8C86lSv" />
      </node>
      <node concept="3F0ifn" id="6L7f8C86lST" role="3EZMnx">
        <property role="3F0ifm" value="as" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F1sOY" id="6L7f8C86lSz" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:4ak9ytIbIbS" />
      </node>
      <node concept="3EZMnI" id="6L7f8C86lS$" role="3EZMnx">
        <node concept="VPM3Z" id="6L7f8C86lS_" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F0ifn" id="6L7f8C86lSA" role="3EZMnx">
          <property role="3F0ifm" value="{" />
          <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
          <node concept="ljvvj" id="6L7f8C86lSB" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F1sOY" id="6L7f8C86lSC" role="3EZMnx">
          <ref role="1NtTu8" to="pmg0:4ak9ytI9has" />
          <node concept="lj46D" id="6L7f8C86lSD" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="6L7f8C86lSE" role="3EZMnx">
          <property role="3F0ifm" value="}" />
          <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
          <node concept="pVoyu" id="6L7f8C86lSF" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="6L7f8C86lSG" role="2iSdaV" />
        <node concept="pkWqt" id="6L7f8C86lSH" role="pqm2j">
          <node concept="3clFbS" id="6L7f8C86lSI" role="2VODD2">
            <node concept="3clFbF" id="6L7f8C86lSJ" role="3cqZAp">
              <node concept="3fqX7Q" id="6L7f8C86lSK" role="3clFbG">
                <node concept="2OqwBi" id="6L7f8C86lSL" role="3fr31v">
                  <node concept="2OqwBi" id="6L7f8C86lSM" role="2Oq$k0">
                    <node concept="pncrf" id="6L7f8C86lSN" role="2Oq$k0" />
                    <node concept="3TrEf2" id="4ak9ytIbIbU" role="2OqNvi">
                      <ref role="3Tt5mk" to="pmg0:4ak9ytIbIbS" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="6L7f8C86lSP" role="2OqNvi">
                    <ref role="37wK5l" to="j8l:67LR$5LQnln" resolve="isLeaf" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="6L7f8C86lSQ" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2kIZjjSDoVa">
    <property role="3GE5qa" value="bean" />
    <ref role="1XX52x" to="pmg0:2kIZjjSDoV7" resolve="BeanPropertyBuilder" />
    <node concept="3EZMnI" id="2kIZjjSDoVc" role="2wV5jI">
      <node concept="1iCGBv" id="2kIZjjSDoVf" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:2kIZjjSDoV8" />
        <node concept="1sVBvm" id="2kIZjjSDoVg" role="1sWHZn">
          <node concept="3SHvHV" id="2kIZjjSEmfZ" role="2wV5jI" />
        </node>
      </node>
      <node concept="3F0ifn" id="2kIZjjSDoVl" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="2kIZjjSDoVs" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:2kIZjjSDoVq" />
      </node>
      <node concept="l2Vlx" id="2kIZjjSDoVe" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5M3yimiSPC3">
    <property role="3GE5qa" value="bean" />
    <ref role="1XX52x" to="pmg0:5M3yimiSuIZ" resolve="BeanBuilder" />
    <node concept="3EZMnI" id="5M3yimiSPC5" role="2wV5jI">
      <node concept="3F0ifn" id="1Tieq1iiUDf" role="3EZMnx">
        <property role="3F0ifm" value="builder for" />
        <node concept="VechU" id="1Tieq1iiUDg" role="3F10Kt">
          <property role="Vb096" value="blue" />
        </node>
      </node>
      <node concept="1iCGBv" id="5M3yimiSPC8" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:5M3yimiSuJ0" />
        <node concept="1sVBvm" id="5M3yimiSPC9" role="1sWHZn">
          <node concept="3F0A7n" id="5M3yimiSPCb" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="5M3yimiSSaW" role="3EZMnx">
        <node concept="VPM3Z" id="5M3yimiSSaX" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="PMmxH" id="5M3yimiSSb4" role="3EZMnx">
          <ref role="PMmxG" to="tpen:h5njIub" resolve="IMethodCall_actualArguments" />
        </node>
        <node concept="l2Vlx" id="5M3yimiSSaZ" role="2iSdaV" />
        <node concept="pkWqt" id="5M3yimiSSb5" role="pqm2j">
          <node concept="3clFbS" id="5M3yimiSSb6" role="2VODD2">
            <node concept="3clFbF" id="5M3yimiST1Z" role="3cqZAp">
              <node concept="2OqwBi" id="5M3yimiSThI" role="3clFbG">
                <node concept="2OqwBi" id="5M3yimiST26" role="2Oq$k0">
                  <node concept="2OqwBi" id="5M3yimiST21" role="2Oq$k0">
                    <node concept="pncrf" id="5M3yimiST20" role="2Oq$k0" />
                    <node concept="3TrEf2" id="5M3yimiST25" role="2OqNvi">
                      <ref role="3Tt5mk" to="pmg0:5M3yimiSuJ0" />
                    </node>
                  </node>
                  <node concept="3Tsc0h" id="5M3yimiSThH" role="2OqNvi">
                    <ref role="3TtcxE" to="tpee:fzclF7Y" />
                  </node>
                </node>
                <node concept="3GX2aA" id="5M3yimiSThM" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="5M3yimiSPC7" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4Fc1szn8uKY">
    <property role="3GE5qa" value="bean" />
    <ref role="1XX52x" to="pmg0:4Fc1szn8tck" resolve="AsTypeBuilder" />
    <node concept="3F1sOY" id="4Fc1szn8uL0" role="2wV5jI">
      <ref role="1NtTu8" to="pmg0:4Fc1szn8tcl" />
    </node>
  </node>
  <node concept="24kQdi" id="4Fc1szna8Co">
    <property role="3GE5qa" value="simple" />
    <ref role="1XX52x" to="pmg0:4Fc1szna73E" resolve="SimpleBuilderProperty" />
    <node concept="3EZMnI" id="4Fc1szna8Cq" role="2wV5jI">
      <node concept="3F0ifn" id="4Fc1szna8Ct" role="3EZMnx">
        <property role="3F0ifm" value="property" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="3F0A7n" id="4Fc1szna8C$" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="4Fc1sznbpCA" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="4Fc1sznbpCC" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:4Fc1szna8Cn" />
      </node>
      <node concept="3F0ifn" id="4Fc1szna8Cv" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFCSAw$" resolve="LeftParen" />
        <node concept="ljvvj" id="4Fc1szna8Cw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="4Fc1sznaOag" role="3EZMnx">
        <property role="3F0ifm" value="set" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
        <node concept="lj46D" id="4Fc1sznaOaj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="4Fc1sznaOai" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:4Fc1sznaOae" />
        <node concept="ljvvj" id="4Fc1sznaOak" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="4Fc1szna8Cy" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFCSUmN" resolve="RightParen" />
      </node>
      <node concept="l2Vlx" id="4Fc1szna8Cs" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="4Fc1sznb5TN">
    <property role="3GE5qa" value="simple.propertyParams" />
    <ref role="1XX52x" to="pmg0:4Fc1sznb4zy" resolve="SimpleBuilderPropertyExpression" />
    <node concept="PMmxH" id="2wdLO7KhYbm" role="2wV5jI">
      <property role="1cu_pB" value="0" />
      <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
      <ref role="1k5W1q" node="3JyUPcAS_Yb" resolve="Parameter" />
    </node>
  </node>
  <node concept="24kQdi" id="4Fc1sznbG1y">
    <property role="3GE5qa" value="simple" />
    <ref role="1XX52x" to="pmg0:4Fc1sznbG1v" resolve="SimpleBuilderPropertyBuilder" />
    <node concept="3EZMnI" id="4Fc1sznbG1$" role="2wV5jI">
      <node concept="1iCGBv" id="4Fc1sznbG1B" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:4Fc1sznbG1x" />
        <node concept="1sVBvm" id="4Fc1sznbG1C" role="1sWHZn">
          <node concept="3F0A7n" id="4Fc1sznbG1E" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="4Fc1sznbG1G" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="4Fc1sznbG1I" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:4Fc1sznbG1w" />
      </node>
      <node concept="l2Vlx" id="4Fc1sznbG1A" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5rdgdYBzsFR">
    <property role="3GE5qa" value="simple" />
    <ref role="1XX52x" to="pmg0:5rdgdYBzsFN" resolve="SimpleBuilderExtensionDeclaration" />
    <node concept="3EZMnI" id="5rdgdYBztWR" role="2wV5jI">
      <node concept="3F0ifn" id="5rdgdYBztWU" role="3EZMnx">
        <property role="3F0ifm" value="extend" />
        <ref role="1k5W1q" to="tpen:hgVS8CF" resolve="KeyWord" />
      </node>
      <node concept="1iCGBv" id="5rdgdYBztWW" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:5rdgdYBzsFQ" />
        <node concept="1sVBvm" id="5rdgdYBztWX" role="1sWHZn">
          <node concept="3F0A7n" id="5rdgdYBztWZ" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5rdgdYBztX1" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <ref role="1k5W1q" to="tpen:hFD5onb" resolve="LeftBrace" />
        <node concept="ljvvj" id="5rdgdYBztX3" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5rdgdYBztX5" role="3EZMnx">
        <node concept="ljvvj" id="5rdgdYBztX6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="5rdgdYBztX7" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="5rdgdYBztX8" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:5rdgdYBzsFO" />
        <node concept="l2Vlx" id="5rdgdYBztX9" role="2czzBx" />
        <node concept="lj46D" id="5rdgdYBztXa" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="5rdgdYBztXb" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="5rdgdYBztXc" role="3EZMnx">
        <ref role="1NtTu8" to="pmg0:5rdgdYBzsFP" />
        <node concept="l2Vlx" id="5rdgdYBztXd" role="2czzBx" />
        <node concept="lj46D" id="5rdgdYBztXe" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="pj6Ft" id="5rdgdYBztXf" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="5rdgdYBztXh" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <ref role="1k5W1q" to="tpen:hFD5_7H" resolve="RightBrace" />
      </node>
      <node concept="l2Vlx" id="5rdgdYBztWT" role="2iSdaV" />
    </node>
  </node>
</model>

