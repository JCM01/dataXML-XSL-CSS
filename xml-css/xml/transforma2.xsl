<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   	<xsl:template match="/">
         	<html>
         	<body>
         	<h1>Ejemplo XPath: Seleccionamos Real Madrid</h1>
         	<xsl:for-each select="futbolistas/realmadrid/jugador">
                	<xsl:value-of select="nombre"/>
                	-->
                	<xsl:value-of select="comentario"/>
                	<br/>
         	</xsl:for-each>
         	<h1>Ejemplo XPath: Seleccionamos Barsa</h1>
         	<xsl:for-each select="futbolistas/barsa/jugador">
                	<xsl:value-of select="nombre"/>
                	-->
                	<xsl:value-of select="comentario"/>
                	<br/>
         	</xsl:for-each>
         	</body>
         	</html>
   	</xsl:template>
</xsl:stylesheet>

