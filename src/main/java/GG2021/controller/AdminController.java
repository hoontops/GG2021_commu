package GG2021.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import GG2021.model.Board;
import GG2021.model.Comments;
import GG2021.model.Member;
import GG2021.service.AdminService;
import GG2021.service.MemberService;

@Controller
public class AdminController {
	@Autowired
	private AdminService service;
	@Autowired
	private MemberService mservice;
	
	
	// 대시보드
	@RequestMapping("admin.do")
	public String adminDashBoardCon(String state, Model model,HttpServletRequest request) {
		List<Board> boardList = new ArrayList<Board>();
		List<Member> memberList = new ArrayList<Member>();
		List<Comments> commentnsList = new ArrayList<Comments>();
		int result  = 0;
		int page = 1;
		if(request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		int limit = 10;
		
		memberList =service.getAdminMemberList(page);
		boardList = service.getAdminBoardList(page);
		commentnsList= service.getAdminCommentsList(page);
		int memberCount = service.getAdminMemberCount(); //총 회원 수
		int boardCount = service.getAdminBoardCount(); //총 게시글 수
		int commentsCount = service.getAdminCommentsCount(); //총 댓글 수
		
		int listCount=0;
		if(state.equals("member")) {
			 listCount = memberCount;
		}else if(state.equals("board")) {
			listCount = boardCount;
		}else{
			listCount = commentsCount;
		}
		int maxPage = (int) ((double) listCount / limit + 0.95);
		int startPage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
		int endPage = maxPage;
		if (endPage > startPage + 10 - 1)
			endPage = startPage + 10 - 1;
		System.out.println("state:" + state);
		model.addAttribute("page", page);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("maxPage", maxPage);
		if (state.equals("dash")) {
			result=1;
			model.addAttribute("memberCount", memberCount);
			model.addAttribute("boardCount", boardCount);
			model.addAttribute("commentsCount", commentsCount);
			model.addAttribute("resutl", result);
			return "admin/dashBoard";
		}
		if (state.equals("member")) {
			result=2;
			model.addAttribute("memberCount", memberCount);
			model.addAttribute("memberList", memberList);
			model.addAttribute("resutl", result);
			return "admin/memberCon";
		}
		if (state.equals("board")) {
			result=3;
			model.addAttribute("boardCount", boardCount);
			model.addAttribute("boardList", boardList);
			model.addAttribute("resutl", result);
			return "admin/boardCon";
		}
		if (state.equals("comments")) {
			result=4;
			model.addAttribute("commentsCount", commentsCount);
			model.addAttribute("commentnsList", commentnsList);
			return "admin/commentCon";
		}
		return null;
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
		String id = member.getM_ID();
		System.out.println("삭제할 아이디 : " + id);
		int result = service.adminDel(id);
		model.addAttribute("result", result);
		return "redirect:admin.do?state=member";
	}
	
}
