<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0194e190-08ef-44f6-ab95-d9cffdb7e27b(jetbrains.mps.execution.settings.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tp4f" ref="r:00000000-0000-4000-0000-011c89590373(jetbrains.mps.baseLanguage.classifiers.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="id7i" ref="r:29a26f36-0627-4505-9c3e-faf17694979c(jetbrains.mps.execution.common.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="6054523464627964745" name="jetbrains.mps.lang.structure.structure.AttributeInfo_AttributedConcept" flags="ng" index="trNpa">
        <reference id="6054523464627965081" name="concept" index="trN6q" />
      </concept>
      <concept id="1082978499127" name="jetbrains.mps.lang.structure.structure.ConstrainedDataTypeDeclaration" flags="ng" index="Az7Fb">
        <property id="1083066089218" name="constraint" index="FLfZY" />
      </concept>
      <concept id="2992811758677295509" name="jetbrains.mps.lang.structure.structure.AttributeInfo" flags="ng" index="M6xJ_">
        <property id="7588428831955550663" name="role" index="Hh88m" />
        <child id="7588428831947959310" name="attributed" index="EQaZv" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="5404671619616246344" name="staticScope" index="2_RsDV" />
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <reference id="1071599698500" name="specializedLink" index="20ksaX" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="O$iR4J$g0r">
    <property role="TrG5h" value="PersistentConfigurationMethod" />
    <ref role="1TJDcQ" to="tp4f:hyXrIf3" resolve="DefaultClassifierMethodDeclaration" />
  </node>
  <node concept="1TIwiD" id="O$iR4J$g0s">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="persistent configuration type" />
    <property role="TrG5h" value="PersistentConfigurationType" />
    <property role="2_RsDV" value="none" />
    <property role="34LRSv" value="configuration" />
    <ref role="1TJDcQ" to="tp4f:hyWtXx5" resolve="BaseClassifierType" />
    <node concept="1TJgyj" id="O$iR4J$g0t" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="persistentConfiguration" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="O$iR4J$g0w" resolve="PersistentConfiguration" />
    </node>
  </node>
  <node concept="1TIwiD" id="O$iR4J$g0w">
    <property role="TrG5h" value="PersistentConfiguration" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="O$iR4J$g0x" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="editor" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="O$iR4J$g4X" resolve="SettingsEditor" />
    </node>
    <node concept="1TJgyj" id="O$iR4J$g0y" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="checkProperties" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="O$iR4J$g4_" resolve="CheckProperties_Function" />
    </node>
    <node concept="1TJgyj" id="O$iR4J$g0z" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="methods" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="O$iR4J$g0r" resolve="PersistentConfigurationMethod" />
    </node>
    <node concept="PrWs8" id="O$iR4J$g0$" role="PzmwI">
      <ref role="PrY4T" node="O$iR4J$g4y" resolve="IPersistentPropertyHolder" />
    </node>
    <node concept="PrWs8" id="O$iR4J$g0_" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="O$iR4J$g0A" role="PzmwI">
      <ref role="PrY4T" to="tp4f:hyWqMFP" resolve="IClassifier" />
    </node>
    <node concept="PrWs8" id="O$iR4J$g0B" role="PzmwI">
      <ref role="PrY4T" to="id7i:O$iR4JBsQF" resolve="IGeneratedToClass" />
    </node>
  </node>
  <node concept="1TIwiD" id="O$iR4J$g3X">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="template configuration reference" />
    <property role="TrG5h" value="TemplatePersistentConfigurationType" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="template" />
    <property role="34LRSv" value="template configuration" />
    <ref role="1TJDcQ" node="O$iR4J$g0s" resolve="PersistentConfigurationType" />
    <node concept="1TJgyj" id="O$iR4J$g3Y" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="template" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="O$iR4J$g4j" resolve="PersistentConfigurationTemplate" />
      <ref role="20ksaX" node="O$iR4J$g0t" />
    </node>
  </node>
  <node concept="1TIwiD" id="O$iR4J$g41">
    <property role="TrG5h" value="TemplateParameterReference" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="template" />
    <ref role="1TJDcQ" to="tpee:fz7vLUo" resolve="VariableReference" />
    <node concept="1TJgyj" id="O$iR4J$g42" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="constructorParameterDeclaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="O$iR4J$g4q" resolve="TemplateParameter" />
      <ref role="20ksaX" to="tpee:fzcqZ_w" />
    </node>
  </node>
  <node concept="1TIwiD" id="O$iR4J$g43">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ReportConfigurationErrorStatement" />
    <property role="2_RsDV" value="none" />
    <property role="34LRSv" value="report error" />
    <ref role="1TJDcQ" to="tpee:fzclF8l" resolve="Statement" />
    <node concept="1TJgyj" id="O$iR4J$g45" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="expression" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="O$iR4J$g46">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CreateEditor_Function" />
    <property role="3GE5qa" value="editor" />
    <property role="34LRSv" value="create" />
    <ref role="1TJDcQ" node="O$iR4J$g4H" resolve="EditorOperationDeclaration" />
  </node>
  <node concept="1TIwiD" id="O$iR4J$g4b">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Dispose_Function" />
    <property role="3GE5qa" value="editor" />
    <property role="34LRSv" value="dispose" />
    <ref role="1TJDcQ" node="O$iR4J$g4H" resolve="EditorOperationDeclaration" />
  </node>
  <node concept="1TIwiD" id="O$iR4J$g4e">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="persistent property reference" />
    <property role="TrG5h" value="PersistentPropertyReferenceOperation" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="properties" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="O$iR4J$g4f" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="variableDeclaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="O$iR4J$g4p" resolve="PersistentPropertyDeclaration" />
    </node>
    <node concept="PrWs8" id="O$iR4J$g4g" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="O$iR4J$g4j">
    <property role="R5$K7" value="false" />
    <property role="19KtqR" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="PersistentConfigurationTemplate" />
    <property role="3GE5qa" value="template" />
    <property role="34LRSv" value="persistent configuration template" />
    <ref role="1TJDcQ" node="O$iR4J$g0w" resolve="PersistentConfiguration" />
    <node concept="1TJgyj" id="O$iR4J$g4l" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="templateParameter" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="O$iR4J$g4q" resolve="TemplateParameter" />
    </node>
  </node>
  <node concept="1TIwiD" id="O$iR4J$g4m">
    <property role="TrG5h" value="PersistentConfigurationTemplateInitializer" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="template" />
    <ref role="1TJDcQ" to="tpee:gEShaYr" resolve="AbstractCreator" />
    <node concept="1TJgyj" id="O$iR4J$g4n" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="template" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="O$iR4J$g4j" resolve="PersistentConfigurationTemplate" />
    </node>
    <node concept="1TJgyj" id="O$iR4J$g4o" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="parameter" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="O$iR4J$g4p">
    <property role="TrG5h" value="PersistentPropertyDeclaration" />
    <property role="3GE5qa" value="properties" />
    <ref role="1TJDcQ" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
  </node>
  <node concept="1TIwiD" id="O$iR4J$g4q">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="TemplateParameter" />
    <property role="3GE5qa" value="template" />
    <property role="34LRSv" value="template parameter" />
    <ref role="1TJDcQ" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
  </node>
  <node concept="1TIwiD" id="O$iR4J$g4s">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="EditorExpression" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="editor" />
    <property role="34LRSv" value="editor" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="O$iR4J$g4t" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="persistentPropertyDeclaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="O$iR4J$g4p" resolve="PersistentPropertyDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="O$iR4J$g4v">
    <property role="TrG5h" value="CheckProperitesOperation" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="properties" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="O$iR4J$g4w" role="PzmwI">
      <ref role="PrY4T" to="tp4f:hyWEnem" resolve="IMemberOperation" />
    </node>
    <node concept="1TJgyj" id="O$iR4J$g4x" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="checkProperties" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="O$iR4J$g4_" resolve="CheckProperties_Function" />
      <ref role="20ksaX" to="tp4f:hyWH_vG" />
    </node>
  </node>
  <node concept="PlHQZ" id="O$iR4J$g4y">
    <property role="TrG5h" value="IPersistentPropertyHolder" />
    <property role="3GE5qa" value="properties" />
    <node concept="1TJgyj" id="O$iR4J$g4z" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="persistentProperty" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="O$iR4J$g4p" resolve="PersistentPropertyDeclaration" />
    </node>
    <node concept="PrWs8" id="O$iR4J$g4$" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="O$iR4J$g4_">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="CheckProperties_Function" />
    <property role="3GE5qa" value="properties" />
    <property role="34LRSv" value="check" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
    <node concept="PrWs8" id="O$iR4J$g4A" role="PzmwI">
      <ref role="PrY4T" to="tp4f:hyWqYN0" resolve="IMember" />
    </node>
  </node>
  <node concept="1TIwiD" id="O$iR4J$g4D">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ApplyTo_Function" />
    <property role="3GE5qa" value="editor" />
    <property role="34LRSv" value="apply to" />
    <ref role="1TJDcQ" node="O$iR4J$g4H" resolve="EditorOperationDeclaration" />
  </node>
  <node concept="1TIwiD" id="O$iR4J$g4H">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="EditorOperationDeclaration" />
    <property role="3GE5qa" value="editor" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="O$iR4J$g4I">
    <property role="TrG5h" value="EditorOperationCall" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="editor" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="O$iR4J$g4J" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="arguments" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="PrWs8" id="O$iR4J$g4K" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
    <node concept="1TJgyj" id="O$iR4J$g4L" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="editorOperationDeclaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="O$iR4J$g4H" resolve="EditorOperationDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="O$iR4J$g4M">
    <property role="TrG5h" value="EditorPropertyDeclaration" />
    <property role="3GE5qa" value="editor" />
    <ref role="1TJDcQ" to="tpee:fz3uBXI" resolve="VariableDeclaration" />
  </node>
  <node concept="1TIwiD" id="O$iR4J$g4N">
    <property role="TrG5h" value="EditorPropertyReference" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="editor" />
    <ref role="1TJDcQ" to="tpee:fz7vLUo" resolve="VariableReference" />
    <node concept="1TJgyj" id="O$iR4J$g4O" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="editorPropertyDeclaration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="O$iR4J$g4M" resolve="EditorPropertyDeclaration" />
      <ref role="20ksaX" to="tpee:fzcqZ_w" />
    </node>
  </node>
  <node concept="1TIwiD" id="O$iR4J$g4Q">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="ResetFrom_Function" />
    <property role="3GE5qa" value="editor" />
    <property role="34LRSv" value="reset from" />
    <ref role="1TJDcQ" node="O$iR4J$g4H" resolve="EditorOperationDeclaration" />
  </node>
  <node concept="1TIwiD" id="O$iR4J$g4U">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="SettingsEditorType" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="editor" />
    <property role="34LRSv" value="editor" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
    <node concept="1TJgyj" id="O$iR4J$g4V" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="configuration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="O$iR4J$g0w" resolve="PersistentConfiguration" />
    </node>
  </node>
  <node concept="1TIwiD" id="O$iR4J$g4X">
    <property role="TrG5h" value="SettingsEditor" />
    <property role="3GE5qa" value="editor" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="O$iR4J$g4Y" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="createEditor" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="O$iR4J$g46" resolve="CreateEditor_Function" />
    </node>
    <node concept="1TJgyj" id="O$iR4J$g4Z" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="applyTo" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="O$iR4J$g4D" resolve="ApplyTo_Function" />
    </node>
    <node concept="1TJgyj" id="O$iR4J$g50" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="resetFrom" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="O$iR4J$g4Q" resolve="ResetFrom_Function" />
    </node>
    <node concept="1TJgyj" id="O$iR4J$g51" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="dispose" />
      <property role="20lbJX" value="0..1" />
      <ref role="20lvS9" node="O$iR4J$g4b" resolve="Dispose_Function" />
    </node>
    <node concept="1TJgyj" id="O$iR4J$g52" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="propertyDeclaration" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="O$iR4J$g4M" resolve="EditorPropertyDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="O$iR4J$geg">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="Configuration_Parameter" />
    <property role="2_RsDV" value="none" />
    <property role="34LRSv" value="configuration" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="PlHQZ" id="O$iR4JBsUh">
    <property role="TrG5h" value="PersistentConfigurationAssistent" />
    <node concept="1TJgyj" id="O$iR4JBsUi" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="configuration" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="O$iR4J$g0w" resolve="PersistentConfiguration" />
    </node>
  </node>
  <node concept="1TIwiD" id="4DPUXm60GE_">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="GetEditorOperation" />
    <property role="2_RsDV" value="none" />
    <property role="34LRSv" value="editor" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4DPUXm60GEA" role="PzmwI">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="2n8I3DYiVi8">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="GridBagConstraints" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="editor.ui" />
    <property role="34LRSv" value="grid bag constraints" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyi" id="2n8I3DYiVia" role="1TKVEl">
      <property role="TrG5h" value="constraintsKind" />
      <ref role="AX2Wp" node="2n8I3DYiVi9" resolve="GridBagConstraintsKind" />
    </node>
    <node concept="1TJgyj" id="2n8I3DYjA96" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="order" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
  </node>
  <node concept="Az7Fb" id="2n8I3DYiVi9">
    <property role="TrG5h" value="GridBagConstraintsKind" />
    <property role="FLfZY" value="field|label|panel" />
    <property role="3GE5qa" value="editor.ui" />
  </node>
  <node concept="1TIwiD" id="7YdSxSAfPwp">
    <property role="TrG5h" value="DeprecatedAnnotation" />
    <ref role="1TJDcQ" to="tpck:2ULFgo8_XDk" resolve="NodeAttribute" />
    <node concept="1TJgyi" id="7YdSxSAfPwr" role="1TKVEl">
      <property role="TrG5h" value="since" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="7YdSxSAfPws" role="1TKVEl">
      <property role="TrG5h" value="comment" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="M6xJ_" id="6_gUeuqOePa" role="lGtFl">
      <property role="Hh88m" value="deprecated" />
      <node concept="trNpa" id="166$sc$ZIAw" role="EQaZv">
        <ref role="trN6q" node="O$iR4J$g0w" resolve="PersistentConfiguration" />
      </node>
    </node>
  </node>
</model>

