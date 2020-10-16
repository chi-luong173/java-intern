package chiluong.citynow.controller.web;
import chiluong.citynow.utils.FormUtil;
import chiluong.citynow.utils.SessionUtil;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chiluong.citynow.constant.SystemConstant;
import chiluong.citynow.model.PostModel;
import chiluong.citynow.model.UserModel;
import chiluong.citynow.service.IPostService;
import chiluong.citynow.service.IUserService;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

@WebServlet(urlPatterns = {"/home","/login","/sign-up","/logout"})
public class HomeController extends HttpServlet{

	@Inject
	private IUserService userService;
	
	private static final long serialVersionUID = 1L;
	
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if (action!= null && action.equals("login")) {
			String message = request.getParameter("message");
			String alert = request.getParameter("alert");
			if (message != null && alert != null) {
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("alert", resourceBundle.getString(alert));
			}
			RequestDispatcher rqDispatcher = request.getRequestDispatcher("/views/login.jsp");
			rqDispatcher.forward(request, response);
		}else if (action != null && action.equals("logout")) {
			SessionUtil.getInstance().removeValue(request, "USERMODEL");
			response.sendRedirect(request.getContextPath()+"/home");
		}else {
			if (request.getRequestURI().equals(request.getContextPath()+"/login")){
				RequestDispatcher rqDispatcher = request.getRequestDispatcher("/views/login.jsp");
				rqDispatcher.forward(request, response);
			}else {
				RequestDispatcher rqDispatcher = request.getRequestDispatcher("/views/web/home.jsp");
				rqDispatcher.forward(request, response);
			}
			
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		if (action!= null && action.equals("login")) {
			UserModel model = FormUtil.toModel(UserModel.class, request);
			model = userService.findByUserNameAndPassWordAndStatus(model.getUserName(), model.getPassword(), 1);
			if (model != null) {
				SessionUtil.getInstance().putValue(request, "USERMODEL", model);
				if(model.getRole().equals(SystemConstant.USER)) {
					response.sendRedirect(request.getContextPath()+"/home");
					
				}else if (model.getRole().equals(SystemConstant.ADMIN)) {
					response.sendRedirect(request.getContextPath()+"/admin/home");
				}
			}else {
				response.sendRedirect(request.getContextPath()+"/login?action=login&message=username_password_invalid&alert=danger");
			}
		}
	}
}
