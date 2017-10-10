<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei" version="2.0">
    <xd:doc xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl" scope="stylesheet">
        <xd:desc>
            <xd:detail>Licensed by Thomas Hansen under the Creative Commons Attribution-Share Alike
                3.0 United States license. You are free to copy, distribute, transmit, and remix
                this work, provided you attribute the work to Thomas Hansen as the original author
                and reference the Society for Danish Language and Literature [http://dsl.dk] for the
                work. If you alter, transform, or build upon this work, you may distribute the
                resulting work only under the same, similar or a compatible license. Any of the
                above conditions can be waived if you get permission from the copyright holder. For
                any reuse or distribution, you must make clear to others the license terms of this
                work. The best way to do this is with a link to the license
                [http://creativecommons.org/licenses/by-sa/3.0/deed.en].</xd:detail>
            <xd:p><xd:b>Created on:</xd:b> Jan 5, 2010</xd:p>
            <xd:p><xd:b>Author:</xd:b> Thomas Hansen</xd:p>
            <xd:copyright>2010, Society for Danish Language and Literature</xd:copyright>
        </xd:desc>
    </xd:doc>
    <xsl:template match="tei:div">
        <xsl:apply-templates
            select="tei:head | tei:div | tei:p | tei:lg | tei:epigraph | tei:sp | tei:cit"/>
    </xsl:template>

    <xsl:template match="tei:div/tei:div">
        <xsl:apply-templates select="tei:head | tei:p | tei:lg | tei:epigraph | tei:sp | tei:cit"/>
    </xsl:template>

    <xsl:template match="tei:div[@type = 'advert']">
        <div class="metadata">
            <span class="caption">Advert: </span>
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="tei:div[@type = 'dedication']">
        <div class="metadata">
            <span class="caption">Dedication: </span>
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="tei:div[@type = 'epilogue']">
        <div class="metadata">
            <span class="caption">Epilogue: </span>
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="tei:div[@type = 'half-title']">
        <div class="titlePage">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="tei:div[@type = 'letter']">
        <div class="letter">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="tei:div[@type = 'preface']">
        <div class="metadata">
            <span class="caption">Preface: </span>
            <h3>
                <xsl:apply-templates select="tei:head"/>
            </h3>
            <xsl:apply-templates select="tei:p | tei:signed"/>
        </div>
    </xsl:template>
</xsl:stylesheet>