package chiluong.citynow.mapper;
import java.sql.ResultSet;
import java.sql.SQLException;
import chiluong.citynow.model.PostModel;
public class PostMapper implements RowMapper<PostModel> {
	@Override
	public PostModel mapRow(ResultSet rs) {
		try {
			PostModel post = new PostModel();
            post.setId(rs.getLong("id"));
            post.setReview(rs.getString("review"));
            post.setThumbnail(rs.getString("thumbnail"));
            post.setUpvoted(rs.getInt("upvoted"));
            post.setDownvoted(rs.getInt("downvoted"));
            post.setRate(rs.getInt("rate"));
            post.setUserId(rs.getLong("userId"));
			return post;
		} catch (SQLException e) {
			return null;
		}
	}
}