package chiluong.citynow.dao;

import java.util.List;

import chiluong.citynow.model.PostModel;

public interface IPostDAO extends GenericDAO<PostModel>{
	List<PostModel> findAll();
	List<PostModel> findByUserId(Long userId);
	Long save(PostModel postModel);
	PostModel findOne(Long id);
//	void delete(Long id);
	void update(PostModel updatePost);
	
//	int getTotalItem();
	
}
