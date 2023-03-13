<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <p>David Gutiérrez Pérez</p>
          <table border="2">
          <xsl:for-each select="bib/libro">
          <xsl:sort select="precio" data-type="number"/>
            <tr>
              <td><xsl:value-of select="precio"/></td>
              <xsl:choose>
                <xsl:when test="precio &gt;100">
                  <td bgcolor="red"><xsl:value-of select="titulo"/></td>
                </xsl:when>
                <xsl:otherwise>
                  <td><xsl:value-of select="titulo"/></td>
                </xsl:otherwise>
              </xsl:choose>
            <td><xsl:value-of select="@año"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
