package GG2021.controller;

import java.io.File;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import GG2021.model.Member;
import GG2021.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService service;
	
	
	@RequestMapping("memberModify.do")
	public String memberModify() {
		return "member/memberModify"; 
	}
}
