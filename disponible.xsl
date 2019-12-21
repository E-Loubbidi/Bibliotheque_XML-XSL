<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match = "/">
        <xsl:param name="date" select = "/*/empreints/entree[1]/@date"></xsl:param>
        <html>
            <head>
                <title>Disponible</title>
            </head>
            <body>    
                    <ul> 
                        <li><xsl:value-of select="$date"/></li>
                        
                            <xsl:for-each select="/bibliotheque/empreints/entree">
                                <li>
                            <xsl:if test="$date = ./@date">
                                <xsl:value-of select="./@livre"/>
                            </xsl:if>
                                </li>
                        </xsl:for-each>
                        
                    </ul>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>