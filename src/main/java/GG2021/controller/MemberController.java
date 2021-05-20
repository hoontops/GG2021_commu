package GG2021.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import GG2021.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService service;
}
