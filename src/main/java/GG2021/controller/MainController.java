package GG2021.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MainController {

	@RequestMapping("main.do")
	public String main() {
		return "main/mainPage";
	}
	
	@RequestMapping("signUp.do")
	public String signUp() {
		return "member/signUp"; 
	}

	@RequestMapping("login.do") 
	public String loginForm() {
		return "member/login";
	}
	
	@RequestMapping("myPage.do")
	public String myPage() {
		return "main/myPage";
	}
	
	
}
