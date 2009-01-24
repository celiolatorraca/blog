package br.blog.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Modificar isso dps!!
import com.sun.jmx.snmp.*;

import br.blog.dominio.Post;
import br.blog.exceptions.CampoObrigatorioException;
import br.blog.facade.PostFacade;

public class PreencheFormularioServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nome = request.getParameter("nome");
		String data = request.getParameter("data");
		String titulo = request.getParameter("titulo");
		String mensagem = request.getParameter("mensagem");

		try {
			validaCampos(nome, data, titulo, mensagem); //ValidaCampos pode lan�ar exception
			Post post = new Post(nome, titulo, mensagem, data);
			request.setAttribute("formulario", post);

			//Aki ficar� o armazenamento na ED
			PostFacade.save(post);

			RequestDispatcher rd = request.getRequestDispatcher("sucesso.jsp");
			rd.forward(request, response);
		}catch (CampoObrigatorioException e) {
			request.setAttribute("exception", e);

			RequestDispatcher rd = request.getRequestDispatcher("fracasso.jsp");
			rd.forward(request, response);
		}
	}

	public void validaCampos(String nome, String data, String titulo, String mensagem)
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

		if (mensagem == null || mensagem.trim().length() <= 0) {
			throw new CampoObrigatorioException("Preencha o post corretamente...");
		}

	}
}
