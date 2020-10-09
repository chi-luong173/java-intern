package chiluong.citynow.service;

import java.util.List;

import chiluong.citynow.model.PostModel;

public interface IPostService {
	List<PostModel> findAll();
	List<PostModel> findByUserId(Long userId);
	PostModel save(PostModel postModel);
	PostModel update(PostModel updatePost);
	
}
