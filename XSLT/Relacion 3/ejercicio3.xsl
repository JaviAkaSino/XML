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
                </style>

            </head>
            <body>
                <table>
                    <tr><th>Artículos</th></tr>
                    <xsl:for-each select="tienda/producto">
                        <tr><td><xsl:value-of select="articulo"/></td></tr>
                    </xsl:for-each>
                </table>
                
            </body>
        </html>

    </xsl:template>
    
</xsl:stylesheet>