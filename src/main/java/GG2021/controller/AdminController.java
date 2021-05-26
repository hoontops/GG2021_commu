package GG2021.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import GG2021.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	private AdminService service;

	// 대시보드
	@RequestMapping("adminDashBoardCon.do")
	public String adminDashBoardCon() {
		return "admin/dashBoard";
	}

	// 회원관리
	@RequestMapping("adminMemeberCon.do")
	public String adminMemeberCon() {
		return "admin/memberCon";
	}

	// 게시판관리
	@RequestMapping("adminBoardCon.do")
	public String adminBoardCon() {
		return "admin/boardCon";
	}

	// 댓글관리
	@RequestMapping("adminCommentCon.do")
	public String adminCommentCon() {
		return "admin/commentCon";
	}

}
