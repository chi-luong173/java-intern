package chiluong.citynow.service.impl;

import javax.inject.Inject;

import chiluong.citynow.dao.IUserDAO;
import chiluong.citynow.model.UserModel;
import chiluong.citynow.service.IUserService;

public class UserService implements IUserService {
	@Inject
	private IUserDAO userDAO;
	@Override
	public UserModel findByUserNameAndPassWordAndStatus(String username, String password, Integer status) {
		return userDAO.findByUserNameAndPassWordAndStatus(username, password, status);
	}
}
