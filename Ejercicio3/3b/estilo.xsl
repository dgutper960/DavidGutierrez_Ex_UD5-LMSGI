<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <p>David Gutiérrez Pérez</p>
          <xsl:for-each select="bib/libro">
          <xsl:sort select="autor/apellido" data-type="text"/>
          <xsl:if test="precio &lt;100">
            <tr>
              <lo><xsl:value-of select="autor"/></lo>
            </tr>
          </xsl:if>
          </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
