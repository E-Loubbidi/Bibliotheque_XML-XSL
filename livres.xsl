<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method = "html" encoding = "UTF-8" indent = "yes" />
    <xsl:template match = "/">
        <html>
            <head>
                <title>Livres</title>
            </head>
            <body>
                <xsl:for-each select="/bibliotheque/livres/livre">
                    <xsl:sort select="./@datepublication"/>
                    <ul>
                        <li><xsl:value-of select="./titre"/></li>
                        <ul>
                            <li><xsl:value-of select="./@isbn"/></li>
                            <li><xsl:value-of select="./@code"/></li>
                            <li><xsl:value-of select="./@datepublication"/></li>
                        </ul>
                    </ul>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>