<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet  version="1.0"
                 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/book">
        <body>
            <h1 align="center">
                <xsl:value-of select="ISBN"/>
                <xsl:text></xsl:text>
                <xsl:value-of select="title"/>
            </h1>
            <h2 align="center">
                <xsl:text>by</xsl:text>
                <xsl:value-of select="author/firstname"/>
                <xsl:text></xsl:text>
                <xsl:value-of select="author/lastname"/>
            </h2>

            <table border="3">
                <tr >
                    <td align="right">
                        <xsl:text>Name</xsl:text>
                        <xsl:value-of select="chapters/preface/number"/>
                    </td>
                    <td>
                        <xsl:value-of select="chapters/preface/name"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="chapters/preface/pages"/>
                        <xsl:text>  </xsl:text>
                    </td>
                    <td>
                        <xsl:value-of select="chapters/preface/capital"/>
                        <xsl:text> </xsl:text>
                    </td>
                    <td>
                        <xsl:value-of select="chapters/preface/bird"/>
                        <xsl:text> </xsl:text>
                    </td>
                    <td>
                        <xsl:value-of select="chapters/preface/flower"/>
                        <xsl:text> </xsl:text>
                    </td>
                    <td>
                        <xsl:value-of select="chapters/preface/Area"/>
                        <xsl:text> </xsl:text>
                    </td>
                </tr>
                <xsl:for-each select="chapters/chapter">
                    <xsl:sort select="number" order="ascending"/>
                    <tr>
                        <td align="right">
                            <xsl:text>Chapter</xsl:text>
                            <xsl:value-of select="nunmber"/>
                        </td>
                        <td>
                            <xsl:value-of select="name"/>
                            <xsl:text >  </xsl:text>
                            <xsl:value-of select="pages"/>
                            <xsl:text>  </xsl:text>
                        </td>
                        <td>
                            <xsl:value-of select="capital"/>
                            <xsl:text>  </xsl:text>
                        </td>
                        <td>
                            <xsl:value-of select="bird"/>
                            <xsl:text>  </xsl:text>
                        </td>
                        <td>
                            <xsl:value-of select="flower"/>
                            <xsl:text>  </xsl:text>
                        </td>
                        <td>
                            <xsl:value-of select="Area"/>
                            <xsl:text>  </xsl:text>
                        </td>
                    </tr>

                </xsl:for-each>
            </table>
        </body>
    </xsl:template>
</xsl:stylesheet>