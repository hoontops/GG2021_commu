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
	
	// 포인트추가
	@RequestMapping(value="tetirspoint.do", method = RequestMethod.POST)
	public String memberModifyOk(Member member, String form_name, Model model, HttpSession session, 
								 HttpServletRequest request) throws Exception {
		String id = (String) session.getAttribute("id");
		member.setM_ID(id);
		
		service.updatepoint(member);  
		return "main/miniGame";       
	}
	
	@RequestMapping("event.do") 
	public String eventForm() {
		return "main/miniGame";
	}
	@RequestMapping("tetris.do")
		public String memberModify(Model model, HttpSession session) {
			String id = (String) session.getAttribute("id");
			Member old = service.idcheck(id);
			int M_POINT = old.getM_POINT();
			model.addAttribute("M_POINT", M_POINT);
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
