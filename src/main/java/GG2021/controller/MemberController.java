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
	
	/* 회원 가입 저장(fileupload) */  
	@RequestMapping(value = "joinFormOk.do", method = RequestMethod.POST)
	public String joinFormOk( 
								 Member member,
								 HttpServletRequest request,
								 Model model) throws Exception {

		

		String M_ID = request.getParameter("M_ID");
		String M_PASSWD = request.getParameter("M_PASSWD");
		String M_NAME = request.getParameter("M_NAME");
		String M_EMAIL = request.getParameter("M_EMAIL");
		
		
		
		member.setM_ID(M_ID);
		member.setM_PASSWD(M_PASSWD);
		member.setM_NAME(M_NAME);
		member.setM_EMAIL(M_EMAIL); 
		

		service.insertMember(member);

		return "redirect:loginForm.do";
	}
}
