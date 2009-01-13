<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.Stack"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="scripts/scripts.js" type="text/javascript"></script>

<title>Erro de cadastro</title>
</head>
<body>

	<div align="center">
		<%
			Exception e = (Exception) request.getAttribute("exception");
		%>
		<br/><br/>
		<font color="red" size="5">
			<%= e.getMessage() %>
		</font>
		<br/><br/><br/><br/><br/>
		<a href="javascript: mostrar_detalhes();">detalhes tecnicos</a>
		<br/>
		<a href="javascript: history.back(1);">Voltar</a>
		
		<div id="detalhes" style="display: none">
			<br/>
			<strong>Detalhes:</strong>
			<br/>
			<%
				StackTraceElement[] array = e.getStackTrace();
				for (int i=0; i < array.length; i++) {
					%><%= array[i] %><br/><%
				}
			%>
		</div>
	</div>

</body>
</html>