package GG2021.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import GG2021.dao.MemberDao;
import GG2021.model.Member;

@Service
public class MemberService {
	@Autowired
	private MemberDao dao;
	
	public void insertMember(Member member) throws Exception{
		dao.insertMember(member);
	}
	
}