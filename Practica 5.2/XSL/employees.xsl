<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <employees>
            <xsl:for-each select="DATA/ROW">
                <employee>
                    <xsl:attribute name="employeeNumber">
                        <xsl:value-of select="employeeNumber"/>
                    </xsl:attribute>
                    
                    <lastName><xsl:value-of select="lastName"/></lastName>
                    <firstName><xsl:value-of select="firstName"/></firstName>
                    <email><xsl:value-of select="email"/></email>
                    <reportsTo><xsl:value-of select="reportsTo"/></reportsTo>
                    <jobTitle><xsl:value-of select="jobTitle"/></jobTitle>
                    
                    <office>
                        <xsl:attribute name="ofCode">
                            <xsl:value-of select="ofCode"/>
                        </xsl:attribute>
                        <City><xsl:value-of select="ofCity"/></City>
                        <Phone><xsl:value-of select="ofPhone"/></Phone>
                        <AddressLine1><xsl:value-of select="ofAdd1"/></AddressLine1>
                        <AddressLine2><xsl:value-of select="ofAdd2"/></AddressLine2>
                        <State><xsl:value-of select="ofState"/></State>
                        <Country><xsl:value-of select="ofCountry"/></Country>
                        <PostalCode><xsl:value-of select="ofPostalCode"/></PostalCode>
                        <Territory><xsl:value-of select="ofTerritory"/></Territory>
                    </office>
                </employee>
            </xsl:for-each>
        </employees>
    </xsl:template>
</xsl:stylesheet>