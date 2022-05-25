<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" >
    <xsl:template match="/">

        <html>
            <head>
                <title>Javier Parodi Piñero</title>
                <meta charset="UTF-8"/>

                <style>
                    table{border-collapse:collapse;width:80%;margin:0 auto; text-align:center}
                    table, td, th{bordeR:1px solid black}
                    th{background-color:#CCC}
                    .rojo{color:red}
                    .verde{color:green}
                    .azul{color:blue}
                </style>

            </head>
            <body>
                <table>
                    <tr>
                        <th>Código</th>
                        <th>Artículo</th>
                        <th>Cantidad</th>
                        <th>Imagen</th>
                    </tr>
                    <xsl:for-each select="tienda/producto">
                    <xsl:sort select="articulo"/>
                        <tr>
                            <td><xsl:value-of select="codigo"/></td>
                            
                            <td>
                                    <xsl:choose>

                                        <xsl:when test="precio &lt; 100">
                                            <span class="verde"><xsl:value-of select="articulo"/></span>
                                        </xsl:when>

                                        <xsl:when test="precio &gt; 1000">
                                            <span class="rojo"><xsl:value-of select="articulo"/></span>
                                        </xsl:when>
                                        
                                        <xsl:otherwise>
                                            <span class="azul"><xsl:value-of select="articulo"/></span>
                                        </xsl:otherwise>
                                        

                                    </xsl:choose>
                                
                            </td>

                            <td><xsl:value-of select="cantidad"/></td>

                            <td>
                                <img>
                                    
                                    <xsl:attribute name="src">Imágenes/<xsl:value-of select="imagen"/>
                                    </xsl:attribute>

                                    <xsl:attribute name="height">100</xsl:attribute>
                                </img>
                            </td>

                        </tr>
                    </xsl:for-each>
                </table>
                
            </body>
        </html>

    </xsl:template>
    
</xsl:stylesheet>