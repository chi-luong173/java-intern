package chiluong.citynow.controller.web;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chiluong.citynow.model.UserModel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

@WebServlet(urlPatterns = {"/trang-chu"})
public class HomeController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserModel userModel = new UserModel();
		RequestDispatcher rqDispatcher = request.getRequestDispatcher("/views/web/home.jsp");
		rqDispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.print("DEBUG 9");
		RequestDispatcher rqDispatcher = request.getRequestDispatcher("/views/web/home.jsp");
		rqDispatcher.forward(request, response);
	}
}
