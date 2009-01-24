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
import br.blog.exceptions.TituloInexistenteException;
import br.blog.facade.PostFacade;

public class PesquisaTituloServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Post post = PostFacade.get(request.getParameter("titulo"));
		
		try {
			VerificaExistencia(post);
			request.setAttribute("post", post);
			
			RequestDispatcher rd = request.getRequestDispatcher("resultado_pesquisa.jsp");
			rd.forward(request, response);
		} catch(TituloInexistenteException e) {
			request.setAttribute("exception", e);
			
			RequestDispatcher rd = request.getRequestDispatcher("fracasso.jsp");
			rd.forward(request, response);
		}
	}
	
	public void VerificaExistencia(Post post) throws TituloInexistenteException {
		if (post == null) {
			throw new TituloInexistenteException("Nenhum post encontrado com esse título.");
		}
	}
	
}
