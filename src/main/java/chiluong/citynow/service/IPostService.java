package chiluong.citynow.service;

import java.util.List;

import chiluong.citynow.model.PostModel;
import chiluong.citynow.paging.Pageble;

public interface IPostService {
	List<PostModel> findAll(Pageble pageble);
	List<PostModel> findByUserId(Long userId);
	PostModel save(PostModel postModel);
	PostModel update(PostModel updatePost);
	void delete(long[] ids);
	int getTotalItem();
	
}
