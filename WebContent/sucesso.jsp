<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="br.blog.dominio.Formulario"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sucesso de cadastro</title>
</head>
<body>

	<%
		Formulario formulario = null;
		if (request.getAttribute("formulario") != null) {
			formulario = (Formulario) request.getAttribute("formulario");
			%>
			<center>
				<br/><br/>
				<strong style="font-size: x-large">Post de <%= formulario.getNome() %> cadastrado no dia <%= formulario.getData() %></strong>
				<br/><br/><br/><br/>
				<a href="blog.jsp">Voltar para o blog</a>
			</center>
			<%
		}
	%>

</body>
</html>