<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method = "html" encoding="UTF-8" indent = "yes"/>
    <xsl:template match = "/">
        <html>
            <head>
                <title>Abonnés</title>    
            </head>
            <body>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>NOM</th>
                        <th>PRENOM</th>
                    </tr>
                    <xsl:for-each select = "/bibliotheque/adherents/adherent">
                        <tr>
                            <td><xsl:value-of select="./@id"/></td>
                            <td><xsl:value-of select="./nom"/></td>
                            <td><xsl:value-of select="./prenom"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>