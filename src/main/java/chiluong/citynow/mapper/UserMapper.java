package chiluong.citynow.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import chiluong.citynow.model.UserModel;

public class UserMapper implements RowMapper<UserModel>{
	@Override
	public UserModel mapRow(ResultSet rs) {
		try {
			UserModel user = new UserModel();
            user.setId(rs.getLong("id"));
            user.setUserName(rs.getString("username"));
            user.setFullName(rs.getString("fullname"));
            user.setEmail(rs.getString("email"));
            user.setThumbnail(rs.getString("thumbnail"));
            user.setDob(rs.getDate("dob"));
            user.setPhone(rs.getLong("phone"));
            user.setStatus(rs.getInt("status"));
            user.setRole(rs.getInt("role"));
            
			return user;
		} catch (SQLException e) {
			return null;
		}
	}
}
