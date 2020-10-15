package chiluong.citynow.dao;

import java.util.List;

import chiluong.citynow.model.PostModel;
import chiluong.citynow.paging.Pageble;

public interface IPostDAO extends GenericDAO<PostModel>{
	List<PostModel> findAll(Pageble pageble);
	List<PostModel> findByUserId(Long userId);
	Long save(PostModel postModel);
	PostModel findOne(Long id);
	void delete(long id);
	void update(PostModel updatePost);
	int getTotalItem();
	
}
