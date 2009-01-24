package br.blog.persistence;

import java.util.ArrayList;

import br.blog.dominio.Post;

public class DataBase extends ArrayList<Post> {
	private static DataBase db;


	public static DataBase getInstance(){
		if(db == null){
			db = new DataBase();
		}
		return db;
	}
	/**
	 * Armazena post n�o existente. Retorna false caso ja tenha sido cadastrado
	 * post com titulo semelhante
	 * @param novoPost - Post a ser armazenado
	 * @return boolean - retorna false caso a tentativa de armazenar seja mal-sucedida
	 * @author victor.batista
	 */
	public static boolean addPost(Post novoPost){
		DataBase db = getInstance();
		for(Post p : db){
			if(novoPost.getTitulo() != null){
				if(novoPost.getTitulo().equals(p.getTitulo())){
					return false;
				}
			}
		}
		return getInstance().add(novoPost);
	}
	/**
	 * Recupera um post armazenado, atrav�s de seu index
	 * @param index - index do post a ser recuperado 
	 * @return Post que ocupa o index passado, ou null caso o index passo seja inv�lido
	 */
	public static Post getPostByIndex(int index){
		if(index >= getInstance().size() || getInstance().isEmpty()){
			return null;
		}else{
			return getInstance().get(index);
		}
	}
	/**
	 * Recupera um post armazernado, atrav�s de um objeto post
	 * @param novoPost - Post a ser recuperado
	 * @return Post - Post armazenado na Base de Dados
	 */
	public static Post getPostByTitle(String titulo) {
		if(getInstance().isEmpty()){
			return null;
		}else{
			for(Post p : getInstance()){
				if(p.getTitulo().equals(titulo))
					return p;
			}
		}
		
		return null;
	}
	
	/**
	 * Retorna um ArrayList com posts do nome informado, ou ArrayList vazio, caso n�o tenha 
	 * nenhum post armazenado
	 * @param nome - String com nome do autor do post
	 * @return ArrayList - ArrayList contendo os post do autor
	 */
	public static ArrayList<Post> getPostByName(String nome) {
		ArrayList<Post> posts = new ArrayList<Post>();
		for(Post p:getInstance()){
			if(p.getNome().equals(nome)){
				posts.add(p);
			}			
		}
		return posts;
	}
	
	/**
	 * Remove um post passado da base de dados
	 * @param post - Post a ser removido
	 * @return boolean - retorna verdadeiro caso o post tenha sido removido com sucesso ou falso, em caso
	 * 					 de falha
	 */
	public static boolean removPost(Post post) {
		return getInstance().remove(post);
	}
	/**
	 * Atualiza os dados de um Post armazenado
	 * @param novoPost - Post com dados atualizados
	 * @return boolean - true, caso os dados tenham diso atualizado com sucesso ou 
	 * 						   false, caso a atualiza��o tenha sido mal-sucedida
	 */
	public static boolean atualizaPost(Post novoPost) {
		for(Post p : getInstance()){
			if(p.getTitulo().equals(novoPost.getTitulo())){
				p.setNome(novoPost.getNome());
				p.setMensagem(novoPost.getMensagem());
				p.setData(novoPost.getData());
				return true;
			}
		}
		return false;
	}
	
	public static ArrayList<Post> getAllPosts() {
		ArrayList<Post> posts = new ArrayList<Post>();
		for(Post p:getInstance()){
			posts.add(p);
		}
		return posts;		
	}
	
}
