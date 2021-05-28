package GG2021.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import GG2021.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	private BoardService service;
	
	@RequestMapping("boardList.do")
	public String boardList() {
		return "board/boardList";
	}
	
	@RequestMapping("boardWrite.do")
	public String boardWrite() {
		return "board/boardWrite";
	}
	
	@RequestMapping("boardView.do")
	public String boardView() {
		return "board/boardView";
	}
	
	@RequestMapping("imgBoardList.do")
	public String imgBoardList() {
		return "board/imgBoardList";
	}
	
}
