package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DAO;
import model.JavaBeans;


@WebServlet(urlPatterns = {"/Controller","/main","/insert","/select","/update","/delete"})
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
      DAO dao = new DAO(); 
      JavaBeans promo = new JavaBeans();
   
    public Controller() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		//System.out.println(action);
		if(action.equals("/main")) {
			promocao(request,response);
		}else if(action.equals("/insert")){
			novaPromocao(request,response);
		}else if(action.equals("/select")){
			alterarPromocao(request,response);
		}else if(action.equals("/update")){
			editarPromocao(request,response);
		}else if(action.equals("/delete")){
			removePromocao(request,response);
		}else {
			response.sendRedirect("index.html");
		}
	}
	
	//listar viagem
	protected void promocao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<JavaBeans> lista =dao.listarPromocoes();
		
		request.setAttribute("promocao", lista);
		RequestDispatcher rd = request.getRequestDispatcher("promocao.jsp");
		rd.forward(request, response);
	}
	
	//nova promocao
	protected void novaPromocao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		promo.setNome(request.getParameter("nome"));
		promo.setVlanti(request.getParameter("valAt"));
		promo.setVlatu(request.getParameter("valAnt"));
		
		dao.inserirPromocao(promo);
		
		response.sendRedirect("main");
	}
	
	protected void alterarPromocao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id =request.getParameter("id");
		
		promo.setId(id);
		
		dao.selecionarPromocao(promo);
		
		request.setAttribute("nome", promo.getNome());
		request.setAttribute("valAt", promo.getVlatu());
		request.setAttribute("valAnt", promo.getVlanti());
		
		RequestDispatcher rd = request.getRequestDispatcher("alterar.jsp");
		rd.forward(request, response);
	}
	
	
	protected void editarPromocao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		promo.setNome(request.getParameter("nome"));
		promo.setVlatu(request.getParameter("valAt"));
		promo.setVlanti(request.getParameter("valAnt"));
		
		dao.alterarPromocao(promo);
		
		response.sendRedirect("main");
	}
	
	
	protected void removePromocao(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		promo.setId(id);
		dao.deletarPromocao(promo);
		response.sendRedirect("main");
	}
	
}
