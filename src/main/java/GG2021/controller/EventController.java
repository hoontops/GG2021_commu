package GG2021.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import GG2021.model.Member;
import GG2021.service.MemberService;

@Controller
public class EventController {
	@Autowired
	private MemberService service;

	@RequestMapping("event.do")
	public String eventForm() {
		return "main/miniGame";
	}

	@RequestMapping("tetris.do")
	public String tetris() {
		return "tetris/tetris";
	}

	@RequestMapping("landmine.do")
	public String lendmineForm() {
		return "search/landmine";
	}

	@RequestMapping("roulette.do")
	public String rouletteForm() {
		return "roulette/roulette";
	}

}
