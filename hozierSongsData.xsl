<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/2000/svg"
    version="3.0" xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <svg height="100%" width="100%">
            <g transform="translate(30, 330)">
                <xsl:variable name="religiousAction" select="count(//religiousAction)"/>
                <xsl:variable name="religiousPlace" select="count(//religiousPlace)"/>
                <xsl:variable name="religiousConcept" select="count(//religiousConcept)"/>
                <xsl:variable name="religiousReference" select="count(//religiousReference)"/>
                <xsl:variable name="religiousFigure" select="count(//religiousFigure)"/>
                <xsl:variable name="litDevice" select="count(//litDevice)"/>
                <line x1="20" x2="20" y1="0" y2="-160" stroke="black" stroke-width="1"/>
                <line x1="20" x2="200" y1="0" y2="0" stroke="black" stroke-width="1"/>
                <line x1="20" x2="200" y1="-160" y2="-160" stroke="black" opacity="0.5"
                    stroke-dasharray="8 4" stroke-width="1"/>
                <line x1="20" x2="200" y1="-140" y2="-140" stroke="black" opacity="0.5"
                    stroke-dasharray="8 4" stroke-width="1"/>
                <line x1="20" x2="200" y1="-120" y2="-120" stroke="black" opacity="0.5"
                    stroke-dasharray="8 4" stroke-width="1"/>
                <line x1="20" x2="200" y1="-100" y2="-100" stroke="black" opacity="0.5"
                    stroke-dasharray="8 4" stroke-width="1"/>
                <line x1="20" x2="200" y1="-80" y2="-80" stroke="black" opacity="0.5"
                    stroke-dasharray="8 4" stroke-width="1"/>
                <line x1="20" x2="200" y1="-60" y2="-60" stroke="black" opacity="0.5"
                    stroke-dasharray="8 4" stroke-width="1"/>
                <line x1="20" x2="200" y1="-40" y2="-40" stroke="black" opacity="0.5"
                    stroke-dasharray="8 4" stroke-width="1"/>
                <line x1="20" x2="200" y1="-20" y2="-20" stroke="black" opacity="0.5"
                    stroke-dasharray="8 4" stroke-width="1"/>

                <!--Incremental numbers to show how many times things occurred in markup-->
                <text x="10" y="5" alignment-baseline="middle" text-anchor="end" font-size="small"
                    >0</text>
                <text x="10" y="-15" alignment-baseline="middle" text-anchor="end" font-size="small"
                    >20</text>
                <text x="10" y="-35" dominant-baseline="middle" text-anchor="end" font-size="small"
                    >40</text>
                <text x="10" y="-55" dominant-baseline="middle" text-anchor="end" font-size="small"
                    >60</text>
                <text x="10" y="-75" dominant-baseline="middle" text-anchor="end" font-size="small"
                    >80</text>
                <text x="10" y="-95" dominant-baseline="middle" text-anchor="end" font-size="small"
                    >100</text>
                <text x="10" y="-115" dominant-baseline="middle" text-anchor="end" font-size="small"
                    >120</text>
                <text x="10" y="-135" dominant-baseline="middle" text-anchor="end" font-size="small"
                    >140</text>
                <text x="10" y="-155" dominant-baseline="middle" text-anchor="end" font-size="small"
                    >160</text>

                <!--bar graphs for markup, their color, detail, etc-->
                <rect x="20" y="-{$religiousAction}" height="{$religiousAction}" width="20"
                    fill="blue" stroke="black" stroke-width="1"/>
                <rect x="50" y="-{$religiousPlace}" height="{$religiousPlace}" width="20"
                    fill="green" stroke="black" stroke-width="1"/>
                <rect x="80" y="-{$religiousConcept}" height="{$religiousConcept}" width="20"
                    fill="red" stroke="black" stroke-width="1"/>
                <rect x="110" y="-{$religiousReference}" height="{$religiousReference}" width="20"
                    fill="yellow" stroke="black" stroke-width="1"/>
                <rect x="140" y="-{$religiousFigure}" height="{$religiousFigure}" width="20"
                    fill="purple" stroke="black" stroke-width="1"/>
                <rect x="170" y="-{$litDevice}" height="{$litDevice}" width="20" fill="orange"
                    stroke="black" stroke-width="1"/>

                <!--graph title, x and y axis labels-->
                <!--graph title is split into two lines-->
                <text x="110" y="-190" text-anchor="middle" font-size="medium">Religious Imagery and
                    Literary Devices</text>
                <text x="110" y="-170" text-anchor="middle" font-size="medium">in Hozier's
                    Songs</text>
                <text x="80" y="-15" text-anchor="middle" transform="rotate(-90)" font-size="small"
                    >Number of Times Occurred</text>
                <text x="105" y="20" text-anchor="middle" font-size="small">Type of Imagery</text>

                <!--the cubes for the bar chart color key-->
                <rect x="215" y="-160" width="15" height="15" stroke="black" stroke-width="1"
                    fill="blue"/>
                <rect x="215" y="-140" width="15" height="15" stroke="black" stroke-width="1"
                    fill="green"/>
                <rect x="215" y="-120" width="15" height="15" stroke="black" stroke-width="1"
                    fill="red"/>
                <rect x="215" y="-100" width="15" height="15" stroke="black" stroke-width="1"
                    fill="yellow"/>
                <rect x="215" y="-80" width="15" height="15" stroke="black" stroke-width="1"
                    fill="purple"/>
                <rect x="215" y="-60" width="15" height="15" stroke="black" stroke-width="1"
                    fill="orange"/>

                <!--labels for bar chart color key-->
                <text x="240" y="-148" font-size="small">= Religious Action</text>
                <text x="240" y="-128" font-size="small">= Religious Place</text>
                <text x="240" y="-108" font-size="small">= Religious Concept</text>
                <text x="240" y="-88" font-size="small">= Religious Reference</text>
                <text x="240" y="-68" font-size="small">= Religious Figure</text>
                <text x="240" y="-48" font-size="small">= Literary Device</text>
            </g>
        </svg>
    </xsl:template>
</xsl:stylesheet>
