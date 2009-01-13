package br.blog.dominio;

public class Formulario {

	private String nome;
	private String data;
	private String titulo;
	private String post;
	
	public Formulario(String nome, String data, String titulo, String post) {
		this.nome = nome;
		this.data = data;
		this.titulo = titulo;
		this.post = post;
	}

	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}
	
}
