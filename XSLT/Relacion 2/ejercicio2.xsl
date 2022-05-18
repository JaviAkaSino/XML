<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" >
    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio 2</title>
                <meta charset="UTF-8"/>

                <style>
                    table{border-collapse:collapse;width:80%;margin:0 auto; text-align:center}
                    table, td, th{bordeR:1px solid black}
                    th{background-color:#CCC}
                    .rojo{background-color:red}
                    .cursiva{font-style:oblique}
                </style>

            </head>
            <body>
                <h1>Ejercicio 2</h1>
                <table>

                    <tr>
                        <th>Precio</th>
                        <th>Título</th>
                        <th>Año publicación</th>
                    </tr>

                    <xsl:for-each select="bib/libro">
                    <xsl:sort select="precio"/>

                    <tr>
                        <td>
                            <xsl:value-of select="precio"/>
                        </td>
                       
                        <xsl:choose>

                            <xsl:when test="precio &gt; 100">
                                <td class="rojo">
                                    <xsl:value-of select="titulo"/>
                                </td>
                            </xsl:when>

                            <xsl:otherwise><td><xsl:value-of select="titulo"/></td></xsl:otherwise>
                        </xsl:choose>    
                        
                            
                        <td>
                            <span class="cursiva"><xsl:value-of select="@año"/></span>  
                        </td>
                    </tr>

                    </xsl:for-each>

                </table>            
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>