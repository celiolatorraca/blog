<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="br.blog.dominio.Post"%>
<%@page import="br.blog.facade.PostFacade"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sucesso de cadastro</title>
</head>
<body>

	<%
		Post post = null;
		if (request.getAttribute("formulario") != null) {
			post = (Post) request.getAttribute("formulario");
			%>
			<center>
				<br/><br/>
				<strong style="font-size: x-large">Post de <%= post.getNome() %> cadastrado no dia <%= post.getData() %></strong>
				<br/><br/><br/><br/>
				<a href="inicio.jsp" target="principal">Voltar ao blog</a>
			</center>
			<%
		}
	%>

</body>
</html>