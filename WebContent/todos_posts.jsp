<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="br.blog.facade.PostFacade"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.blog.dominio.Post"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Todos os posts</title>
</head>
<body>

	<% ArrayList<Post> posts = PostFacade.getAllPosts(); %>

	<center>
		<table border="1">
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
				<td colspan="70">
					<br/>
					<font style="font-style: italic">
						<%= posts.get(x).getMensagem().replaceAll("\r\n","<br/>") %>
					</font>
					<br/><br/>
				</td>
			</tr>
			
		<%}%>
		</table>
	</center>

</body>
</html>