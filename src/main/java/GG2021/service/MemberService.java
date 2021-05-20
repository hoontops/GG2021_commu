package GG2021.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import GG2021.dao.MemberDao;

@Service
public class MemberService {
	@Autowired
	private MemberDao dao;
}
