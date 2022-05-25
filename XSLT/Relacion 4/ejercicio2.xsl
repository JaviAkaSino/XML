<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" >
    <xsl:template match="/">

        <html>
            <head>
                <title>Javier Parodi Piñero</title>
                <meta charset="UTF-8"/>
            </head>
            <body>
                    <xsl:for-each select="horario/dia">
                    <xsl:sort select="numdia"/>
                        
                            <h4>
                            <xsl:choose>
                                <xsl:when test="numdia = 1">
                                    Lunes
                                </xsl:when>

                                <xsl:when test="numdia = 2">
                                    Martes
                                </xsl:when>

                                <xsl:when test="numdia = 3">
                                    Miércoles
                                </xsl:when>

                                <xsl:when test="numdia = 4">
                                    Jueves
                                </xsl:when>

                                <xsl:when test="numdia = 5">
                                    Viernes
                                </xsl:when>

                                <xsl:when test="numdia = 5">
                                    Viernes
                                </xsl:when>

                                <xsl:otherwise>
                                    Fin de semana
                                </xsl:otherwise>

                            </xsl:choose>
                            
                            </h4>
                            <ul>
                                <xsl:for-each select="tarea">
                            
                                    <li>
                                        <strong><xsl:value-of select="nombre"/></strong>
                                        -Prioridad: 
                                        <xsl:value-of select="@prioridad"/>
                                        <br/>
                                        De <xsl:value-of select="hora-ini"/> 
                                        a <xsl:value-of select="hora-fin"/>  
                                    </li>
                            
                                </xsl:for-each>                      
                            </ul>
                    </xsl:for-each>
                
            </body>
        </html>

    </xsl:template>
    
</xsl:stylesheet>