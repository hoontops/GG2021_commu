package GG2021.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import GG2021.model.Member;
import GG2021.service.AdminService;
import GG2021.service.MemberService;

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
	public String adminMemeberCon(Member member, Model model) {
		List<Member> list = service.getMemberList(); //멤버 전체목록을 뽑아온다.
		int result= service.getMemberCount();// 전체 회원수를 구해온다.
		System.out.println(list);
		model.addAttribute("member", list);
		model.addAttribute("result", result);
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
