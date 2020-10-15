package chiluong.citynow.controller.admin;
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

@WebServlet(urlPatterns = {"/admin/home"})
public class HomeController extends HttpServlet{

	@Inject 
	private IPostService postService;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if (action!= null && action.equals("login")) {
			RequestDispatcher rqDispatcher = request.getRequestDispatcher("/views/login.jsp");
			rqDispatcher.forward(request, response);
		}else if (action != null && action.equals("logout")) {
			
		}else {
			request.setAttribute("postCnt", postService.getTotalItem());
			RequestDispatcher rqDispatcher = request.getRequestDispatcher("/views/admin/home.jsp");
			rqDispatcher.forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}
