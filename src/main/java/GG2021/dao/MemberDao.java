package GG2021.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import GG2021.model.Member;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSession sqlSession;	
	
	/* 회원저장 */
	public void insertMember(Member m) throws Exception {
//		getSession();
		sqlSession.insert("joinFormOk", m);
	}

}
