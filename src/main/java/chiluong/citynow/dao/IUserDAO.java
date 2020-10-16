package chiluong.citynow.dao;

import chiluong.citynow.model.UserModel;

public interface IUserDAO extends GenericDAO<UserModel>{
	UserModel findByUserNameAndPassWordAndStatus(String userName, String password, Integer status);
}
