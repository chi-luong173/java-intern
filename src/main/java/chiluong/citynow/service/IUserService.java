package chiluong.citynow.service;

import chiluong.citynow.model.UserModel;

public interface IUserService {
	UserModel findByUserNameAndPassWordAndStatus(String username, String password, Integer status);
}
