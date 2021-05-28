package GG2021.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.sun.java.accessibility.util.GUIInitializedListener;

import GG2021.model.Board;
import GG2021.model.Member;
import GG2021.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	private BoardService service;

	// 글 게시판 목록(페이지)
	@RequestMapping(value = "boardList.do")
	public String boardList(Model model, HttpServletRequest request) throws Exception {

		List<Board> boardlist = new ArrayList<Board>();

		int page = 1;
		int limit = 10;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		int listcount = service.getListCount(); // 총 글 수
		boardlist = service.getBoardList(page); //

		int maxPage = (int) ((double) listcount / limit + 0.95);
		int startPage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
		int endPage = maxPage;

		if (endPage > startPage + 10 - 1)
			endPage = startPage + 10 - 1;

		model.addAttribute("page", page);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("listcount", listcount);
		model.addAttribute("boardlist", boardlist);

		return "board/boardList";
	}

	// 글쓰기 페이지
	@RequestMapping("boardWrite.do")
	public String boardWrite() {
		return "board/boardWrite";
	}

	// 글쓰기 완료
	@RequestMapping(value = "boardWriteOk.do", method = RequestMethod.POST)
	public String boardWriteOk(@RequestParam("B_IMG02") MultipartFile mf, Model model, Board board, String M_ID,
			HttpServletRequest request) throws Exception {
		System.out.println("mf:" + mf);

		int result01 = 0;

		String filename = mf.getOriginalFilename();
		int size = (int) mf.getSize();

		String path = request.getRealPath("upload");
		System.out.println("path:" + path);
		System.out.println("filename:" + filename);
		int result = 0;
		String file[] = new String[2];

		StringTokenizer st = new StringTokenizer(filename, ".");
		file[0] = st.nextToken();
		file[1] = st.nextToken(); // 확장자

		if (size > 10000000) {
			result = 1;
			model.addAttribute("result", result);

			return "member/uploadResult";

		} else if (!file[1].equals("jpg") && !file[1].equals("gif") && !file[1].equals("png")) {

			result = 2;
			model.addAttribute("result", result);

			return "member/uploadResult";
		}
		System.out.println("23232323file[1]:" + file[1]);
		if (size > 0) { // 첨부파일이 전송된 경우
			mf.transferTo(new File(path + "/" + filename));
		}

		board.setM_ID(M_ID);
		board.setB_IMG(filename); 

		result01 = service.insert(board);
		model.addAttribute("result01", result01);

		return "board/boardWriteOk";
	}

	// 게시판 상세
	@RequestMapping(value = "boardView.do")
	public String boardView(@RequestParam("BO_NUM") int BO_NUM, @RequestParam("page") String page,
			@RequestParam("state") String state, Model model) throws Exception {

		if (state.equals("cont")) {
			service.hit(BO_NUM);
		}
		Board board = service.boardView(BO_NUM);

		model.addAttribute("bcont", board);
		model.addAttribute("page", page);

		if (state.equals("cont")) {
			return "board/boardView";
		} else if (state.equals("edit")) { // 수정 폼으로
			return "board/boardModify";
		} else if (state.equals("del")) {
			return "board/boardDel";
		} else if (state.equals("reply")) {
			return "";
		}
		return "null";
	}

	// 글 수정
	@RequestMapping(value = "boardModify.do", method = RequestMethod.POST)
	public String boardModify(@RequestParam("B_IMG02") MultipartFile mf, @ModelAttribute Board b,
			@RequestParam("page") String page, HttpServletRequest request, Model model) throws Exception {

		String filename = mf.getOriginalFilename();
		int size = (int) mf.getSize();

		String path = request.getRealPath("upload");
		System.out.println("filename:" + filename);
		int result = 0;
		String file[] = new String[2];

		StringTokenizer st = new StringTokenizer(filename, ".");
		file[0] = st.nextToken();
		file[1] = st.nextToken(); // 확장자

		if (size > 10000000) {
			result = 1;
			model.addAttribute("result", result);

			return "member/uploadResult";

		} else if (!file[1].equals("jpg") && !file[1].equals("gif") && !file[1].equals("png")) {

			result = 2;
			model.addAttribute("result", result);

			return "member/uploadResult";
		}

		if (size > 0) { // 첨부파일이 전송된 경우
			mf.transferTo(new File(path + "/" + filename));
		}
		
		b.setB_IMG(filename);  
		service.edit(b);
		return "redirect:boardView.do?BO_NUM=" + b.getBO_NUM() + "&page=" + page + "&state=cont";
	}

	// 게시글 삭제
	@RequestMapping(value = "boardDel.do", method = RequestMethod.POST)
	public String boardDel(@RequestParam("BO_NUM") int BO_NUM, @RequestParam("page") int page, Model model)
			throws Exception {

		Board board = service.boardView(BO_NUM);

		service.boardDel(BO_NUM);

		return "board/boardDelOk";
	}

	@RequestMapping("boardInfo.do")
	public String boardInfo() {
		return "board/boardInfo";
	}
	
	@RequestMapping("imgBoardList.do")
	public String imgBoardList() {
		return "board/imgBoardList";
	}

}
