package GG2021.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import GG2021.model.Member;

@Repository
public class AdminDao {
	@Autowired
	private SqlSession session;
	
	public List<Member> getMemberList()	{
		return session.selectList("admin.getMemberList");
	}
	public int getMemberCount() {
		return session.selectOne("admin.getMemberCount");
	}
	
	public int  adminDel(String id) {
		return session.delete("admin.adminDel", id);
	}
}
