<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <title>Employee Details</title>
      <style>
        table {
          font-family: Arial, sans-serif;
          border-collapse: collapse;
          width: 100%;
        }
        th, td {
          border: 1px solid #dddddd;
          text-align: left;
          padding: 8px;
        }
        th {
          background-color: #f2f2f2;
        }
      </style>
    </head>
    <body>
      <h1>Employee Details</h1>
      <table>
        <tr>
          <th>Name</th>
          <th>Designation</th>
          <th>Age</th>
          <th>Salary</th>
        </tr>
        <xsl:for-each select="employees/employee">
          <tr>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="@designation"/></td>
            <td><xsl:value-of select="age"/></td>
            <td><xsl:value-of select="salary"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>
