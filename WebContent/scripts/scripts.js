function muda_estado() {
	var d = document.getElementById("submenu");
	
	if (d.style.display == "none") {
		d.style.display = "block";
	} else {
		d.style.display = "none";
	}
}

function limpa_data() {
	var d = document.getElementById("data");
	
	d.value = "";
}

function preenche_data() {
	var d = document.getElementById("data");
	
	if (d.value == "") {
		d.value = "dd/mm/yyyy";
	}
}

function completa_data() {
	var d = document.getElementById("data");
	
	if (d.value.length == 2 || d.value.length == 5) {
		d.value = d.value + "/";
	}
}

function valida_campos() {
	var nome = document.getElementById("nome");
	var data = document.getElementById("data");
	var titulo = document.getElementById("titulo");
	var post = document.getElementById("mensagem");

	if (nome.value == "") {
		alert("Preencha o nome corretamente.");
		return false;
	}
	if (data.value == "" || data.value == "dd/mm/yyyy") {
		alert("Preencha a data corretamente.");
		return false;
	}
	if (titulo.value == "") {
		alert("Preencha o titulo corretamente.");
		return false;
	}
	if (post.value == "") {
		alert("Preencha o post corretamente.");
		return false;
	}
	return true;
}

function pesquisa_autor() {
	var d = document.getElementById("pesquisa_autor");
	
	if (d.style.display == "none") {
		d.style.display = "block";
	} else {
		d.style.display = "none";
	}
}

function valida_pesquisa_autor() {
	var autor = document.getElementById("autor");
		
	if (autor.value == "") {
		alert("Preencha o campo corretamente.");
		return false;
	}
	return true;
}

function pesquisa_titulo() {
	var d = document.getElementById("pesquisa_titulo");
	
	if (d.style.display == "none") {
		d.style.display = "block";
	} else {
		d.style.display = "none";
	}
}

function valida_pesquisa_titulo() {
	var titulo = document.getElementById("titulo");
	
	if (titulo.value == "") {
		alert("Preencha o campo corretamente");
		return false;
	}
	return true;
}

function mostrar_detalhes() {
	var d = document.getElementById("detalhes");
	
	d.style.display = "block";
}