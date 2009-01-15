package br.blog.facade;

import java.util.ArrayList;

import br.blog.DAO.PostDAO;
import br.blog.dominio.Post;

public class PostFacade {
	/**
	 * Armazena novo post ao sistema
	 * @param novoPost - post a ser armazenado no sismtea
	 * @return boolean - true, caso o post tenha sido armazenado com sucesso ou false
	 * 					 caso tenha havido falha no armazenamento do post
	 */
	public static boolean save(Post novoPost) {
		return PostDAO.save(novoPost);
	}
	/**
	 * Retorna um post cadastrado no sistema
	 * @param string - Titulo do post a ser recuperado
	 * @return Post - Post cadastrado no sistema ou null caso nenhum item
	 * 				  satisfaça a busca
	 */
	public static Post get(String titulo) {
		return PostDAO.get(titulo);
	}
	/**
	 * Recupera todos os posts cadastrados pelo mesmo autor
	 * @param nome - nome do autor dos post
	 * @return ArrayList<Posts> - Lista com todos os posts cadastrados pelo autor informado
	 */
	public static ArrayList<Post> getPostsByName(String nome) {
		return PostDAO.getPostsByNome(nome);
	}
	/**
	 * Atualiza um post cadastrado no sistema
	 * @param novoPost - Post a ser atualizado
	 * @return boolean - true, caso o post tenha sido atualizado com sucesso ou false
	 * 					 caso tenha havido falha na atualização do post
	 */
	public static boolean update(Post novoPost) {
		return PostDAO.update(novoPost);
	}
	
}
