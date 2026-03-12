<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Llista de Clients</title>
                <style>
                    body { font-family: Arial, sans-serif; margin: 20px; }
                    table { width: 100%; border-collapse: collapse; margin-top: 20px; }
                    th, td { border: 1px solid #dddddd; padding: 8px; text-align: left; }
                    th { background-color: #f2f2f2; font-weight: bold; }
                    tr:nth-child(even) { background-color: #f9f9f9; }
                </style>
            </head>
            <body>
                <h2>Taula de Clients</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Id Client</th>
                            <th>Nom del Client</th>
                            <th>Contacte</th>
                            <th>Telèfon</th>
                            <th>Ciutat</th>
                            <th>País</th>
                            <th>Límit de Crèdit</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="customers/customer">
                            <tr>
                                <td><xsl:value-of select="@customerNumber"/></td>
                                <td><xsl:value-of select="customerName"/></td>
                                <td><xsl:value-of select="contact/contactFirstName"/> <xsl:text> </xsl:text> <xsl:value-of select="contact/contactLastName"/></td>
                                <td><xsl:value-of select="phone"/></td>
                                <td><xsl:value-of select="adress/city"/></td>
                                <td><xsl:value-of select="adress/country"/></td>
                                <td><xsl:value-of select="creditLimit"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>