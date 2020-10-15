package chiluong.citynow.controller.admin.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import chiluong.citynow.model.PostModel;
import chiluong.citynow.service.IPostService;
import chiluong.citynow.utils.FormUtil;
import chiluong.citynow.utils.HttpUtil;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;


@WebServlet(urlPatterns = {"/api-admin-post"})
public class PostAPI extends HttpServlet {
	@Inject
	private IPostService postService;
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse reponse) 
		
		throws ServletException,IOException{
			ObjectMapper objectMapper = new ObjectMapper();
			request.setCharacterEncoding("UTF-8");
			reponse.setContentType("application/json");
			PostModel postModel = HttpUtil.of(request.getReader()).toModel(PostModel.class);
			postModel = postService.save(postModel);
			objectMapper.writeValue(reponse.getOutputStream(), postModel);
			System.out.println(postModel);
		}
	protected void doPut(HttpServletRequest request, HttpServletResponse reponse) 
		throws ServletException,IOException{
			ObjectMapper objectMapper = new ObjectMapper();
			request.setCharacterEncoding("UTF-8");
			reponse.setContentType("application/json");
			PostModel updatePost = HttpUtil.of(request.getReader()).toModel(PostModel.class);
			updatePost = postService.update(updatePost);
			objectMapper.writeValue(reponse.getOutputStream(), updatePost);
				
		}
	protected void doDelete(HttpServletRequest request, HttpServletResponse reponse) 
		throws ServletException,IOException{
			ObjectMapper objectMapper = new ObjectMapper();
			request.setCharacterEncoding("UTF-8");
			reponse.setContentType("application/json");
			PostModel deletePost = HttpUtil.of(request.getReader()).toModel(PostModel.class);
			postService.delete(deletePost.getIds());
			objectMapper.writeValue(reponse.getOutputStream(),"{}");
		}
}