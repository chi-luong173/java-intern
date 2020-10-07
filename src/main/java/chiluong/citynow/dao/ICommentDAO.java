package chiluong.citynow.dao;

import java.util.List;

import chiluong.citynow.model.CommentModel;

public interface ICommentDAO {
	List<CommentModel> findAll();
//	List<CommentModel> findByPostId(Long postId);
//	List<CommentModel> findByUserId(Long userId);
	
}
