<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match = "/">
        <html>
            <head>
                <title>Disponible</title>
            </head>
            <body>
                <xsl:for-each select="/bibliotheque/empreints/entree">
                    <xsl:variable name="date" select="./@date"/>
                    <ul>
                        <li><xsl:value-of select="$date"/></li>
                        <li>
                        <xsl:for-each select=".">
                            <xsl:if test="$date = ./@date">
                                <xsl:value-of select="./@livre"/>
                            </xsl:if>
                        </xsl:for-each>
                        </li>
                    </ul>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>