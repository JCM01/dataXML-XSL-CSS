<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   	<xsl:template match="/">

         	<html>
         	<body style="font-family:Arial;font-size:14pt;background-color:#EEEEEE;text-align:center;">

         	<h1>Empresas que invierten en Criptomonedas: </h1>
         	<xsl:for-each select="inversionistas/empresas/compañia">
                	<xsl:value-of select="nombre"/>
                	-->
                	<xsl:value-of select="telefono"/>
                	-->
                	<xsl:value-of select="pais"/>
                	-->
                	<xsl:value-of select="numeroOrganizacion"/>
                	<br/>
         	</xsl:for-each>
         	<h1>Empresarios que invierten en Criptomonedas: </h1>
         	<xsl:for-each select="inversionistas/personas/empresario">
                	<xsl:value-of select="nombre"/>
                	-->
                	<xsl:value-of select="inversion"/>
                	<br/>
         	</xsl:for-each>
         	</body>
         	</html>
   	</xsl:template>
</xsl:stylesheet>

