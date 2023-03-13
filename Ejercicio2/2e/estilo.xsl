<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h1>IES Nuestra Sra. de los Remedios</h1>
        <table border="1">
          <tr>
            <td aling="center"><th>Nombre</th></td>
            <td><th>Año</th></td>
          </tr>
        <xsl:for-each select="ies/ciclos/ciclo">
          <tr>
           <td><xsl:value-of select="nombre"/></td>
            <xsl:choose>
              <xsl:when test="decretoTitulo/@año = 2010">
                <td bgcolor="green"><xsl:value-of select="decretoTitulo/@año"/></td>
              </xsl:when>
              <xsl:when test="decretoTitulo/@año = 2009">
                <td bgcolor="blue"><xsl:value-of select="decretoTitulo/@año"/></td>
              </xsl:when>
              <xsl:when test="decretoTitulo/@año = 2008">
                <td bgcolor="red"><xsl:value-of select="decretoTitulo/@año"/></td>
              </xsl:when>
            </xsl:choose>
            </tr>
        </xsl:for-each>
      </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
