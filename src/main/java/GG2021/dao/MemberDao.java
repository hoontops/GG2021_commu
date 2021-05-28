package GG2021.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import GG2021.model.Member;

@Repository
public class MemberDao {
	
	@Autowired
	private SqlSession session;	

	public int memberJoin(Member member) {
		return session.insert("memberns.memberJoin",member);
	}
	
	public Member idcheck(String member) {
		return session.selectOne("idcheck", member);
	}
	
	/* 회원삭제 */
//	@Transactional
	public void memberDel(Member delm) throws Exception {
//		getSession();
		session.delete("memberDel", delm); 
	}
	
	/***** 아이디 중복 체크 *****/ 
//	@Transactional
	public int checkMemberId(String id) throws Exception {
//		getSession();
		int re = -1;	// 사용 가능한 ID 
		Member mb = (Member) session.selectOne("idcheck", id); 
		if (mb != null)
			re = 1; 	// 중복id
		return re;
	}
	
	/* 비번 검색 */
//	@Transactional
	public Member pwdFind(Member pm) throws Exception {
//		getSession();
		return (Member) session.selectOne("pwdFind", pm);
	}
	
	/* 회원수정 */
//	@Transactional
	public void memberUpdate(Member member) throws Exception {
//		getSession();
		session.update("updateMem", member);
	}
	/* 로그인시 포인트*/
	public void getPoint(String member) throws Exception{
		session.update("getPoint",member);
	}
}
