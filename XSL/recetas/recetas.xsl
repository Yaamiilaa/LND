<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Transformación con XSLT</title>
                <link rel="stylesheet" type="text/css" href="recetas.css"></link>
            </head>
            <body>
                <div class="title">
                    <h1>Transformación con XSLT</h1>
                     <p >XML -- HTML</p>
                </div>
                <h1 class="recetas">Mis recetas de cocina canaria</h1>
                <p>Listado de mis recetas de cocina favoritos, características y modo de elaboración, ordenado alfabéticamente</p>
                <xsl:for-each select="recetas/receta">
                <h3>Nombre de la receta: <xsl:value-of select="nombre"/></h3>
                <p>Tipo de receta:
                    <xsl:value-of select="tipo/@definicion"/>
                </p>
                <p>Dificualtad: <xsl:value-of select="dificultad"/></p>
                <p> Tiempo de elaboración: <xsl:value-of select="tiempo"/></p>
                <p> Esta receta puedes elaborarla en un/a: <xsl:value-of select="elaboracion"/></p>
                <p>Calorías: <xsl:value-of select="calorias"/></p>
                <p class="lista">Listado de ingredientes de <xsl:value-of select="nombre"/></p>
                <table>
                    <tr>
                        <th>Nombre del ingrediente</th>
                        <th>Cantidad necesaria</th>
                    </tr>
                    <xsl:for-each select="ingredientes/ingrediente">
                    <tr>
                        <td><xsl:value-of select="@nombre"/></td>
                        <td><xsl:value-of select="@cantidad"/></td>
                    </tr>
                    </xsl:for-each>
                </table>
                <h4>Pasos necesarios:</h4>
                <p> 
                    <xsl:for-each select="pasos/paso">
                    <p>Paso número <xsl:value-of select="@orden"/>:</p>
                    <p><xsl:value-of select="."/></p>
                     </xsl:for-each> 
                </p>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>