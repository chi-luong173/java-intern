package chiluong.citynow.dao.impl;

import java.util.List;

import chiluong.citynow.dao.IUserDAO;
import chiluong.citynow.mapper.UserMapper;
import chiluong.citynow.model.UserModel;

public class UserDAO  extends AbstractDAO<UserModel> implements  IUserDAO{
	@Override
	public UserModel findByUserNameAndPassWordAndStatus(String username, String password, Integer status) {
		StringBuilder sql = new StringBuilder("SELECT * FROM user");
		sql.append(" WHERE username = ? AND password = ? AND status = ?");
		List<UserModel> users = query(sql.toString(), new UserMapper(), username, password, status);
		return users.isEmpty() ? null : users.get(0);
	}
}
