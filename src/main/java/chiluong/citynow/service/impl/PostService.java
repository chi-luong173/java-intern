package chiluong.citynow.service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import chiluong.citynow.dao.IPostDAO;
import chiluong.citynow.model.PostModel;
import chiluong.citynow.paging.Pageble;
import chiluong.citynow.service.IPostService;

public class PostService implements IPostService{
	@Inject
	private IPostDAO postDAO;
	@Override
	public List<PostModel> findAll(Pageble pageble){
		return postDAO.findAll(pageble);
	}
	@Override
	public List<PostModel> findByUserId(Long userId){
		return postDAO.findByUserId(userId);
	}
	@Override
	public PostModel save(PostModel postModel) {
		postModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		postModel.setCreatedBy("");
		Long postId = postDAO.save(postModel);
		return postDAO.findOne(postId);
	}
	@Override
	public PostModel update(PostModel updatePost) {
		PostModel oldPost = postDAO.findOne(updatePost.getId());
		updatePost.setCreatedDate(oldPost.getCreatedDate());
		updatePost.setCreatedBy(oldPost.getCreatedBy());
		updatePost.setModifiedDate(new Timestamp(System.currentTimeMillis()));
		updatePost.setModifiedBy("");
		postDAO.update(updatePost);
		return postDAO.findOne(updatePost.getId());
		
	}
	@Override
	public void delete(long[] ids) {
		for (long id:ids) {
			//delete comment
			// delete post
			postDAO.delete(id);
		}
	}
	@Override
	public int getTotalItem() {
		return postDAO.getTotalItem();
	}
}
