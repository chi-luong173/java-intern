package chiluong.citynow.dao;

import java.util.List;

import chiluong.citynow.model.PostModel;

public interface IPostDAO {
	List<PostModel> findAll();
}
