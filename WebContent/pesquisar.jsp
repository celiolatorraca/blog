<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="scripts/scripts.js" type="text/javascript"></script>

<title>Pesquisar posts</title>
</head>
<body>

	<form action="pesquisa_autor.do" method="get">
		<table>
			<tr>
				<td>
					<a href="#" onclick="pesquisa_autor();"><strong>Pesquisa por autor</strong></a>
				</td>
			</tr>
			<tr id="pesquisa_autor" style="display: none">
				<td>
					<input id="autor" name="autor" type="text" size="30">
				</td>
				<td>
					<input type="submit" value="Pesquisar" onclick="return valida_pesquisa_autor();">
				</td>
			</tr>
		</table>
	</form>
	
	<form action="pesquisa_titulo.do" method="get">
		<table>
			<tr>
				<td>
					<a href="#" onclick="pesquisa_titulo();"><strong>Pesquisa por titulo</strong></a>
				</td>
			</tr>
			<tr id="pesquisa_titulo" style="display: none">
				<td>
					<input id="titulo" name="titulo" type="text" size="30">
				</td>
				<td>
					<input type="submit" value="Pesquisar" onclick="return valida_pesquisa_titulo();">
				</td>
			</tr>
		</table>
	</form>
	

</body>
</html>