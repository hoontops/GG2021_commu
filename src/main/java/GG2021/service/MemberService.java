package GG2021.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import GG2021.dao.MemberDao;
import GG2021.model.Member;

@Service
public class MemberService {
	@Autowired
	private MemberDao dao;
		
	
	public int memberJoin(Member member) {
		return dao.memberJoin(member);
	}
	
	public Member idcheck(String member) {
		return dao.idcheck(member);
	}
	
	public void memberDel(Member member) throws Exception{
		dao.memberDel(member);
	}
	
	public int checkMemberId(String id) throws Exception{
		return dao.checkMemberId(id);
	}
	
	public Member pwdFind(Member m)throws Exception {
		return dao.pwdFind(m);
	}
	
	public void memberUpdate(Member member) throws Exception{
		dao.memberUpdate(member);
	}
}
