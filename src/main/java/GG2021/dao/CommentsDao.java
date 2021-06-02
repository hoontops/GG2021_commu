package GG2021.dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import GG2021.model.Comments;


@Repository
public class CommentsDao {
	@Autowired SqlSession session;
	
	public void insert(Comments cs) {
		session.insert("comments.insert", cs);
	}
	
	public List<Comments> list(int B_NUM) {
		return session.selectList("comments.list", B_NUM);
	}
	
	public void cmDelete(int C_NUM) {
		session.delete("comments.delete", C_NUM);
	}
	
	public void cmUpdate(Comments cs) {
		session.update("comments.update", cs);
	}
	
}