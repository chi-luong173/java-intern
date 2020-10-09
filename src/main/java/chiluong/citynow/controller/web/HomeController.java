package chiluong.citynow.controller.web;
import chiluong.citynow.utils.FormUtil;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chiluong.citynow.model.PostModel;
import chiluong.citynow.model.UserModel;
import chiluong.citynow.service.IPostService;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

@WebServlet(urlPatterns = {"/trang-chu","/dang-nhap"})
public class HomeController extends HttpServlet{
	@Inject
	private IPostService postService;
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if (action!= null && action.equals("login")) {
			RequestDispatcher rqDispatcher = request.getRequestDispatcher("/views/login.jsp");
			rqDispatcher.forward(request, response);
		}else if (action != null && action.equals("logout")) {
			
		}else {
			
			RequestDispatcher rqDispatcher = request.getRequestDispatcher("/views/web/home.jsp");
			rqDispatcher.forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if (action!= null && action.equals("login")) {
	
		}else if (action != null && action.equals("logout")) {
			
		}else {
			RequestDispatcher rqDispatcher = request.getRequestDispatcher("/views/web/home.jsp");
			rqDispatcher.forward(request, response);
		}
	}
}
