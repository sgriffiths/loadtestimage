<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <!-- Identity transform -->
   <xsl:template match="@* | node()">
      <xsl:copy>
         <xsl:apply-templates select="@* | node()"/>
      </xsl:copy>
   </xsl:template>

   <xsl:template match="/jmeterTestPlan/hashTree/hashTree/*[1]">
      <BackendListener enabled="true" testclass="BackendListener" testname="Backend Listener" guiclass="BackendListenerGui">
        <elementProp name="arguments" elementType="Arguments" guiclass="ArgumentsPanel" testclass="Arguments" enabled="true">
          <collectionProp name="Arguments.arguments">
            <elementProp name="es.scheme" elementType="Argument">
              <stringProp name="Argument.name">es.scheme</stringProp>
              <stringProp name="Argument.value">https</stringProp>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="es.host" elementType="Argument">
              <stringProp name="Argument.name">es.host</stringProp>
              <stringProp name="Argument.value"></stringProp>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="es.port" elementType="Argument">
              <stringProp name="Argument.name">es.port</stringProp>
              <stringProp name="Argument.value">443</stringProp>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="es.index" elementType="Argument">
              <stringProp name="Argument.name">es.index</stringProp>
              <stringProp name="Argument.value">jmeterlogs-${__P(esindex)}</stringProp>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="es.timestamp" elementType="Argument">
              <stringProp name="Argument.name">es.timestamp</stringProp>
              <stringProp name="Argument.value">yyyy-MM-dd'T'HH:mm:ss.SSSZZ</stringProp>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="es.bulk.size" elementType="Argument">
              <stringProp name="Argument.name">es.bulk.size</stringProp>
              <stringProp name="Argument.value">100</stringProp>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="es.timout.ms" elementType="Argument">
              <stringProp name="Argument.name">es.timout.ms</stringProp>
              <stringProp name="Argument.value">200</stringProp>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="es.sample.filter" elementType="Argument">
              <stringProp name="Argument.name">es.sample.filter</stringProp>
              <stringProp name="Argument.value"/>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="es.fields" elementType="Argument">
              <stringProp name="Argument.name">es.fields</stringProp>
              <stringProp name="Argument.value"/>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="es.test.mode" elementType="Argument">
              <stringProp name="Argument.name">es.test.mode</stringProp>
              <stringProp name="Argument.value">info</stringProp>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="es.xpack.user" elementType="Argument">
              <stringProp name="Argument.name">es.xpack.user</stringProp>
              <stringProp name="Argument.value">user</stringProp>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="es.xpack.password" elementType="Argument">
              <stringProp name="Argument.name">es.xpack.password</stringProp>
              <stringProp name="Argument.value"></stringProp>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="es.parse.all.req.headers" elementType="Argument">
              <stringProp name="Argument.name">es.parse.all.req.headers</stringProp>
              <stringProp name="Argument.value">false</stringProp>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="es.parse.all.res.headers" elementType="Argument">
              <stringProp name="Argument.name">es.parse.all.res.headers</stringProp>
              <stringProp name="Argument.value">false</stringProp>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="es.aws.endpoint" elementType="Argument">
              <stringProp name="Argument.name">es.aws.endpoint</stringProp>
              <stringProp name="Argument.value"/>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="es.aws.region" elementType="Argument">
              <stringProp name="Argument.name">es.aws.region</stringProp>
              <stringProp name="Argument.value"/>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="es.ssl.truststore.path" elementType="Argument">
              <stringProp name="Argument.name">es.ssl.truststore.path</stringProp>
              <stringProp name="Argument.value"/>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="es.ssl.truststore.pw" elementType="Argument">
              <stringProp name="Argument.name">es.ssl.truststore.pw</stringProp>
              <stringProp name="Argument.value"/>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="es.ssl.keystore.path" elementType="Argument">
              <stringProp name="Argument.name">es.ssl.keystore.path</stringProp>
              <stringProp name="Argument.value"/>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="es.ssl.keystore.pw" elementType="Argument">
              <stringProp name="Argument.name">es.ssl.keystore.pw</stringProp>
              <stringProp name="Argument.value"/>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
            <elementProp name="namespace" elementType="Argument">
              <stringProp name="Argument.name">namespace</stringProp>
              <stringProp name="Argument.value">${__P(namespace)}</stringProp>
              <stringProp name="Argument.metadata">=</stringProp>
            </elementProp>
          </collectionProp>
        </elementProp>
        <stringProp name="classname">io.github.delirius325.jmeter.backendlistener.elasticsearch.ElasticsearchBackendClient</stringProp>
      </BackendListener>
      <hashTree/>
      <xsl:copy-of select="."/>
   </xsl:template>
</xsl:stylesheet>