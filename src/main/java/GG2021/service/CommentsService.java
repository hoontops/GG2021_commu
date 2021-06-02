package GG2021.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import GG2021.dao.CommentsDao;
import GG2021.model.Comments;

@Service
public class CommentsService {
	@Autowired
	private CommentsDao dao;
	
	public void insert(Comments cs) {
		dao.insert(cs);
	}
	
	public List<Comments> list(int B_NUM) {
		return dao.list(B_NUM);
	}
	
	public void cmDelete(int C_NUM) {
		dao.cmDelete(C_NUM);
	}
	
	public void cmUpdate(Comments cs) {
		dao.cmUpdate(cs);
	}
	
	
}