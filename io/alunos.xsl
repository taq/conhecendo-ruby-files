<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="utf-8" indent="no"/>
  <xsl:template match="/alunos">
    <html>
      <head>
        <title>Teste de XSLT</title>
      </head>
      <body>
        <table>
          <caption>Alunos</caption>
          <thead>
            <th>
              <td>Id</td>
              <td>Nome</td>
            </th>
          </thead>
          <tbody>
            <xsl:apply-templates/>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="aluno">
    <tr>
      <td><xsl:value-of select="id"/></td>
      <td><xsl:value-of select="nome"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
