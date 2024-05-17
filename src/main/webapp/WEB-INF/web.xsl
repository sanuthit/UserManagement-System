<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
	
		<servlet>
			<servlet-name>Login</servlet-name>
			<servlet-class>Login.LoginServlet.java</servlet-class>
		</servlet>
		<servlet-mapping>
			<servlet-name>Login</servlet-name>
			<url-pattern>/log</url-pattern>
		</servlet-mapping>
	</xsl:template>
</xsl:stylesheet>

