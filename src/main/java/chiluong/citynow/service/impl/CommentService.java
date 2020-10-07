package chiluong.citynow.service.impl;

import java.util.List;

import javax.inject.Inject;

import chiluong.citynow.dao.ICommentDAO;
import chiluong.citynow.model.CommentModel;
import chiluong.citynow.service.ICommentService;

public class CommentService implements ICommentService{
	@Inject
	private ICommentDAO commentDAO;
	@Override
	public List<CommentModel> findAll(){
		return commentDAO.findAll();
	}
}
