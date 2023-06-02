---
title: "Metaschema Syntax"
linkTitle: "Syntax"
description: "Discusses the Metaschema module format and related structures."
weight: 30
aliases:
- /specification/syntax/
custom_css:
- /css/element-map.css
---

# Metaschema Syntax

The following is an approximate outline of the Metaschema module syntax. Each element and attribute links to the specific specification section describing the element. Attribute value choices are indicated where possible, with default values highlighted.

{{< rawhtml >}}
<div class="highlight"><div class="chroma"><code class="language-xml" data-lang="xml">
<div class="element">
  &lt;-- ############# --&gt;<br/>
  &lt;-- Module Header --&gt;<br/>
  &lt;-- ############# --&gt;
  <div class="cl"><span class="nt">&lt;<a href="/specification/syntax/module/#main-content">METASCHEMA</a></span> <span class="na">xmlns=</span><span class="s">"http://csrc.nist.gov/ns/oscal/metaschema/1.0"</span></div>
  <div class="attribute"><span class="na"><a href="/specification/syntax/module/#abstract-modules">abstract</a></span><span class="na">=</span><span class="s">"yes|no"</span><span class="nt">&gt;</span> <span class="c">(default: no)</span></div>

  <div class="element cl"><span class="nt">&lt;<a href="/specification/syntax/module/#schema-name">schema-name</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/schema-name&gt;</span></div>

  <div class="element cl"><span class="nt">&lt;<a href="/specification/syntax/module/#schema-version">schema-version</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/schema-version&gt;</span></div>
  <div class="element cl"><span class="nt">&lt;<a href="/specification/syntax/module/#short-name">short-name</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/short-name&gt;</span></div>
  <div class="element cl"><span class="nt">&lt;<a href="/specification/syntax/module/#xml-namespace">namespace</a>&gt;</span><a href="/specification/datatypes/#uri">uri</a><span class="nt">&lt;/namespace&gt;</span></div>
  <div class="element cl"><span class="nt">&lt;<a href="/specification/syntax/module/#json-base-uri">json-base-uri</a>&gt;</span><a href="/specification/datatypes/#uri">uri</a><span class="nt">&lt;/json-base-uri&gt;</span></div>
  <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/module/#remarks">remarks</a>&gt;</span><a href="/specification/datatypes/#markup-multiline">markup-multiline</a><span class="nt">&lt;/remarks&gt;</span></em></div>
  <div class="element">
    &lt;-- ############## --&gt;<br/>
    &lt;-- Module Imports --&gt;<br/>
    &lt;-- ############## --&gt;
    <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/module/#import">import</a></span> <span class="na">href=</span><span class="s">"<a href="/specification/datatypes/#uri-reference">uri-reference</a>"</span><span class="nt">/&gt;</span></em></div>
  </div>
  <!-- define-flag -->
  <div class="element">
    &lt;-- ##################### --&gt;<br/>
    &lt;-- Top-Level define-flag --&gt;<br/>
    &lt;-- ##################### --&gt;
    <div class="cl"><span class="nt">&lt;<a href="/specification/syntax/definitions/#top-level-define-flag">define-flag</a></span> <span class="na"><a href="/specification/syntax/definitions/#name">name</a>=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
    <!-- define-flag:@as-type -->
    <div class="attribute"><em><span class="na"><a href="/specification/syntax/definitions/#as-type">as-type</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span> <span class="c">(default: <a href="/specification/datatypes/#string">string</a>)</span></em></div>
    <!-- define-flag:@default -->
    <div class="attribute"><em><span class="na"><a href="/specification/syntax/definitions/#default">default</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#string">string</a>"</span></em></div>
    <!-- define-flag:@deprecated -->
    <div class="attribute"><em><span class="na"><a href="/specification/syntax/definitions/#deprecated-version">deprecated</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#string">string</a>"</span></em></div>
    <!-- define-flag:@scope -->
    <div class="attribute"><em><span class="na"><a href="/specification/syntax/definitions/#scope">scope</a></span><span class="na">=</span><span class="s">"global|local"</span></em><span class="nt">&gt;</span> <span class="c">(default: global)</span></div>
    <!-- define-flag:formal-name -->
    <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#formal-name">formal-name</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/formal-name&gt;</span></em></div>
    <!-- define-flag:description -->
    <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#description">description</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/description&gt;</span></em></div>
    <!-- define-flag:prop -->
    <div class="element">
      <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#prop">prop</a></span></em> <span class="na">name=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span> <span class="na">value=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
      <!-- define-flag:prop:@namespace -->
      <div class="attribute"><em><span class="na">namespace</span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#uri">uri</a>"</span></em><span class="nt">/&gt;</span> <span class="c">(default: http://csrc.nist.gov/ns/oscal/metaschema/1.0)</span></div>
    </div>
    <!-- define-flag:use-name -->
    <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#naming-and-use-name">use-name</a>&gt;</span><a href="/specification/datatypes/#token">token</a><span class="nt">&lt;/use-name&gt;</span></em></div>
    <!-- define-flag:constraint -->
    <div class="element cl nt"><em>&lt;<a href="/specification/syntax/constraints/#define-flag-constraints">constraint</a>/&gt;</em></div>
    <!-- define-flag:remarks -->
    <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#remarks">remarks</a>&gt;</span><a href="/specification/datatypes/#markup-multiline">markup-multiline</a><span class="nt">&lt;/remarks&gt;</span></em></div>
    <!-- define-flag:example -->
    <div class="element cl nt"><em>&lt;<a href="/specification/syntax/definitions/#example">example</a>/&gt;</em></div>
    <div class="cl nt">&lt;/define-flag&gt;</div>
  </div>

  <!-- define-assembly -->
  <div class="element">
    &lt;-- ######################### --&gt;<br/>
    &lt;-- Top-Level define-assembly --&gt;<br/>
    &lt;-- ######################### --&gt;
    <div class="cl"><span class="nt">&lt;<a href="/specification/syntax/definitions/#top-level-define-assembly">define-assembly</a></span> <span class="na"><a href="/specification/syntax/definitions/#name">name</a>=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
    <!-- define-assembly:@deprecated -->
    <div class="attribute"><em><span class="na"><a href="/specification/syntax/definitions/#deprecated-version">deprecated</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#string">string</a>"</span></em></div>
    <!-- define-assembly:@scope -->
    <div class="attribute"><em><span class="na"><a href="/specification/syntax/definitions/#scope">scope</a></span><span class="na">=</span><span class="s">"global|local"</span></em><span class="nt">&gt;</span> <span class="c">(default: global)</span></div>
    <!-- define-assembly:formal-name -->
    <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#formal-name">formal-name</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/formal-name&gt;</span></em></div>
    <!-- define-assembly:description -->
    <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#description">description</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/description&gt;</span></em></div>
    <!-- define-assembly:prop -->
    <div class="element">
      <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#prop">prop</a></span></em> <span class="na">name=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span> <span class="na">value=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
      <!-- define-assembly:prop:@namespace -->
      <div class="attribute"><em><span class="na">namespace</span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#uri">uri</a>"</span></em><span class="nt">/&gt;</span> <span class="c">(default: http://csrc.nist.gov/ns/oscal/metaschema/1.0)</span></div>
    </div>
    <!-- define-assembly:use-name -->
    <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#naming-and-use-name">use-name</a>&gt;</span><a href="/specification/datatypes/#token">token</a><span class="nt">&lt;/use-name&gt;</span></em></div>
    <!-- define-assembly:root-name -->
    <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#root-name">root-name</a>&gt;</span><a href="/specification/datatypes/#token">token</a><span class="nt">&lt;/root-name&gt;</span></em></div>
    <!-- define-assembly:json-key -->
    <div class="element">
      <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#json-key">json-key</a></span></em> <span class="na">flag-ref=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span><span class="nt">/&gt;</span></div>
    </div>
    <!-- define-assembly:flag -->
    <div class="element">
      &lt;-- Flag Instance --&gt;<br/>
      <div class="cl"><span class="nt">&lt;<a href="/specification/syntax/instances/#flag-instance">flag</a></span> <span class="na"><a href="/specification/syntax/instances/#ref">ref</a>=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
      <!-- define-assembly:flag:@required -->
      <div class="attribute"><em><span class="na"><a href="/specification/syntax/instances/#required">required</a></span><span class="na">=</span><span class="s">"yes|no"</span></em> <span class="c">(default: no)</span></div>
      <!-- define-assembly:flag:@deprecated -->
      <div class="attribute"><em><span class="na"><a href="/specification/syntax/instances/#deprecated-version">deprecated</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#string">string</a>"</span></em><span class="nt">&gt;</span></div>
      <!-- define-assembly:flag:formal-name -->
      <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/instances/#formal-name">formal-name</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/formal-name&gt;</span></em></div>
      <!-- define-assembly:flag:description -->
      <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/instances/#description">description</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/description&gt;</span></em></div>
      <!-- define-assembly:flag:prop -->
      <div class="element">
        <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/instances/#prop">prop</a></span></em> <span class="na">name=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span> <span class="na">value=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
        <!-- define-assembly:flag:prop:@namespace -->
        <div class="attribute"><em><span class="na">namespace</span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#uri">uri</a>"</span></em><span class="nt">/&gt;</span> <span class="c">(default: http://csrc.nist.gov/ns/oscal/metaschema/1.0)</span></div>
      </div>
      <!-- define-assembly:flag:use-name -->
      <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/instances/#naming-and-use-name">use-name</a>&gt;</span><a href="/specification/datatypes/#token">token</a><span class="nt">&lt;/use-name&gt;</span></em></div>
      <!-- define-assembly:flag:remarks -->
      <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/instances/#remarks">remarks</a>&gt;</span><a href="/specification/datatypes/#markup-multiline">markup-multiline</a><span class="nt">&lt;/remarks&gt;</span></em></div>
      <div class="cl nt">&lt;/flag&gt;</div>
    </div>
    <!-- define-assembly:define-flag -->
    <div class="element">
      &lt;-- Inline Flag Definition --&gt;<br/>
      <div class="cl"><span class="nt">&lt;<a href="/specification/syntax/inline-definitions/#inline-define-flag">define-flag</a></span> <span class="na"><a href="/specification/syntax/definitions/#name">name</a>=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
      <!-- define-assembly:define-flag:@as-type -->
    <div class="attribute"><em><span class="na"><a href="/specification/syntax/definitions/#as-type">as-type</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span> <span class="c">(default: <a href="/specification/datatypes/#string">string</a>)</span></em></div>
      <!-- define-assembly:define-flag:@default -->
    <div class="attribute"><em><span class="na"><a href="/specification/syntax/definitions/#default">default</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#string">string</a>"</span></em></div>
      <!-- define-assembly:define-flag:@required -->
      <div class="attribute"><em><span class="na"><a href="/specification/syntax/instances/#required">required</a></span><span class="na">=</span><span class="s">"yes|no"</span></em> <span class="c">(default: no)</span></div>
      <!-- define-assembly:define-flag:@deprecated -->
      <div class="attribute"><em><span class="na"><a href="/specification/syntax/definitions/#deprecated-version">deprecated</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#string">string</a>"</span></em><span class="nt">&gt;</span></div>
      <!-- define-assembly:define-flag:formal-name -->
      <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#formal-name">formal-name</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/formal-name&gt;</span></em></div>
      <!-- define-assembly:define-flag:description -->
      <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#description">description</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/description&gt;</span></em></div>
      <!-- define-assembly:define-flag:prop -->
      <div class="element">
        <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#prop">prop</a></span></em> <span class="na">name=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span> <span class="na">value=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
        <!-- define-assembly:define-flag:prop:@namespace -->
        <div class="attribute"><em><span class="na">namespace</span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#uri">uri</a>"</span></em><span class="nt">/&gt;</span> <span class="c">(default: http://csrc.nist.gov/ns/oscal/metaschema/1.0)</span></div>
      </div>
      <!-- define-assembly:define-flag:constraint -->
      <div class="element cl nt"><em>&lt;<a href="/specification/syntax/constraints/#define-flag-constraints">constraint</a>/&gt;</em></div>
      <!-- define-assembly:define-flag:remarks -->
      <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#remarks">remarks</a>&gt;</span><a href="/specification/datatypes/#markup-multiline">markup-multiline</a><span class="nt">&lt;/remarks&gt;</span></em></div>
      <!-- define-assembly:define-flag:example -->
      <div class="element cl nt"><em>&lt;<a href="/specification/syntax/definitions/#example">example</a>/&gt;</em></div>
      <div class="cl nt">&lt;/define-flag&gt;</div>
    </div>
    <div class="element">
      <!-- define-assembly:model -->
      <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#model">model</a></span></em><span class="nt">/&gt;</span></div>
      <!-- define-assembly:model:assembly -->
      <div class="element">
        &lt;-- Assembly Instance --&gt;<br/>
        <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/instances/#assembly-instance">assembly</a></span></em> <span class="na"><a href="/specification/syntax/instances/#ref">ref</a>=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
        <!-- define-assembly:model:assembly:@min-occurs -->
        <div class="attribute"><em><span class="na"><a href="/specification/syntax/instances/#max-occurs">min-occurs</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#non-negative-integer">non-negative-integer</a>"</span></em> <span class="c">(default: 0)</span></div>
        <!-- define-assembly:model:assembly:@max-occurs -->
        <div class="attribute"><em><span class="na"><a href="/specification/syntax/instances/#max-occurs">max-occurs</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#positive-integer">positive-integer</a>|unbounded"</span></em> <span class="c">(default: 1)</span></div>
        <!-- define-assembly:model:assembly:@deprecated -->
        <div class="attribute"><em><span class="na"><a href="/specification/syntax/instances/#deprecated-version">deprecated</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#string">string</a>"</span></em><span class="nt">&gt;</span></div>
        <!-- define-assembly:model:assembly:formal-name -->
        <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#formal-name">formal-name</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/formal-name&gt;</span></em></div>
        <!-- define-assembly:model:assembly:description -->
        <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#description">description</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/description&gt;</span></em></div>
        <!-- define-assembly:model:assembly:prop -->
        <div class="element">
          <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#prop">prop</a></span></em> <span class="na">name=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span> <span class="na">value=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
          <!-- define-assembly:model:assembly:prop:@namespace -->
          <div class="attribute"><em><span class="na">namespace</span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#uri">uri</a>"</span></em><span class="nt">/&gt;</span> <span class="c">(default: http://csrc.nist.gov/ns/oscal/metaschema/1.0)</span></div>
        </div>
        <!-- define-assembly:model:assembly:use-name -->
        <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#naming-and-use-name">use-name</a>&gt;</span><a href="/specification/datatypes/#token">token</a><span class="nt">&lt;/use-name&gt;</span></em></div>
        <!-- define-assembly:model:assembly:group-as -->
        <div class="element">
          <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/instances/#group-as">group-as</a></span></em> <span class="na"><a href="/specification/syntax/instances/#name">name</a>=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
          <!-- define-assembly:model:assembly:group-as:@in-json -->
          <div class="attribute"><em><span class="na"><a href="/specification/syntax/instances/#in-json">in-json</a></span><span class="na">=</span><span class="s">"<a href="/specification/syntax/instances/#in-jsonarray">ARRAY</a>|<a href="/specification/syntax/instances/#in-jsonsingleton_or_array">SINGLETON_OR_ARRAY</a>|<a href="/specification/syntax/instances/#in-jsonby_key">BY_KEY</a>"</span></em> <span class="c">(default: <a href="/specification/syntax/instances/#in-jsonsingleton_or_array">SINGLETON_OR_ARRAY</a>)</span></div>
          <!-- define-assembly:model:assembly:group-as:@in-xml -->
          <div class="attribute"><em><span class="na"><a href="/specification/syntax/instances/#in-xml">in-xml</a></span><span class="na">=</span><span class="s">"<a href="/specification/syntax/instances/#in-xmlgrouped">GROUPED</a>|<a href="/specification/syntax/instances/#in-xmlungrouped">UNGROUPED</a>"</span></em><span class="nt">/&gt;</span> <span class="c">(default: <a href="/specification/syntax/instances/#in-xmlungrouped">UNGROUPED</a>)</span></div>
        </div>
        <!-- define-assembly:model:assembly:remarks -->
        <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/instances/#remarks">remarks</a>&gt;</span><a href="/specification/datatypes/#markup-multiline">markup-multiline</a><span class="nt">&lt;/remarks&gt;</span></em></div>
        <div class="cl nt">&lt;/assembly&gt;</div>
      </div>
      <!-- define-assembly:model:field -->
      <div class="element">
        &lt;-- Field Instance --&gt;<br/>
        <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/instances/#field-instance">field</a></span></em> <span class="na"><a href="/specification/syntax/instances/#ref">ref</a>=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
        <!-- define-assembly:model:field:@min-occurs -->
        <div class="attribute"><em><span class="na"><a href="/specification/syntax/instances/#max-occurs">min-occurs</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#non-negative-integer">non-negative-integer</a>"</span></em> <span class="c">(default: 0)</span></div>
        <!-- define-assembly:model:field:@max-occurs -->
        <div class="attribute"><em><span class="na"><a href="/specification/syntax/instances/#max-occurs">max-occurs</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#positive-integer">positive-integer</a>|unbounded"</span></em> <span class="c">(default: 1)</span></div>
        <!-- define-assembly:model:field:@in-xml -->
        <div class="attribute"><em><span class="na"><a href="/specification/syntax/instances/#in-xml-1">in-xml</a></span><span class="na">=</span><span class="s">"WRAPPED|UNWRAPPED"</span></em> <span class="c">(default: WRAPPED)</span></div>
        <!-- define-assembly:model:field:@deprecated -->
        <div class="attribute"><em><span class="na"><a href="/specification/syntax/instances/#deprecated-version">deprecated</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#string">string</a>"</span></em><span class="nt">&gt;</span></div>
        <!-- define-assembly:model:field:formal-name -->
        <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#formal-name">formal-name</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/formal-name&gt;</span></em></div>
        <!-- define-assembly:model:field:description -->
        <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#description">description</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/description&gt;</span></em></div>
        <!-- define-assembly:model:field:prop -->
        <div class="element">
          <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#prop">prop</a></span></em> <span class="na">name=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span> <span class="na">value=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
          <!-- define-assembly:model:field:prop:@namespace -->
          <div class="attribute"><em><span class="na">namespace</span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#uri">uri</a>"</span></em><span class="nt">/&gt;</span> <span class="c">(default: http://csrc.nist.gov/ns/oscal/metaschema/1.0)</span></div>
        </div>
        <!-- define-assembly:model:field:use-name -->
        <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#naming-and-use-name">use-name</a>&gt;</span><a href="/specification/datatypes/#token">token</a><span class="nt">&lt;/use-name&gt;</span></em></div>
        <!-- define-assembly:model:field:group-as -->
        <div class="element">
          <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/instances/#group-as">group-as</a></span></em> <span class="na"><a href="/specification/syntax/instances/#name">name</a>=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
          <!-- define-assembly:model:field:group-as:@in-json -->
          <div class="attribute"><em><span class="na"><a href="/specification/syntax/instances/#in-json">in-json</a></span><span class="na">=</span><span class="s">"<a href="/specification/syntax/instances/#in-jsonarray">ARRAY</a>|<a href="/specification/syntax/instances/#in-jsonsingleton_or_array">SINGLETON_OR_ARRAY</a>|<a href="/specification/syntax/instances/#in-jsonby_key">BY_KEY</a>"</span></em> <span class="c">(default: <a href="/specification/syntax/instances/#in-jsonsingleton_or_array">SINGLETON_OR_ARRAY</a>)</span></div>
          <!-- define-assembly:model:field:group-as:@in-xml -->
          <div class="attribute"><em><span class="na"><a href="/specification/syntax/instances/#in-xml">in-xml</a></span><span class="na">=</span><span class="s">"<a href="/specification/syntax/instances/#in-xmlgrouped">GROUPED</a>|<a href="/specification/syntax/instances/#in-xmlungrouped">UNGROUPED</a>"</span></em><span class="nt">/&gt;</span> <span class="c">(default: <a href="/specification/syntax/instances/#in-xmlungrouped">UNGROUPED</a>)</span></div>
        </div>
        <!-- define-assembly:model:field:remarks -->
        <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/instances/#remarks">remarks</a>&gt;</span><a href="/specification/datatypes/#markup-multiline">markup-multiline</a><span class="nt">&lt;/remarks&gt;</span></em></div>
        <div class="cl nt">&lt;/field&gt;</div>
      </div>
      <!-- define-assembly:model:define-assembly -->
      <div class="element">
        &lt;-- Inline Assembly Definition --&gt;<br/>
        <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/inline-definitions/#inline-define-assembly">define-assembly</a></span></em><span class="nt">/&gt;</span></div>
      </div>
      <!-- define-assembly:model:define-field -->
      <div class="element">
        &lt;-- Inline Field Definition --&gt;<br/>
        <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/inline-definitions/#inline-define-field">define-field</a></span></em><span class="nt">/&gt;</span></div>
      </div>
      <!-- define-assembly:model:choice -->
      <div class="element">
        &lt;-- Choice --&gt;<br/>
        <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/instances/#choice-selections">choice</a></span></em><span class="nt">/&gt;</span></div>
      </div>
      <!-- define-assembly:model:any -->
      <div class="element">
        &lt;-- Any --&gt;<br/>
        <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/instances/#any">any</a></span></em><span class="nt">/&gt;</span></div>
      </div>
      <div class="cl nt">&lt;/model&gt;</div>
    </div>
    <div class="element cl nt"><em>&lt;<a href="/specification/syntax/constraints/#define-assembly-constraints">constraint</a>/&gt;</em></div>
    <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#remarks">remarks</a>&gt;</span><a href="/specification/datatypes/#markup-multiline">markup-multiline</a><span class="nt">&lt;/remarks&gt;</span></em></div>
    <div class="element cl nt"><em>&lt;<a href="/specification/syntax/definitions/#example">example</a>/&gt;</em></div>
    <div class="cl nt">&lt;/define-assembly&gt;</div>
  </div>

  <!-- define-field -->
  <div class="element">
    &lt;-- ###################### --&gt;<br/>
    &lt;-- Top-Level define-field --&gt;<br/>
    &lt;-- ###################### --&gt;
    <div class="cl"><span class="nt">&lt;<a href="/specification/syntax/definitions/#top-level-define-field">define-field</a></span> <span class="na"><a href="/specification/syntax/definitions/#name">name</a>=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
    <!-- define-field:@as-type -->
    <div class="attribute"><em><span class="na"><a href="/specification/syntax/definitions/#as-type">as-type</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span> <span class="c">(default: <a href="/specification/datatypes/#string">string</a>)</span></em></div>
    <!-- define-field:@default -->
    <div class="attribute"><em><span class="na"><a href="/specification/syntax/definitions/#default">default</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#string">string</a>"</span></em></div>
    <!-- define-field:@collapsible -->
    <div class="attribute"><em><span class="na"><a href="/specification/syntax/definitions/#collapsible">collapsible</a></span><span class="na">=</span><span class="s">"yes|no"</span> <span class="c">(default: no)</span></em></div>
    <!-- define-field:@deprecated -->
    <div class="attribute"><em><span class="na"><a href="/specification/syntax/definitions/#deprecated-version">deprecated</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#string">string</a>"</span></em></div>
    <!-- define-field:@scope -->
    <div class="attribute"><em><span class="na"><a href="/specification/syntax/definitions/#scope">scope</a></span><span class="na">=</span><span class="s">"global|local"</span></em><span class="nt">&gt;</span> <span class="c">(default: global)</span></div>
    <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#formal-name">formal-name</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/formal-name&gt;</span></em></div>
    <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#description">description</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/description&gt;</span></em></div>
    <div class="element">
      <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#prop">prop</a></span></em> <span class="na">name=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span> <span class="na">value=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
      <div class="attribute"><em><span class="na">namespace</span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#uri">uri</a>"</span></em><span class="nt">/&gt;</span> <span class="c">(default: http://csrc.nist.gov/ns/oscal/metaschema/1.0)</span></div>
    </div>
    <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#naming-and-use-name">use-name</a>&gt;</span><a href="/specification/datatypes/#token">token</a><span class="nt">&lt;/use-name&gt;</span></em></div>
    <!-- define-field:json-key -->
    <div class="element">
      <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#json-key">json-key</a></span></em> <span class="na">flag-ref=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span><span class="nt">/&gt;</span></div>
    </div>
    <!-- define-field:json-value-key -->
    <div class="element">
      <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#json-value-key">json-value-key</a>&gt;</span><a href="/specification/datatypes/#token">token</a><span class="nt">&lt;/json-value-key&gt;</span></em></div>
    </div>
    <!-- define-field:json-value-key-flag -->
    <div class="element">
      <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#json-value-key">json-value-key-flag</a></span></em> <span class="na">flag-ref=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span><span class="nt">/&gt;</span></div>
    </div>
    <!-- define-field:flag -->
    <div class="element">
      &lt;-- Flag Instance --&gt;<br/>
      <div class="cl"><span class="nt">&lt;<a href="/specification/syntax/instances/#flag-instance">flag</a></span> <span class="na"><a href="/specification/syntax/instances/#ref">ref</a>=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
      <!-- define-field:flag:@required -->
      <div class="attribute"><em><span class="na"><a href="/specification/syntax/instances/#required">required</a></span><span class="na">=</span><span class="s">"yes|no"</span></em> <span class="c">(default: no)</span></div>
      <!-- define-field:flag:@deprecated -->
      <div class="attribute"><em><span class="na"><a href="/specification/syntax/instances/#deprecated-version">deprecated</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#string">string</a>"</span></em><span class="nt">&gt;</span></div>
      <!-- define-field:flag:formal-name -->
      <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/instances/#formal-name">formal-name</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/formal-name&gt;</span></em></div>
      <!-- define-field:flag:description -->
      <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/instances/#description">description</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/description&gt;</span></em></div>
      <!-- define-field:flag:prop -->
      <div class="element">
        <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/instances/#prop">prop</a></span></em> <span class="na">name=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span> <span class="na">value=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
        <!-- define-field:flag:prop:@namespace -->
        <div class="attribute"><em><span class="na">namespace</span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#uri">uri</a>"</span></em><span class="nt">/&gt;</span> <span class="c">(default: http://csrc.nist.gov/ns/oscal/metaschema/1.0)</span></div>
      </div>
      <!-- define-field:flag:use-name -->
      <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/instances/#naming-and-use-name">use-name</a>&gt;</span><a href="/specification/datatypes/#token">token</a><span class="nt">&lt;/use-name&gt;</span></em></div>
      <!-- define-field:flag:remarks -->
      <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/instances/#remarks">remarks</a>&gt;</span><a href="/specification/datatypes/#markup-multiline">markup-multiline</a><span class="nt">&lt;/remarks&gt;</span></em></div>
      <div class="cl nt">&lt;/flag&gt;</div>
    </div>
    <!-- define-field:define-flag -->
    <div class="element">
      &lt;-- Inline Flag Definition --&gt;<br/>
      <div class="cl"><span class="nt">&lt;<a href="/specification/syntax/inline-definitions/#inline-define-flag">define-flag</a></span> <span class="na"><a href="/specification/syntax/definitions/#name">name</a>=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
      <!-- define-field:define-flag:@as-type -->
    <div class="attribute"><em><span class="na"><a href="/specification/syntax/definitions/#as-type">as-type</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span> <span class="c">(default: <a href="/specification/datatypes/#string">string</a>)</span></em></div>
      <!-- define-field:define-flag:@default -->
    <div class="attribute"><em><span class="na"><a href="/specification/syntax/definitions/#default">default</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#string">string</a>"</span></em></div>
      <!-- define-field:define-flag:@required -->
      <div class="attribute"><em><span class="na"><a href="/specification/syntax/instances/#required">required</a></span><span class="na">=</span><span class="s">"yes|no"</span></em> <span class="c">(default: no)</span></div>
      <!-- define-field:define-flag:@deprecated -->
      <div class="attribute"><em><span class="na"><a href="/specification/syntax/definitions/#deprecated-version">deprecated</a></span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#string">string</a>"</span></em><span class="nt">&gt;</span></div>
      <!-- define-field:define-flag:formal-name -->
      <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#formal-name">formal-name</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/formal-name&gt;</span></em></div>
      <!-- define-field:define-flag:description -->
      <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#description">description</a>&gt;</span><a href="/specification/datatypes/#string">string</a><span class="nt">&lt;/description&gt;</span></em></div>
      <!-- define-field:define-flag:prop -->
      <div class="element">
        <div class="cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#prop">prop</a></span></em> <span class="na">name=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span> <span class="na">value=</span><span class="s">"<a href="/specification/datatypes/#token">token</a>"</span></div>
        <!-- define-field:define-flag:prop:@namespace -->
        <div class="attribute"><em><span class="na">namespace</span><span class="na">=</span><span class="s">"<a href="/specification/datatypes/#uri">uri</a>"</span></em><span class="nt">/&gt;</span> <span class="c">(default: http://csrc.nist.gov/ns/oscal/metaschema/1.0)</span></div>
      </div>
      <!-- define-field:define-flag:constraint -->
      <div class="element cl nt"><em>&lt;<a href="/specification/syntax/constraints/#define-flag-constraints">constraint</a>/&gt;</em></div>
      <!-- define-field:define-flag:remarks -->
      <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#remarks">remarks</a>&gt;</span><a href="/specification/datatypes/#markup-multiline">markup-multiline</a><span class="nt">&lt;/remarks&gt;</span></em></div>
      <!-- define-field:define-flag:example -->
      <div class="element cl nt"><em>&lt;<a href="/specification/syntax/definitions/#example">example</a>/&gt;</em></div>
      <div class="cl nt">&lt;/define-flag&gt;</div>
    </div>
    <div class="element cl nt"><em>&lt;<a href="/specification/syntax/constraints/#define-field-constraints">constraint</a>/&gt;</em></div>
    <div class="element cl"><em><span class="nt">&lt;<a href="/specification/syntax/definitions/#remarks">remarks</a>&gt;</span><a href="/specification/datatypes/#markup-multiline">markup-multiline</a><span class="nt">&lt;/remarks&gt;</span></em></div>
    <div class="element cl nt"><em>&lt;<a href="/specification/syntax/definitions/#example">example</a>/&gt;</em></div>
    <div class="cl nt">&lt;/define-field&gt;</div>
  </div>
  <div class="cl nt">&lt;/METASCHEMA&gt;</div>
</div>
</code></div></div>
{{< /rawhtml >}}
