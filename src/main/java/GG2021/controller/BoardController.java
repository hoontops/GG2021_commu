package GG2021.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import GG2021.model.All_Game;
import GG2021.model.Board;
import GG2021.model.Comments;
import GG2021.service.BoardService;
import GG2021.service.CommentsService;
import GG2021.service.GameService;

@Controller
public class BoardController {
	@Autowired
	private BoardService service;
	@Autowired
	private GameService gservice;
	@Autowired
	private CommentsService cms;

	// 글 게시판 목록(페이지)
	@RequestMapping(value = "boardList.do")
	public String boardList(Model model, String state, HttpServletRequest request) throws Exception {
		System.out.println("boardList.do 에서의 state 값 : " + state);
		List<Board> boardlist = new ArrayList<Board>();
		List<Board> boardlists = new ArrayList<Board>();

		int page = 1;
		int limit = 10;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		int listcount = service.getListCount(state); // 총 글 수
		boardlist = service.getBoardList(page); //
		boardlists = service.getBoardListType(state); // 단순 액션 게임 리스트.
		int maxPage = (int) ((double) listcount / limit + 0.95);
		int startPage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
		int endPage = maxPage;

		if (endPage > startPage + 10 - 1)
			endPage = startPage + 10 - 1;

		model.addAttribute("state", state);
		model.addAttribute("page", page);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("listcount", listcount);
		model.addAttribute("boardlist", boardlists);

		return "board/boardList";
	}

	// 글쓰기 페이지
	@RequestMapping("boardWrite.do")
	public String boardWrite(String state, Model model) {
		System.out.println("boardWrite.do 에서의 state 값 : " + state);
		model.addAttribute("state", state);
		return "board/boardWrite";
	}

	// 글쓰기 완료
	@RequestMapping(value = "boardWriteOk.do", method = RequestMethod.POST)
	public String boardWriteNOPicOk(@RequestParam("B_IMG02") MultipartFile mf, Model model, Board board, String M_ID,
			String state, HttpServletRequest request) throws Exception {
		System.out.println("boardWriteOk에서의 mf값 나와주세요:" + mf);
		if (mf == null) {
			return "main/mainPage";
		} else {

			int result01 = 0;

			String filename = mf.getOriginalFilename();
			long size = (long) mf.getSize();

			String path = request.getRealPath("upload");
			System.out.println("path:" + path);
			System.out.println("filename:" + filename);
			int result = 0;
			String file[] = new String[2];

		if(filename != "") {
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

		}	
			
			board.setM_ID(M_ID);
			board.setB_IMG(filename);

			result01 = service.insert(board);

			model.addAttribute("state", state);
			model.addAttribute("result01", result01);

			return "board/boardWriteOk";
		}
	}

	// 게시판 상세
	@RequestMapping(value = "boardView.do")
	public String boardView(@RequestParam("B_NUM") int B_NUM, @RequestParam("page") int page,
			@RequestParam("state") String state, Model model) throws Exception {
		if (state.equals("cont")) {
			service.hit(B_NUM);
		}
		Board board = service.boardView(B_NUM);

		// 전, 후 글 객체생성
		Board before = service.boardView(B_NUM - 1);
		System.out.println("before객체 : " + before);
		Board after = service.boardView(B_NUM + 1);
		System.out.println("after객체 : " + after);

		int startPage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;

		model.addAttribute("cont", state);
		model.addAttribute("startPage", startPage);
		model.addAttribute("before", before);
		model.addAttribute("after", after);
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
		return null;
	}

	// 글 수정
	@RequestMapping(value = "boardModify.do", method = { RequestMethod.GET, RequestMethod.POST })
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
		return "redirect:boardView.do?B_NUM=" + b.getB_NUM() + "&page=" + page + "&state=cont";
	}

	// 게시글 삭제
	@RequestMapping(value = "boardDel.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String boardDel(int B_NUM, Model model) throws Exception {
		Board board = service.boardView(B_NUM);

		service.boardDel(B_NUM);

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

	@RequestMapping(value = "tile.do") // load
	public String tile(String state, Model model) {
		System.out.println("state:" + state);
		List<All_Game> gameList = new ArrayList<All_Game>();
		gameList = gservice.getGameList(state);
		model.addAttribute("gameList", gameList);
		return "board/tile";
	}

	@RequestMapping("tiler.do") // post
	public String tiler(String state) {

		return "redirect:tile.do?state=" + state;
	}

	@RequestMapping("boardThumbsUp.do")
	public String boardThumbsUp(int B_NUM, int like, Model model) throws Exception {
		service.boardThumbsUp(B_NUM); // 좋아요 1업데이트
		Board board = service.boardView(B_NUM); // 상세정보 불러와서
		like = board.getB_GOOD();
		model.addAttribute("thumbs", like);
		return "board/boardViewThumbs";
	}

	@RequestMapping("boardThumbsDown.do")
	public String boardThumbsDown(int B_NUM, int dislike, Model model) throws Exception {
		System.out.println("싫어요: " + dislike);
		System.out.println("글번호 : " + B_NUM);
		service.boardThumbsDown(B_NUM); // 싫어요 1업데이트
		Board board = service.boardView(B_NUM); // 상세정보 불러와서
		dislike = board.getB_BAD();
		model.addAttribute("thumbs", dislike);
		return "board/boardViewThumbs";
	}

	@RequestMapping("boardPaging.do") // load
	public String boardPaging(String state, Model model, HttpServletRequest request) throws Exception {
		System.out.println("boardPaging.do state : " + state); 
		List<Board> boardlist = new ArrayList<Board>();

		int page = 1;
		int limit = 10;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		int listcount = service.getListCount(state); // 총 글 수
		boardlist = service.getBoardListType(state); // 단순 액션 게임 리스트.
		System.out.println(boardlist);
		int maxPage = (int) ((double) listcount / limit + 0.95);
		int startPage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
		int endPage = maxPage;
		if (endPage > startPage + 10 - 1)
			endPage = startPage + 10 - 1;
		model.addAttribute("state", state);
		model.addAttribute("page", page);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("listcount", listcount);
		model.addAttribute("boardlist", boardlist);

		return "board/list";
	}

	@RequestMapping("boardPagingPost.do")
	public String boardPagingPost(String state) {
		System.out.println("boardPagingPost : "+state);
		return "redirect:boardPaging.do?state=" + state;
	}
}
