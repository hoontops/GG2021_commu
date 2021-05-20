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
	
	@RequestMapping("joinForm")
	public String joinForm() {
		return "member/joinForm"; 
	}

	@RequestMapping("loginForm.do")
	public String loginForm() {
		return "member/loginForm";
	}
	
	
}
