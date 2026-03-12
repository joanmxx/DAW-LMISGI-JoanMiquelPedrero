<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Llista d'empleats</title>
                <style>
                    body { font-family: Arial, sans-serif; margin: 20px; }
                    /* Estils aplicats per complir els requisits */
                    .employee-title { color: blue; font-size: 24px; }
                    .employee-name { font-size: 18px; }
                    .office-data { color: red; font-style: italic; }
                    .main-list { list-style-type: none; padding-left: 0; }
                    .employee-box { margin-bottom: 30px; border-bottom: 1px solid #ccc; padding-bottom: 15px; }
                </style>
            </head>
            <body>
                <h2>Llista d'empleats</h2>
                <ul class="main-list">
                    <xsl:for-each select="employees/employee">
                        <xsl:sort select="firstName" order="ascending"/>
                        
                        <li class="employee-box">
                            <h3 class="employee-title">Empleat amb id <xsl:value-of select="@employeeNumber"/></h3>
                            <ul>
                                <li class="employee-name"><b>Nom:</b> <xsl:value-of select="firstName"/> <xsl:text> </xsl:text> <xsl:value-of select="lastName"/></li>
                                <li><b>Correu:</b> <xsl:value-of select="email"/></li>
                                <li><b>Id del seu superior:</b> <xsl:value-of select="reportsTo"/></li>
                                <li><b>Posició:</b> <xsl:value-of select="jobTitle"/></li>
                                <li><b>Oficina:</b>
                                    <ul class="office-data">
                                        <li><b>Ciutat:</b> <xsl:value-of select="office/City"/></li>
                                        <li><b>Telèfon:</b> <xsl:value-of select="office/Phone"/></li>
                                        <li><b>Adreça:</b> <xsl:value-of select="office/AddressLine1"/>, <xsl:value-of select="office/AddressLine2"/></li>
                                        <li><b>Estat:</b> <xsl:value-of select="office/State"/></li>
                                        <li><b>País:</b> <xsl:value-of select="office/Country"/></li>
                                        <li><b>Codi Postal:</b> <xsl:value-of select="office/PostalCode"/></li>
                                        <li><b>Territori:</b> <xsl:value-of select="office/Territory"/></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>