package GG2021.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import GG2021.model.Board;

@Repository
public class BoardDao {
	@Autowired SqlSession session;
	
	// 글쓰기 완료
	public int insert(Board board) throws Exception {
		return session.insert("boardInsert", board);  
	}
	
	// 게시글 갯수
	public int getListCount(String state) throws Exception {
		return session.selectOne("boardCount",state);
	
	}
	
	// 게시판 리스트
	public List<Board> getBoardList(int page) throws Exception {
		List<Board> list = session.selectList("boardList", page);
		return list;
	}
	public List<Board> getBoardListType(String state) throws Exception {
		List<Board> list = session.selectList("getBoardListType", state);
		return list;
	}
	
	// 조회수 증가
	public void hit(int B_NUM) throws Exception {
		session.update("hit", B_NUM);
	}
	
	// 게시판 상제
	public Board boardView(int B_NUM) throws Exception {
		return (Board) session.selectOne("boardView", B_NUM);
	}
	
	// 게시판 수정
	public void edit(Board b) throws Exception {
		session.update("edit", b);
	}
	
	// 게시글 삭제
	public void boardDel(int B_NUM) throws Exception {
		session.delete("boardDel", B_NUM);
	}
	
	public int boardThumbsUp(int B_NUM) {
		return session.update("boardThumbsUp", B_NUM);
	}
	public void boardThumbsDown(int B_NUM) {
		session.update("boardThumbsDown", B_NUM);
	}

	public List<Board> getBoardListz() {
		return session.selectList("board_list");
	}
}
