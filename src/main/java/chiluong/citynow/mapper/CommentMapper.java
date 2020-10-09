package chiluong.citynow.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import chiluong.citynow.model.CommentModel;
import chiluong.citynow.model.CommentModel;

public class CommentMapper implements RowMapper<CommentModel>{
	@Override
	public CommentModel mapRow(ResultSet rs) {
		try {
			CommentModel comment = new CommentModel();
            comment.setId(rs.getLong("id"));
            comment.setContent(rs.getString("content"));
            comment.setUserId(rs.getLong("userId"));
            comment.setPostId(rs.getLong("postId"));
            
			return comment;
		} catch (SQLException e) {
			return null;
		}
	}
}
