package GG2021.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import GG2021.model.Member;
import GG2021.service.AdminService;
import GG2021.service.MemberService;
import scala.collection.generic.BitOperations.Int;

@Controller
public class AdminController {
	@Autowired
	private AdminService service;
	@Autowired
	private MemberService mservice;

	// 대시보드
	@RequestMapping("adminDashBoardCon.do")
	public String adminDashBoardCon() {
		return "admin/dashBoard";
	}

	// 회원관리
	@RequestMapping("adminMemeberCon.do")
	public String adminMemeberCon(Member member, Model model, HttpServletRequest request) {
		List<Member> memberList = new ArrayList<Member>();

		int page= 1;
		int limit = 10;
		
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		int listCount = service.getMemberCount(); //전체 회원수
		memberList = service.getMemberList(page); // 멤버 목록 1~10 까지를 뽑아온다.
		int maxPage = (int)((double)listCount/limit+0.95);
		int startPage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
		int endPage = maxPage;
		
		if (endPage > startPage + 10 - 1)
			endPage = startPage + 10 - 1;

		model.addAttribute("page", page);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("listCount", listCount);
		model.addAttribute("memberList", memberList);
		
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

	// 회원정보 수정 페이지 이동
	@RequestMapping("adminMemberModify.do")
	public String memberModify(Member member, Model model, HttpSession session, HttpServletRequest request) {
		Member old = mservice.idcheck(request.getParameter("M_ID"));

		String id = request.getParameter("M_ID");
		String name = old.getM_NAME();
		String email = old.getM_EMAIL();
		model.addAttribute("member", member);
		model.addAttribute("name", name);
		model.addAttribute("email", email);
		model.addAttribute("mid", id);
		
		return "member/memberModify";
	}
	
	@RequestMapping("adminMemberDel.do")
	public String adminMemberDel(Member member, Model model) {
		String id= member.getM_ID();
		System.out.println("삭제할 아이디 : "+ id);
		int result = service.adminDel(id);
		model.addAttribute("result", result);
		return "admin/adminMemberDelOK";
	}

}
