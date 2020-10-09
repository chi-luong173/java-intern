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

public class CommentDAO extends AbstractDAO<CommentModel> implements ICommentDAO{
	
}
