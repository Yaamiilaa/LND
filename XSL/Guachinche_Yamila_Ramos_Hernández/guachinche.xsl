<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Guachinche</title>
                <link rel="stylesheet" type="text/css" href="guachinche.css"></link>
            </head>
            <body>
                <h1>Carta</h1>  
                    <ul>
                        <xsl:for-each select="guachinche/carta"/>
                        <li><xsl:value-of select="entrantes"/></li>
                        <li><xsl:value-of select="primer_plato"/></li>
                        <li><xsl:value-of select="segundo_plato"/></li>
                        <li><xsl:value-of select="postre"/></li>
                    </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>