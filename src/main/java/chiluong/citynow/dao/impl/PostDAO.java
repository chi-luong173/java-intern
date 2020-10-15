package chiluong.citynow.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.jsp.tagext.TryCatchFinally;

import org.apache.commons.lang.StringUtils;

import chiluong.citynow.dao.IPostDAO;
import chiluong.citynow.mapper.PostMapper;
import chiluong.citynow.model.PostModel;
import chiluong.citynow.paging.Pageble;

public class PostDAO extends AbstractDAO<PostModel> implements IPostDAO{
	@Override
	public List<PostModel> findAll(Pageble pageble){
		StringBuilder sql = new StringBuilder("SELECT * FROM post");
		if (pageble.getSorter() != null && StringUtils.isNotBlank(pageble.getSorter().getSortName()) && StringUtils.isNotBlank(pageble.getSorter().getSortBy())) {
			sql.append(" ORDER BY "+pageble.getSorter().getSortName()+" "+pageble.getSorter().getSortBy()+"");
		}
		if (pageble.getOffset() != null && pageble.getLimit() != null) {
			sql.append(" LIMIT "+pageble.getOffset()+", "+pageble.getLimit()+"");
		}
		return query(sql.toString(), new PostMapper());
	}
	@Override
	public List<PostModel> findByUserId(Long userId){
		String sql = "SELECT *FROM post WHERE userId = ?";
		return query(sql, new PostMapper(), userId);
	}
	@Override
	public Long save(PostModel postModel) {
		StringBuilder sql = new StringBuilder("INSERT INTO post(title,review,thumbnail, upvoted, downvoted,");
		sql.append("rate,status,userId,createdDate,createdBy) VALUES(?,?,?,?,?,?,?,?)");
		return insert(sql.toString(), postModel.getTitle(), postModel.getReview(), postModel.getThumbnail(),
				postModel.getRate(), postModel.getStatus(),postModel.getUpvoted(), postModel.getDownvoted(),
				postModel.getRate(), postModel.getUserId(), postModel.getCreatedDate(),postModel.getCreatedBy());
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
		sql.append("thumbnail = ?, upvoted = ?, downvoted = ?, rate = ?, status = ?, userId = ?,");
		sql.append("createdDate = ?, createdBy = ?, modifiedDate = ?, modifiedBy = ? WHERE id = ? ");
		update(sql.toString(), updatePost.getTitle(), updatePost.getReview(), updatePost.getThumbnail(),
				updatePost.getUpvoted(), updatePost.getDownvoted(), updatePost.getRate(), updatePost.getStatus(),
				updatePost.getUserId(),updatePost.getCreatedDate(), updatePost.getCreatedBy(),
				updatePost.getModifiedDate(), updatePost.getModifiedBy(), updatePost.getId());
	}
	@Override
	public void delete(long id) {
		String sql = "DELETE FROM post WHERE id = ?";
		update(sql, id);
	}
	@Override
	public int getTotalItem() {
		String sql = "SELECT count(*) FROM post";
		return count(sql);
	}
}

