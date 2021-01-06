<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html"/>

    <xsl:template match="PERIODIC_TABLE">
      <html>
        <head>
          <title>Periodic table</title>
        </head>
        <body>
          <h1>Atomic Number vs. Atomic Weight</h1>
          <table border="0">
            <tr>
              <td>
                <b>Element</b>
              </td>
              <td>
                <b>Atomic Number</b>
              </td>
              <td>
                <b>Atomic Number</b>
              </td>
            </tr>
            <xsl:for-each select="ATOM">
              <tr>
                <td>
                  <xsl:value-of select="NAME"/>
                </td>
                <td>
                  <xsl:value-of select="ATOMIC_NUMBER"/>
                </td>
                <td>
                  <xsl:value-of select="ATOMIC_WEIGHT"/>
                </td>
              </tr>
            </xsl:for-each>
          </table>
        </body>
      </html>
    </xsl:template>
</xsl:stylesheet>
