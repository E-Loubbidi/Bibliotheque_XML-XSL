<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method = "html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <html>
            <head>
                <title>Empreints</title>
            </head>
            <body>
                <table>
                    <tr>
                        <td>date de sortie</td>
                        <td>livre</td>
                        <td>adhérent</td>
                        <td>date de retour</td>
                    </tr>
                    <xsl:for-each select="/bibliotheque/empreints/sortie">
                        <tr>
                            <td><xsl:value-of select="./@date"/></td>
                            <td><xsl:value-of select="./@livre"/></td>
                            <td><xsl:value-of select="./@adherent"/></td>
                            <xsl:variable name="livre" select="./@livre"/>
                            <xsl:variable name="adherent" select="./@adherent"/>
                            <td>
                                <xsl:for-each select="../entree">
                                    <xsl:if test="$livre=./@livre and $adherent=./@adherent">
                                        <xsl:value-of select="./@date"/>
                                    </xsl:if>    
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>        
    </xsl:template>
</xsl:stylesheet>