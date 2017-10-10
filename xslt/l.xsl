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
    <!-- Lines in poetry are expressed as running text bounded by newlines. Cf. lg.xsl -->
    <xsl:template match="tei:l">
        <xsl:choose>
            <xsl:when test="@rend = 'align-last-right'">
                <p class="align-last-right">
                    <xsl:apply-templates/>
                </p>
            </xsl:when>
            <xsl:when test="@rend = 'indent1'">
                <p class="indent1">
                    <xsl:apply-templates/>
                </p>
            </xsl:when>
            <xsl:when test="@rend = 'indent2'">
                <p class="indent2">
                    <xsl:apply-templates/>
                </p>
            </xsl:when>
            <xsl:when test="@rend = 'indent3'">
                <p class="indent3">
                    <xsl:apply-templates/>
                </p>
            </xsl:when>
            <xsl:when test="@rend = 'indent4'">
                <p class="indent4">
                    <xsl:apply-templates/>
                </p>
            </xsl:when>
            <xsl:when test="@rend = 'indent5'">
                <p class="indent5">
                    <xsl:apply-templates/>
                </p>
            </xsl:when>
            <xsl:when test="@rend = 'indent6'">
                <p class="indent6">
                    <xsl:apply-templates/>
                </p>
            </xsl:when>
            <xsl:when test="@rend = 'indent7'">
                <p class="indent7">
                    <xsl:apply-templates/>
                </p>
            </xsl:when>
            <xsl:when test="@rend = 'indent8'">
                <p class="indent8">
                    <xsl:apply-templates/>
                </p>
            </xsl:when>
            <xsl:when test="@rend = 'indent9'">
                <p class="indent9">
                    <xsl:apply-templates/>
                </p>
            </xsl:when>
            <xsl:when test="@rend = 'indent10'">
                <p class="indent10">
                    <xsl:apply-templates/>
                </p>
            </xsl:when>
            <xsl:when test="@rend = 'indent11'">
                <p class="indent11">
                    <xsl:apply-templates/>
                </p>
            </xsl:when>
            <xsl:when test="@rend = 'indent12'">
                <p class="indent12">
                    <xsl:apply-templates/>
                </p>
            </xsl:when>
            <xsl:when test="@rend = 'indent13'">
                <p class="indent13">
                    <xsl:apply-templates/>
                </p>
            </xsl:when>
            <xsl:when test="@rend = 'indent14'">
                <p class="indent14">
                    <xsl:apply-templates/>
                </p>
            </xsl:when>
            <xsl:when test="@rend = 'indent15'">
                <p class="indent15">
                    <xsl:apply-templates/>
                </p>
            </xsl:when>
            <xsl:otherwise>
                <p class="verse-line"><xsl:apply-templates/></p>
                <!--<br/>-->
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>