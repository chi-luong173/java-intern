package chiluong.citynow.controller.admin;
import chiluong.citynow.utils.FormUtil;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chiluong.citynow.constant.SystemConstant;
import chiluong.citynow.model.PostModel;
import chiluong.citynow.model.UserModel;
import chiluong.citynow.paging.PageRequest;
import chiluong.citynow.paging.Pageble;
import chiluong.citynow.service.IPostService;
import chiluong.citynow.sort.Sorter;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

@WebServlet(urlPatterns = {"/admin/post-management"})
public class PostController extends HttpServlet{

	@Inject 
	private IPostService postService;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PostModel model = FormUtil.toModel(PostModel.class, request);
		Pageble pageble = new PageRequest(model.getPage(), model.getMaxPageItem(), 
				new Sorter(model.getSortName(), model.getSortBy()));
		model.setListResult(postService.findAll(pageble));
		model.setTotalItem(postService.getTotalItem());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getMaxPageItem()));
		request.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rqDispatcher = request.getRequestDispatcher("/views/admin/post-management.jsp");
		rqDispatcher.forward(request, response);
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
}
