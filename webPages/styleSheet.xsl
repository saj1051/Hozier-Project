<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/1999/xhtml"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="#all"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" version="3.0">
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" include-content-type="no"
        indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Hozier</title>
            </head>
            <body>
                <h1>Hozier songs</h1>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
   <xsl:template match="song">
      <h2>
           <xsl:apply-templates select="information"/>
       </h2>
       <article>
           <xsl:apply-templates select="lyrics"/>
       </article>
   </xsl:template>
    <xsl:template match="information">
        <xsl:apply-templates select='title'/>
    </xsl:template>
   <xsl:template match="lyrics">
       <p>
           <xsl:apply-templates select="verse"/>
       </p>
   </xsl:template>
    <xsl:template match="verse">
        
        <p>
            <xsl:apply-templates select="stanza"/>
        </p>
    </xsl:template>
    <xsl:template match="stanza">
        <p>
            <xsl:apply-templates select="line"/>
        </p>
    </xsl:template>
    <xsl:template match="line">
        <xsl:apply-templates/>
    </xsl:template>
    <!--<xsl:template match="verse | stanza | chorus | bridge | pre-chorus | outro">
        <div class="lyric">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="line">
        <line><xsl:apply-templates/></line>
    </xsl:template>-->
</xsl:stylesheet>
