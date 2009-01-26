<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.ArrayList"%>
<%@page import="br.blog.dominio.Post"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resultado da pesquisa</title>
</head>
<body>

	<%
		Post post = (Post) request.getAttribute("post");
		%>
		<center>
			<table border="1">
			<%
			if (post == null) {
				ArrayList<Post> posts = (ArrayList<Post>) request.getAttribute("posts");
				%>
				<strong style="font-size: x-large">Posts de <%= posts.get(0).getNome() %>:</strong>
				<br/><br/><br/>
				<%
				for (int x = 0; x < posts.size(); x++) {
				%>
				<tr>
					<td align="center">
						Título: <font style="font-weight: bold"><%= posts.get(x).getTitulo() %></font><br/> 
						Autor: <font style="font-weight: bold"><%= posts.get(x).getNome() %></font><br/>
						Data: <font style="font-weight: bold"><%= posts.get(x).getData() %></font>
					</td>
				</tr>
				<tr>
					<td colspan="50">
						<br/>
						<font style="font-style: italic">
							<%= posts.get(x).getMensagem().replaceAll("\r\n","<br/>") %>
						</font>
						<br/><br/>
					</td>
				</tr>
				<%
				}
			} else {
				%>
				<tr bordercolor="black">
					<td align="center">
						Post: <font style="font-weight: bold"><%= post.getTitulo() %></font><br/>
						Autor: <font style="font-weight: bold"><%= post.getNome() %></font><br/>
						Data: <font style="font-weight: bold"><%= post.getData() %></font>
					</td>
				</tr>
				<tr>
					<td colspan="50" >
						<br/>
						<font style="font-style: italic">
							<%= post.getMensagem().replaceAll("\r\n","<br/>") %>
						</font>
						<br/><br/><br/>
					</td>
				</tr>
			<%
			} 
			%>
			</table>
			
			<br/><br/>
			<a href="pesquisar.jsp" target="principal">Pesquisar novamente</a><br/>
			<a href="inicio.jsp" target="principal">Voltar ao Blog</a>
			
		</center>

</body>
</html>