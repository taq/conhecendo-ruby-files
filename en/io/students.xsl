<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="utf-8" indent="no"/>
  <xsl:template match="/students">
    <html>
      <head>
        <title>XSLT test</title>
      </head>
      <body>
        <table>
          <caption>Students</caption>
          <thead>
            <th>
              <td>Id</td>
              <td>Name</td>
            </th>
          </thead>
          <tbody>
            <xsl:apply-templates/>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="student">
    <tr>
      <td><xsl:value-of select="id"/></td>
      <td><xsl:value-of select="name"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
