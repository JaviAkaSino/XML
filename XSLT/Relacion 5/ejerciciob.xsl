<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Javier Parodi Piñero</title>

                <style>
                    table{width:80%;margin:0 auto; text-align:center}
                    table, td, th{border:1px solid black}
                    h1{text-align:center}
                    .rojo{color:red}
                    .naranja{color:orange}
                    .azul{color:blue}
                    .azulclaro{color:#61B8E1}
                    .fondoazul{background-color:#3A6CAE}
                    .fondoazulclaro{background-color:#6994CC}
                    .fondodatos{background-color:#B4E6FE}
                </style>

            </head>

            <body>
                <h1 class="rojo">Calificaciones de la convocatoria de Septiembre</h1>

                <table>
                    <tr class="fondoazul">
                        <th colspan="3">Datos</th>
                        <th colspan="4">Notas</th>
                    </tr>

                    <tr class="fondoazulclaro">
                        <th>Nombres</th>
                        <th>Apellidos</th>
                        <th>Foto</th>
                        <th>Tareas</th>
                        <th>Cuestionarios</th>
                        <th>Examen</th>
                        <th>Final</th>
                    </tr>

                    <xsl:for-each select="notas/alumno">
                    <xsl:sort select="apellidos"/>
                        <xsl:if test="@convocatoria = 'Septiembre'">

                            <tr class="fondodatos">
                                <td>
                                    <xsl:value-of select="nombre"/>
                                </td>
                                <td>
                                    <xsl:value-of select="apellidos"/>
                                </td>

                                <td>
                                    <img>
                                        <xsl:attribute name="src">Img/<xsl:value-of select="matricula"/>.png</xsl:attribute> 

                                        <xsl:attribute name="height">65</xsl:attribute> 
                                    </img>
                                </td>

                                <td>
                                    <xsl:value-of select="tareas"/>
                                </td>
                                <td>
                                    <xsl:value-of select="cuestionarios"/>
                                </td>
                                <td>
                                    <xsl:value-of select="examen"/>
                                </td>

                                <td>
                                    <xsl:choose>
                                        <xsl:when test="final &lt; 5">
                                            <span class="rojo">
                                        Suspenso
                                            </span>
                                        </xsl:when>

                                        <xsl:when test="final &lt; 6">
                                            <span class="naranja">
                                        Suficiente
                                            </span>
                                        </xsl:when>

                                        <xsl:when test="final &lt; 7">                                    
                                        Bien                                    
                                        </xsl:when>

                                        <xsl:when test="final &lt; 9">
                                            <span class="azulclaro">
                                        Notable
                                            </span>
                                        </xsl:when>

                                        <xsl:otherwise>
                                            <span class="azul">
                                        Sobresaliente
                                            </span>
                                        </xsl:otherwise>

                                    </xsl:choose>
                                </td>
                            </tr>

                        </xsl:if>

                    </xsl:for-each>



                </table>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>