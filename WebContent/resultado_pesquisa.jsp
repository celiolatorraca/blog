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
			<table>
			<%
			if (post == null) {
				ArrayList<Post> posts = (ArrayList<Post>) request.getAttribute("posts");
				%>
				<tr>
					<td style="font-size: x-large" align="center">
						<strong>Posts de <%= posts.get(0).getNome() %>:</strong>
					</td>
				</tr>
				<tr>
					<td>
						<br/>
					</td>
				</tr>
				<%
				for (int x = 0; x < posts.size(); x++) {
				%>
				<tr>
					<td>
						Título: <font style="font-weight: bold"><%= posts.get(x).getTitulo() %></font><br/> 
						Autor: <font style="font-weight: bold"><%= posts.get(x).getNome() %></font><br/>
						Data: <font style="font-weight: bold"><%= posts.get(x).getData() %></font>
					</td>
				</tr>
				<tr>
					<td colspan="50">
						<font style="font-style: italic">
							<%= posts.get(x).getMensagem() %>
						</font>
					</td>
				</tr>
				<tr>
					<td>
						<br/><br/><br/>
					</td>
				</tr>
				<%
				}
			} else {
				%>
				<tr>
					<td>
						Post: <font style="font-weight: bold"><%= post.getTitulo() %></font><br/>
						Autor: <font style="font-weight: bold"><%= post.getNome() %></font><br/>
						Data: <font style="font-weight: bold"><%= post.getData() %></font>
					</td>
				</tr>
				<tr>
					<td colspan="50">
						<font style="font-style: italic">
							<%= post.getMensagem() %>
						</font>
					</td>
				</tr>
			<%
			}
			%>
				<tr>
					<td align="center">
						<a href="pesquisar.jsp" target="principal">Pesquisar novamente</a>
				<tr>
					<td align="center">
						<a href="inicio.jsp" target="principal">Voltar ao Blog</a>
					</td>
				</tr>
			</table>
		</center>

</body>
</html>