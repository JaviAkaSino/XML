<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <h2>Informe detallado</h2>
            <xsl:for-each select="biblioteca/libro[autor='Mario Vargas Llosa']">
                <strong>Título:</strong>
                <em>
                    <xsl:value-of select="titulo" />
                </em>
                <br />
                <strong>Autor:</strong>
                <em>
                    <xsl:value-of select="autor" />
                </em>
                <br />
                <hr />
            </xsl:for-each>
        </html>
    </xsl:template>
</xsl:stylesheet>