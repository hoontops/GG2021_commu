package GG2021.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import GG2021.model.All_Game;
import GG2021.model.Member;
import GG2021.service.MemberService;

@Controller
public class MainController {
	@Autowired
	private MemberService service;

	@RequestMapping("main.do")
	public String main() {
		return "main/mainPage";
		/* return "redirect:gameinfo.do"; */
	}

	@RequestMapping("signUp.do")
	public String signUp() {
		return "member/signUp";
	}

	@RequestMapping("login.do")
	public String loginForm() {
		return "member/login";
	}

	// 로그아웃
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "member/logout";
	}

	// 마이페이지폼
	@RequestMapping("myPage.do")
	public String myPage(Model model, HttpSession session) {
		String id = (String) session.getAttribute("id");
		Member member = service.idcheck(id);
		// model.addAttribute("member", member);

		String email = member.getM_EMAIL();
		Date subDate = member.getM_SUBSCRIPTION_DATE();
		int point = member.getM_POINT();

		model.addAttribute("email", email);
		model.addAttribute("subDate", subDate);
		model.addAttribute("point", point);
		model.addAttribute("M_IMG", member.getM_IMG());

		return "main/myPage";
	}

	/*
	 * @RequestMapping("gameinfo.do") public String gameinfo(Model model, All_Game
	 * game ) {
	 * 
	 * List<All_Game> list = service.gameInfo();
	 * 
	 * return "main/mainPage"; }
	 */
	
	@RequestMapping("adminMain.do")
	public String adminMain() {
		return "redirect:admin.do?state=dash";
	}

}
