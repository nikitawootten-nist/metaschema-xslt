<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc"
  xmlns:c="http://www.w3.org/ns/xproc-step" version="1.0"
  xmlns:metaschema="http://csrc.nist.gov/ns/metaschema/1.0"
  type="metaschema:make-metaschema-schema2x" name="make-metaschema-schema2x">
  
  <!-- &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& -->
  <!-- Ports -->
  
  <p:input port="METASCHEMA" primary="true"/>
  <p:input port="parameters" kind="parameter"/>
  
  <p:serialization port="IN_0_echo-input" indent="true"  method="xml"/>
  <p:output port="IN_0_echo-input" primary="false">
    <p:pipe port="result" step="input"/>
  </p:output>
  
  <p:serialization port="IN_1_composed-metaschema" indent="true" method="xml"/>
  <p:output port="IN_1_composed-metaschema" primary="false">
    <p:pipe port="result" step="composed"/>
  </p:output>
  
  <p:serialization port="OUT_json-schema-xml" indent="true"  method="xml"/>
  <p:output port="OUT_json-schema-xml" primary="false">
    <p:pipe port="result" step="make-json-schema-xml"/>
  </p:output>
  
  <p:serialization port="OUT_json-schema"     indent="true"  method="text" omit-xml-declaration="false"/>
  <p:output port="OUT_json-schema" primary="true">
    <p:pipe port="result" step="serialize-json"/>
  </p:output>
  
  <p:serialization port="OUT_xml-schema" indent="true"  method="xml"/>
  <p:output port="OUT_xml-schema" primary="false">
    <p:pipe port="result" step="make-xsd"/>
  </p:output>
  
  <!-- &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& -->
  <!-- Import (subpipeline) -->
  
  <p:import href="compose/metaschema-compose.xpl"/>
  
  <!-- &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& &&& -->
  <!-- Pipeline -->
  
  <p:identity name="input"/>
  
  <metaschema:metaschema-compose name="compose"/>
  
  <p:identity name="composed"/>
  
  <p:xslt name="make-xsd">
    <p:input port="stylesheet">
      <p:document href="schema-gen/make-metaschema-xsd.xsl"/>
    </p:input>
  </p:xslt>
  
  <p:sink/>
  
  <p:xslt name="make-json-schema-xml">
    <p:input port="source">
      <p:pipe port="result" step="composed"/>
    </p:input>
    <p:input port="stylesheet">
      <p:document href="schema-gen/make-json-schema-metamap.xsl"/>
    </p:input>
  </p:xslt>
  
  <!--<p:identity name="serialize-json"/>-->
  <p:xslt name="serialize-json">
    <p:input port="stylesheet">
      <p:document href="util/xpath-json-to-json.xsl"/>
    </p:input>
  </p:xslt>
  
</p:declare-step>