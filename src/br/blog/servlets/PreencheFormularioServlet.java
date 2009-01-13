package br.blog.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.blog.dominio.Formulario;
import br.blog.exceptions.CampoObrigatorioException;

public class PreencheFormularioServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String nome = request.getParameter("nome");
		String data = request.getParameter("data");
		String titulo = request.getParameter("titulo");
		String post = request.getParameter("post");
			
		try {
			validaCampos(nome, data, titulo, post); //ValidaCampos pode lançar exception
			Formulario formulario = new Formulario(nome, data, titulo, post);
			request.setAttribute("formulario", formulario);
			
			//Aki ficará o armazenamento na ED
			
			RequestDispatcher rd = request.getRequestDispatcher("sucesso.jsp");
			rd.forward(request, response);
		}catch (CampoObrigatorioException e) {
			request.setAttribute("exception", e);
			
			RequestDispatcher rd = request.getRequestDispatcher("fracasso.jsp");
			rd.forward(request, response);
		}
	}
	
	public void validaCampos(String nome, String data, String titulo, String post)
			throws CampoObrigatorioException {
	
		if (nome == null || nome.trim().length() <= 0) {
			throw new CampoObrigatorioException("Preencha o nome corretamente...");
		}
		
		if (data == null || data.trim().length() <= 0 || data.equals("dd/mm/yyyy")) {
			throw new CampoObrigatorioException("Preencha a data corretamente...");
		}
		
		if (titulo == null || titulo.trim().length() <= 0) {
			throw new CampoObrigatorioException("Preencha o titulo corretamente...");
		}
		
		if (post == null || post.trim().length() <= 0) {
			throw new CampoObrigatorioException("Preencha o post corretamente...");
		}
		
	}
}
