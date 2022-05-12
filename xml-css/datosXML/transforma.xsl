<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
<html>
			<head>
	<link rel="stylesheet" href="cliente.css" />
</head>

		<body>
		<h1>Datos de cliente</h1>
		<table border="1">
			<tr>
				<th>Nombre</th>
				<th>Telefono</th>
				<th>Email</th>
				<th>Empresa</th>
				<th>Pin</th>
			</tr>
			<xsl:for-each select="tabla/cliente">
				<tr>
					<td><xsl:value-of select="nombre"/></td>
					<td><xsl:value-of select="telefono"/></td>
					<td><xsl:value-of select="correo"/></td>
					<td><xsl:value-of select="empresa"/></td>
					<td><xsl:value-of select="pin"/></td>
				</tr>
			</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
