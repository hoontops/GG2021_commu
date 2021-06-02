package GG2021.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import GG2021.model.All_Game;
import GG2021.service.GameService;
import GG2021.service.MemberService;

@Controller
public class RecommendController {
	@Autowired
	private MemberService service;
	@Autowired
	private GameService gservice;


	@RequestMapping("recommend.do")
	public String signUp() {
		return "recommend/recommend";
	}
}

