<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <tr>
          <p>Nombre y Apellidos: David Gutiérrez</p>
        </tr>
        <xsl:for-each select="ies/ciclos/ciclo">
          <tr>
            <xsl:value-of select="nombre"/>
            <xsl:value-of select="grado"/>
          </tr>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
