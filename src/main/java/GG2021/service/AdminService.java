package GG2021.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import GG2021.dao.AdminDao;
import GG2021.model.Board;
import GG2021.model.Comments;
import GG2021.model.Member;

@Service
public class AdminService {
	@Autowired
	private AdminDao dao;

	public List<Member> getAdminMemberList(int page) {
		return dao.getAdminMemberList(page);
	}

	public int getAdminMemberCount() {
		return dao.getAdminMemberCount();
	}

	public int adminDel(String id) {
		return dao.adminDel(id);
	}

	public int getAdminBoardCount() {
		return dao.getAdminBoardCount();
	}

	public List<Board> getAdminBoardList(int page) {
		return dao.getAdminBoardList(page);
	}
	
	public int getAdminCommentsCount() {
		return dao.getAdminCommentsCount();
	}
	
	public List<Comments> getAdminCommentsList(int page) {
		return dao.getAdminCommentsList(page);
	}
	
	public int insertLink(String link) {
		return dao.insertLink(link);
	}
	
	public String getlink() {
		return dao.getlink();
	}
}
