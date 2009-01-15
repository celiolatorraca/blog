<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="scripts/scripts.js" type="text/javascript"></script>

<title>Novo post</title>
</head>
<body>

	<form action="novo_post.do" method="post">
		<table class = "post" width="10px">
			<tr>
				<td align="center" colspan="2">
					<label style="font-size: x-large">Formulário</label>
				</td>
			</tr>
			<tr>
				<td>
					<label><strong>Nome:</strong></label>
				</td>
				<td>
					<input id = "nome" name = "nome" type="text" size="40">
				</td>
			</tr>
			<tr>
				<td>
					<label><strong>Data:</strong></label>
				</td>
				<td>
					<input id = "data" name = "data" type="text" size="10" maxlength="10" value = "dd/mm/yyyy"
					   onclick="limpa_data();" onblur="preenche_data();" onkeypress="completa_data();"><br/>
				</td>
			</tr>
			<tr>
				<td>
					<label><strong>Título:</strong></label>
				</td>
				<td>
					<input id = "titulo", name = "titulo" type = "text" size = "20">
				</td>
			</tr>
			<tr>
				<td>
					<label><strong>Post:</strong></label>
				</td>
				<td>
					<textarea id = "mensagem" name = "mensagem" rows="10" cols="50"></textarea>
				</td>
			</tr>
			<tr>
				<td align="right" colspan="2">
					<input type="submit" value="Enviar" onclick="return valida_campos();">
				</td>
			</tr>
		</table>
	</form>

</body>
</html>