package br.blog.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.blog.dominio.Post;
import br.blog.exceptions.NomeInexistenteException;
import br.blog.facade.PostFacade;

public class PesquisaAutorServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ArrayList<Post> posts = PostFacade.getPostsByName(request.getParameter("nome"));
		
		try {
			verificaExistencia(posts);
			request.setAttribute("posts", posts);
			
			RequestDispatcher rd = request.getRequestDispatcher("resultado_pesquisa.jsp");
			rd.forward(request, response);
		} catch(NomeInexistenteException e) {
			request.setAttribute("exception", e);
			
			RequestDispatcher rd = request.getRequestDispatcher("fracasso.jsp");
			rd.forward(request, response);
		}
	}
	
	public void verificaExistencia(ArrayList<Post> posts) throws NomeInexistenteException {
		if (posts == null) {
			throw new NomeInexistenteException("Nenhum post encontrado com esse autor.");
		}
	}
}
