package GG2021.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import GG2021.model.Board;
import GG2021.model.Comments;
import GG2021.service.BoardService;
import GG2021.service.CommentsService;

@Controller
public class CommentsController {
	@Autowired
	private CommentsService cms; 
	@Autowired
	private BoardService service;

	@RequestMapping("slist.do")      
	public String slist(@RequestParam("B_NUM") int B_NUM, Model model) throws Exception {
		System.out.println("B_NUM:"+B_NUM); 
		
		Board board = service.boardView(B_NUM);  
		List<Comments> slist = cms.list(B_NUM);	
//		System.out.println("board:"+board); 
//		System.out.println("slist:"+slist); 
		model.addAttribute("slist", slist);
		model.addAttribute("board", board); 
//		model.addAttribute("page", "1"); 
		
		return "board/slist";
	}	
	
	
	@RequestMapping("sInsert.do")   
		public String sInsert(Comments cs, Model model, HttpServletRequest request) throws Exception {

		System.out.println("C_ID:"+cs.getC_ID()); 
		System.out.println("B_NUM:"+cs.getB_NUM());
		System.out.println("C_CONTENT:"+cs.getC_CONTENT()); 
		
		/* 
		 * List<Comments> cmlist = new ArrayList<Comments>();
		 * 
		 * int page = 1; int limit = 5;
		 * 
		 * if(request.getParameter("page") != null) { page =
		 * Integer.parseInt(request.getParameter("page")); } int listcount =
		 * service.getListCount(); cmlist = service.getBoardList(page);
		 * 
		 * int maxPage = (int) ((double) listcount / limit + 0.95); int startPage =
		 * (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1; int endPage = maxPage;
		 * 
		 * if (endPage > startPage + 10 - 1) endPage = startPage + 10 - 1;
		 * 
		 * model.addAttribute("page", page); model.addAttribute("startPage", startPage);
		 * model.addAttribute("endPage", endPage); model.addAttribute("maxPage",
		 * maxPage); model.addAttribute("listcount", listcount);
		 * model.addAttribute("cmlist", cmlist);
		 */ 
		
		cms.insert(cs); 
		return "redirect:slist.do?B_NUM=" + cs.getB_NUM(); 
	}
	
	@RequestMapping("cmDelete.do")
	public String cmDelete(Comments cs, Model model) {
		cms.cmDelete(cs.getC_NUM());
		return "redirect:slist.do?B_NUM=" + cs.getB_NUM(); 
	}
	

}