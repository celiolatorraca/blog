package br.blog.DAO;

import java.util.ArrayList;
import java.util.HashMap;

import br.blog.dominio.Post;
import br.blog.persistence.DataBase;

public class PostDAO {
	private static PostDAO postDAO;
	private static HashMap<Integer, Post> posts;
	
	/**
	 * Adiciona post na base de dados
	 * @param novoPost - post a ser armazenado na base de dados
	 * @return boolean - true caso o post seja armazenado com sucesso ou false, caso
	 * 					 falhe a tentativa de armazenamento
	 */
	public static boolean save(Post novoPost) {
		return DataBase.addPost(novoPost);
	}
	/**
	 * Recupera da base de dados um post armazendao
	 * @param titulo - titulo do post a ser recuperado
	 * @return Post - Post a ser recuperado ou null, caso nenhum post satisfa�a a busca
	 */
	public static Post get(String titulo) {
		return DataBase.getPostByTitle(titulo);
	}
	/**
	 * Recupera todos os posts, cadastrados pelo mesmo autor
	 * @param nome - String com nome do autor do(s) post(s)
	 * @return ArrauList<Post> - Todos os posts cadastrados para o autor
	 */
	public static ArrayList<Post> getPostsByNome(String nome) {
		return DataBase.getPostByName(nome);
	}
	/**
	 * Remove um post armazenado na base de dados. 
	 * @param novoPost - Post a ser removido da base de dados
	 * @return boolean - retorna true caso o post tenha sido removido com sucesso ou
	 * 					 false caso a remo��o seja mal-sucedida
	 */
	public static boolean remove(Post novoPost) {
		return DataBase.removPost(novoPost);
	}
	/**
	 * Atualiza um Post armazenado no sistema
	 * @param novoPost - post a ser atualizado
	 * @return boolean - retorna true caso o post tenha sido atualizado com sucesso ou
	 * 					 false caso a atualiza��o seja mal-sucedida  
	 */
	public static boolean update(Post novoPost) {
		return DataBase.atualizaPost(novoPost);
	}
	public static ArrayList<Post> getAllPosts() {
		return DataBase.getAllPosts();
	}

}
