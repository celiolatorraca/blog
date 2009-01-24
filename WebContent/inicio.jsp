<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="br.blog.dominio.Post"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.blog.facade.PostFacade"%><html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Início</title>
</head>
<body>
	
	<%
		ArrayList<Post> posts = PostFacade.getAllPosts();
	%>
	
	<center>
		<table>
		  <% if (!posts.isEmpty()) { %>
		  		<tr>
		  			<td>
		  				<strong style="font-size: x-large">Últimos posts:</strong>
		  			</td>
		  		</tr>
		  		<tr>
		  			<td>
		  				<br/><br/><br/>
		  			</td>
		  		</tr>
			 <% int cont = 0;
			 	for (int x = posts.size()-1; (x >= 0) && (cont != 3); x--) {
			 		cont++;
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
		    } else { %>
		  		<tr>
		  			<td>
		  				<font color="red" size="large">Esse é um blog feito para teste em Servlets e HTTP.</font>
		  			</td>
		  		</tr>
		  <% } %>
		</table>
	</center>

</body>
</html>