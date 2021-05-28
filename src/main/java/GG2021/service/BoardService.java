package GG2021.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import GG2021.dao.BoardDao;
import GG2021.model.Board;

@Service
public class BoardService {
	@Autowired
	private BoardDao dao;
	
	// 글쓰기 완료 
	public int insert(Board board) throws Exception {
		return dao.insert(board); 
	}
	
	// 게시글 갯 수
	public int getListCount() throws Exception {
		return dao.getListCount();
	}
	
	// 게시판 리스트
	public List getBoardList(int page) throws Exception {
		return dao.getBoardList(page);
	}
	
	// 조회수 증가
	public void hit(int BO_NUM) throws Exception {
		dao.hit(BO_NUM);
	}
	
	// 게시글 상세
	public Board boardView(int BO_NUM) throws Exception {
		Board board = dao.boardView(BO_NUM);
		return board;
	}
	
	// 게시판 수정
	public void edit(Board b) throws Exception {
		dao.edit(b);
	}
	
	// 게시글 삭제
	public void boardDel(int BO_NUM) throws Exception {
		dao.boardDel(BO_NUM);
	}

}
