<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">
  <xsl:variable name="vcountry" select="//country[1]"/>
   <xsl:variable name="vc" select="//country[1]/@cid"/>
   <xsl:variable name="vcp" select="//perform[@cid=$vc]/@aid"/>
  <b>Country: </b>
  <xsl:value-of select="$vcountry/name"/>
  <xsl:value-of select="$vc"/>
  in
  <i><xsl:value-of select="$vcountry/continent"/></i>
    
(Populaton <xsl:value-of select="$vcountry/@population"/> crores)
<br/>
<b>Dances : </b><br/>
<ul>
<xsl:for-each select="//art[@aid=$vcp]">
  <li><xsl:value-of select="."/></li>
</xsl:for-each>
</ul>

  </body>
</html>