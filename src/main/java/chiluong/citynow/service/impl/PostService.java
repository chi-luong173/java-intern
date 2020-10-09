package chiluong.citynow.service.impl;

import java.util.List;

import javax.inject.Inject;

import chiluong.citynow.dao.IPostDAO;
import chiluong.citynow.model.PostModel;
import chiluong.citynow.service.IPostService;

public class PostService implements IPostService{
	@Inject
	private IPostDAO postDAO;
	@Override
	public List<PostModel> findAll(){
		return postDAO.findAll();
	}
	@Override
	public List<PostModel> findByUserId(Long userId){
		return postDAO.findByUserId(userId);
	}
	@Override
	public PostModel save(PostModel postModel) {
		Long postId = postDAO.save(postModel);
		return postDAO.findOne(postId);
	}
	@Override
	public PostModel update(PostModel updatePost) {
		PostModel oldPost = postDAO.findOne(updatePost.getId());
		updatePost.setCreatedDate(oldPost.getCreatedDate());
		updatePost.setCreatedBy(oldPost.getCreatedBy());
		postDAO.update(updatePost);
		return postDAO.findOne(updatePost.getId());
		
	}
}
