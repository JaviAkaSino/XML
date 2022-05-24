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

                                <xsl:otherwise>
                                    Viernes
                                </xsl:otherwise>

                            </xsl:choose>
                            
                            </h4>
                            <ul>
                                <xsl:for-each select="tarea">
                                                            
                                    <li>
                                        <strong><xsl:value-of select="nombre"/></strong>
                                        <xsl:if test="@prioridad">
                                        -Prioridad: 
                                        <xsl:value-of select="@prioridad"/>
                                        </xsl:if>
                                        <br/>
                                        De <xsl:value-of select="hora-ini"/> 
                                        a <xsl:value-of select="hora-fin"/>  
                                    </li>
                            
                                </xsl:for-each>                      
                            </ul>
                    </xsl:for-each>

                    <xsl:for-each select="horario/dia/tarea">
                        <p>
                            <xsl:value-of select="nombre"/> - 

                            <xsl:choose>
                                <xsl:when test="hora-ini &lt; 12">
                                    Por la mañana
                                </xsl:when>

                                <xsl:when test="hora-ini &gt; 14">
                                    Por la tarde
                                </xsl:when>

                                <xsl:otherwise>
                                    Al mediodía
                                </xsl:otherwise>
                            </xsl:choose>
                        </p>
                    </xsl:for-each>
                
            </body>
        </html>

    </xsl:template>
    
</xsl:stylesheet>