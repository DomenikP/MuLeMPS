<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:00000000-0000-4000-0000-011c89590373(jetbrains.mps.baseLanguage.classifiers.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
        <property id="4628067390765956807" name="final" index="R5$K2" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ">
        <child id="1169127546356" name="extends" index="PrDN$" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="5404671619616246344" name="staticScope" index="2_RsDV" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
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
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="PlHQZ" id="hyWqMFP">
    <property role="TrG5h" value="IClassifier" />
    <node concept="PrWs8" id="1mVpzgBPPDq" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="hLKIn0i" role="PrDN$">
      <ref role="PrY4T" to="tpee:hLwIKCk" resolve="IExtractMethodAvailable" />
    </node>
  </node>
  <node concept="PlHQZ" id="hyWqYN0">
    <property role="TrG5h" value="IMember" />
    <node concept="PrWs8" id="hyXeAyj" role="PrDN$">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="PlHQZ" id="hyWrxye">
    <property role="TrG5h" value="IClassifierPart" />
  </node>
  <node concept="1TIwiD" id="hyWthE1">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="this classifier" />
    <property role="TrG5h" value="ThisClassifierExpression" />
    <property role="2_RsDV" value="none" />
    <property role="34LRSv" value="this" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
    <node concept="1TJgyj" id="hJ2nkJ3" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="classifier" />
      <ref role="20lvS9" node="hyWqMFP" resolve="IClassifier" />
    </node>
    <node concept="PrWs8" id="hR$KTu3" role="PzmwI">
      <ref role="PrY4T" to="tpee:hOwrSQh" resolve="IThisExpression" />
    </node>
  </node>
  <node concept="1TIwiD" id="hyWtXx5">
    <property role="R5$K7" value="true" />
    <property role="R5$K2" value="false" />
    <property role="TrG5h" value="BaseClassifierType" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Types" />
    <ref role="1TJDcQ" to="tpee:fz3vP1H" resolve="Type" />
  </node>
  <node concept="1TIwiD" id="hyWukbY">
    <property role="TrG5h" value="DefaultClassifierType" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Types" />
    <ref role="1TJDcQ" node="hyWtXx5" resolve="BaseClassifierType" />
    <node concept="1TJgyj" id="hyWumMg" role="1TKVEi">
      <property role="20kJfa" value="classifier" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="hyWqMFP" resolve="IClassifier" />
    </node>
  </node>
  <node concept="PlHQZ" id="hyWEnem">
    <property role="TrG5h" value="IMemberOperation" />
    <node concept="1TJgyj" id="hyWH_vG" role="1TKVEi">
      <property role="20kJfa" value="member" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="hyWqYN0" resolve="IMember" />
    </node>
    <node concept="PrWs8" id="hyWH0ZI" role="PrDN$">
      <ref role="PrY4T" to="tpee:hqOqG0K" resolve="IOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="hyXrIf3">
    <property role="TrG5h" value="DefaultClassifierMethodDeclaration" />
    <property role="3GE5qa" value="Methods" />
    <ref role="1TJDcQ" to="tpee:fzclF7W" resolve="BaseMethodDeclaration" />
    <node concept="PrWs8" id="hyXt$QK" role="PzmwI">
      <ref role="PrY4T" node="hyWqYN0" resolve="IMember" />
    </node>
    <node concept="PrWs8" id="hJvKSWq" role="PzmwI">
      <ref role="PrY4T" to="tpee:h9B3isZ" resolve="IVisible" />
    </node>
  </node>
  <node concept="1TIwiD" id="hyXshSD">
    <property role="TrG5h" value="DefaultClassifierMethodCallOperation" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Methods" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="hyXxRup" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="actualArgument" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" to="tpee:fz3vP1J" resolve="Expression" />
    </node>
    <node concept="1TJgyj" id="hyXtfQh" role="1TKVEi">
      <property role="20kJfa" value="method" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="hyXrIf3" resolve="DefaultClassifierMethodDeclaration" />
      <ref role="20ksaX" node="hyWH_vG" />
    </node>
    <node concept="PrWs8" id="hyXsld6" role="PzmwI">
      <ref role="PrY4T" node="hyWEnem" resolve="IMemberOperation" />
    </node>
  </node>
  <node concept="1TIwiD" id="hEBZ0aj">
    <property role="TrG5h" value="DefaultClassifierFieldDeclaration" />
    <property role="3GE5qa" value="Fields" />
    <ref role="1TJDcQ" to="tpee:fz12cDC" resolve="FieldDeclaration" />
    <node concept="PrWs8" id="hEBZ0ak" role="PzmwI">
      <ref role="PrY4T" node="hyWqYN0" resolve="IMember" />
    </node>
  </node>
  <node concept="1TIwiD" id="hEBZ7lK">
    <property role="TrG5h" value="DefaultClassifierFieldAccessOperation" />
    <property role="2_RsDV" value="none" />
    <property role="3GE5qa" value="Fields" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="hEBZ7lM" role="PzmwI">
      <ref role="PrY4T" node="hyWEnem" resolve="IMemberOperation" />
    </node>
    <node concept="1TJgyj" id="hEBZ7lN" role="1TKVEi">
      <property role="20kJfa" value="field" />
      <property role="20lbJX" value="1" />
      <ref role="20ksaX" node="hyWH_vG" />
      <ref role="20lvS9" node="hEBZ0aj" resolve="DefaultClassifierFieldDeclaration" />
    </node>
  </node>
  <node concept="1TIwiD" id="hHOG3lW">
    <property role="R5$K7" value="false" />
    <property role="R5$K2" value="false" />
    <property role="R4oN_" value="super classifier" />
    <property role="TrG5h" value="SuperClassifierExpresson" />
    <property role="2_RsDV" value="none" />
    <property role="34LRSv" value="super" />
    <ref role="1TJDcQ" to="tpee:fz3vP1J" resolve="Expression" />
  </node>
  <node concept="1TIwiD" id="T8OkJR9I_B">
    <property role="TrG5h" value="DefaultClassifier" />
    <property role="3GE5qa" value="Base" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="T8OkJR9I_C" role="PzmwI">
      <ref role="PrY4T" node="hyWqMFP" resolve="IClassifier" />
    </node>
    <node concept="1TJgyj" id="T8OkJR9Jcc" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="field" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="hEBZ0aj" resolve="DefaultClassifierFieldDeclaration" />
    </node>
    <node concept="1TJgyj" id="T8OkJR9Jcd" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="method" />
      <property role="20lbJX" value="0..n" />
      <ref role="20lvS9" node="hyXrIf3" resolve="DefaultClassifierMethodDeclaration" />
    </node>
  </node>
</model>

