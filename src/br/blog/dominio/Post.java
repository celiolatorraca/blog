package br.blog.dominio;

import com.sun.jmx.snmp.Timestamp;

public class Post {
	private String nome;
	private String titulo;
	private String mensagem;
	private String data;
	
	public Post(){}
	public Post(String nome, String titulo, String mensagem, String data){
		this.nome = nome;
		this.titulo = titulo;
		this.mensagem = mensagem;
		this.data = data;
	}
	
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getMensagem() {
		return mensagem;
	}
	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}
	
	@Override
	public boolean equals(Object obj) {
		Post p = (Post) obj;
		return (this.getTitulo() == p.getTitulo());
	}	

}
