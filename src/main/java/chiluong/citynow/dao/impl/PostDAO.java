package chiluong.citynow.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.jsp.tagext.TryCatchFinally;

import chiluong.citynow.dao.IPostDAO;
import chiluong.citynow.mapper.PostMapper;
import chiluong.citynow.model.PostModel;

public class PostDAO extends AbstractDAO<PostModel> implements IPostDAO{
	@Override
	public List<PostModel> findAll(){
		String sql = "SELECT * FROM post";
		return query(sql, new PostMapper());
	}
	@Override
	public List<PostModel> findByUserId(Long userId){
		String sql = "SELECT *FROM post WHERE userId = ?";
		return query(sql, new PostMapper(), userId);
	}
	@Override
	public Long save(PostModel postModel) {
		String sql = "INSERT INTO post(title,review,rate,userId) VALUES (?,?,?,?)";
		return insert(sql, postModel.getTitle(), postModel.getReview(), postModel.getRate(), postModel.getUserId());
	}
	@Override
	public PostModel findOne(Long id) {
		String sql = "SELECT * FROM post WHERE id = ?";
		List<PostModel> posts = query(sql, new PostMapper(), id);
		return posts.isEmpty() ? null : posts.get(0);
	}
	@Override
	public void update(PostModel updatePost) {
		StringBuilder sql = new StringBuilder("UPDATE post SET title = ?, review = ?,");
		sql.append("thumbnail = ?, upvoted = ?, downvoted = ?, rate = ?, userId = ?,");
		sql.append("createdDate = ?, createdBy = ? WHERE id = ? ");
		update(sql.toString(), updatePost.getTitle(), updatePost.getReview(), updatePost.getThumbnail(),
				updatePost.getUpvoted(), updatePost.getDownvoted(), updatePost.getRate(),
				updatePost.getUserId(),updatePost.getCreatedDate(), updatePost.getCreatedBy(),
				updatePost.getId());
	}
}

