<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
         <link rel="stylesheet" type="text/css" href="styles.css" />
      </head>
      <body>
        <div class="header">
          <img class="logo" id="logo" src="./logo.png" />
        </div>
        <h1 style="text-align:center;"><xsl:value-of select="document/heading"/></h1>
        <div class="faculty">
          <xsl:for-each select="document/faculty/person">
            <div class="person">
              <a target="_blank">
                <xsl:attribute name="href"><xsl:value-of select="link"/></xsl:attribute>
                <p class="name"><xsl:if test="name/title != ''"> <xsl:value-of select="name/title"/>&#160;</xsl:if><xsl:value-of select="name/first"/>&#160;<xsl:value-of select="name/last"/></p>
                <p><xsl:value-of select="title"/></p>
                <p><xsl:value-of select="contact/phone"/> | <xsl:value-of select="contact/office"/> | <xsl:value-of select="contact/phone"/></p>
              </a>
            </div>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="person">
    <p><xsl:value-of select="document/person/title"/></p>
  </xsl:template>

</xsl:stylesheet>
