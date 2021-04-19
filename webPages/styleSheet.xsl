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
                <xsl:apply-templates/>
            </head>
            <body>
                <xsl:apply-templates select="//song/lyrics"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="line">
        <line><xsl:apply-templates/></line>
    </xsl:template>
</xsl:stylesheet>
