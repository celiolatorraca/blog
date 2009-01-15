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
		ArrayList<Post> posts = (ArrayList<Post>) request.getAttribute("posts");
		%>
		<center>
			<table>
			<%
			if (!posts.isEmpty()) {
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
						<font style="font-weight: bold"><%= posts.get(x).getTitulo() %></font> postado por 
						<font style="font-weight: bold"><%= posts.get(x).getNome() %></font> no dia 
						<font style="font-weight: bold"><%= posts.get(x).getData() %>.</font>
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
		}
	%>
			</table>
		</center>

</body>
</html>