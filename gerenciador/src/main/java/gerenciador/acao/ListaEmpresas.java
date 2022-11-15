package gerenciador.acao;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gerenciador.modelo.Banco;
import gerenciador.modelo.Empresa;

public class ListaEmpresas {

	public void executa(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		Banco banco = new Banco();
		List<Empresa> lista = banco.getEmpresas();
		PrintWriter out = response.getWriter();

		request.setAttribute("empresas", lista);
		RequestDispatcher rd = request.getRequestDispatcher("/listaEmpresas.jsp");
		rd.forward(request, response);
	}
}
