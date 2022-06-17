<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet  version="1.0"
                 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
<xsl:template match="/">
    <xsl:for-each select="CottonDesk/SalesPerson">
        <xsl:if test="Product='Laptop'">
        <xsl:choose>

            <xsl:when test="Sales >1000">
                <span style="color:blue">
                    NAME:
                    <xsl:value-of select="Name"/>
                    AGE:
                    <xsl:value-of select="Age"/>
                    Your Commision is $5000
                </span>
                <br/>
            </xsl:when>

            <xsl:when test="Sales >100">
                <span style="color:red">
                    NAME:
                    <xsl:value-of select="Name"/>
                    AGE:
                    <xsl:value-of select="Age"/>
                    Your Commision is $1000
                </span>
                <br/>
            </xsl:when>

            <xsl:when test="Sales >100">
                <span style="color:gray">
                    NAME:
                    <xsl:value-of select="Name"/>
                    AGE:
                    <xsl:value-of select="Age"/>
                    Your Commision is $100
                </span>
                <br/>
            </xsl:when>

            <xsl:otherwise>
                <span style="color:black">
                    NAME:
                    <xsl:value-of select="Name"/>
                    AGE:
                    <xsl:value-of select="Age"/>
                    Your Commision is $0
                </span>
                <br/>
            </xsl:otherwise>
        </xsl:choose>
        </xsl:if>
    </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
