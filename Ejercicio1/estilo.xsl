<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio1</title>
            </head>
            <body>
                <h3>Nombre y apellido: David Gutiérrez Pérez</h3>
                <xsl:for-each select="bib/libro">
                    <tr>
                        <lo><xsl:value-of select="titulo"/></lo>
                        <lo><xsl:value-of select="editorial"/></lo>
                        <lo><xsl:value-of select="@año"/></lo>
                    </tr>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>