package chiluong.citynow.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.xdevapi.PreparableStatement;
import com.mysql.cj.xdevapi.Result;

import chiluong.citynow.dao.ICommentDAO;
import chiluong.citynow.model.CommentModel;

public class CommentDAO implements ICommentDAO{
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/dbs_servlet";
			String user = "root";
			String password = "Anhme0deptrai123";
			return DriverManager.getConnection(url,user,password);
		} catch (ClassNotFoundException | SQLException e) {
			return null;
		}
		
	}
	public List<CommentModel> findAll() {
		List<CommentModel> results = new ArrayList<>();
		Connection connection = getConnection();
		String sql = "SELECT * FROM comment";
		PreparedStatement statement = null;
		ResultSet rs = null;
		if (connection != null) {
			try {
				statement = connection.prepareStatement(sql);
				rs = statement.executeQuery();
				 while (rs.next()) {
		                CommentModel comment = new CommentModel();
		                comment.setId(rs.getLong("id"));
		                comment.setContent(rs.getString("content"));
		                comment.setPostId(rs.getLong("postId"));
		                comment.setUserId(rs.getLong("userId"));  
		                results.add(comment);
		           }
				 if(connection!=null)
					 connection.close();
				 if(statement!=null)
					 statement.close();
				 if(rs!=null)
					 rs.close();
				 return results;
			} catch (SQLException e) {
				return null;
			} finally {
				try {
					if(connection!=null)
						 connection.close();
					 if(statement!=null)
						 statement.close();
					 if(rs!=null)
						 rs.close();
				} catch (SQLException e) {
					return null;
				}
				
			}
		}
		return null;
	}
}
