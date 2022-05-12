<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
<html>
			<head>
	<link rel="stylesheet" href="estilos.css" />
</head>

		<body>
		<h1>El real madrid</h1>
		<table border="1">
			<tr>
				<th>Nombre</th>
				<th>Observaciones</th>
				<th>Edad</th>
				<th>País</th>
			</tr>
			<xsl:for-each select="futbolistas/jugador">
				<tr>
					<td><xsl:value-of select="nombre"/></td>
					<td><xsl:value-of select="comentario"/></td>
					<td><xsl:value-of select="edad"/></td>
					<td><xsl:value-of select="pais"/></td>
				</tr>
			</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
