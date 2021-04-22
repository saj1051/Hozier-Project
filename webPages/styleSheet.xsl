<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns="http://www.w3.org/1999/xhtml"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math" exclude-result-prefixes="#all"
    version="3.0">
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" include-content-type="no"
        indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Hozier</title>
                <link rel="stylesheet" type="text/css" href="hozierProject.css"/>
            </head>
            <body>
                <h1>Hozier Songs</h1>
                <xsl:apply-templates select="song"/>
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
        <xsl:apply-templates select="title"/>
    </xsl:template>
   <xsl:template match="lyrics">
       <xsl:apply-templates select="intro | verse | chorus | stanza | bridge | outro | hook | preChorus | refrain"/>      
   </xsl:template>
    <xsl:template match="intro | verse | chorus | stanza | bridge | outro | hook | preChorus | refrain">
        <p>
            <xsl:apply-templates select="stanza"/>
        </p>
    </xsl:template>
    <xsl:template match="stanza">
            <xsl:apply-templates select="line"/>
    </xsl:template>
    <xsl:template match="line">
        <xsl:if test="preceding-sibling::line">
            <br/>
            <xsl:text>&#x0A;</xsl:text>
        </xsl:if>
        <xsl:apply-templates/>
    </xsl:template>
</xsl:stylesheet>
