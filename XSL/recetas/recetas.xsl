<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación con XSLT</title>
            </head>
            <body>
                <h1>Transformación con XSLT</h1>
                <p>XML -- HTML</p>
                <h1>Mis recetas de cocina canaria</h1>
                <p>Listado de mis recetas de cocina favoritos, características y modo de elaboración, ordenado alfabéticamente</p>
                <xsl:for-each select="recetas/receta">
                <h3>Nombre de la receta: <xsl:value-of select="nombre"/></h3>
                <p>Tipo de receta:
                    <xsl:value-of select="//@definicion"/>
                </p>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>