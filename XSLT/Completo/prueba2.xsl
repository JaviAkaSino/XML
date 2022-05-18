<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" >
    <xsl:template match="/">
        <html>
            <head>
                <title>Prueba 2</title>
                <meta charset="UTF-8"/>

                <style>
                    .verde{color:green}
                    .rojo{color:red}
                    .azul{color:blue}
                </style>

            </head>
            <body>
                <h1>Con for-each</h1>
                <ul>

                    <xsl:for-each select="ies/ciclos/ciclo">
                    <xsl:sort select="nombre" order="descending"/>

                    <xsl:choose>
                        <xsl:when test="decretoTitulo/@año &lt; 2009">
                            <li><span class="rojo"><xsl:value-of select="nombre"/></span></li> 
                        </xsl:when>
                        <xsl:when test="decretoTitulo/@año = 2009">
                            <li><span class="verde"><xsl:value-of select="nombre"/></span></li> 
                        </xsl:when>
                        <xsl:otherwise>
                            <li><span class="azul"><xsl:value-of select="nombre"/></span></li> 
                        </xsl:otherwise>
                    </xsl:choose>  

                    </xsl:for-each>

                </ul>            
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>