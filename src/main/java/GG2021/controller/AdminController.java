package GG2021.controller;

import java.io.File;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import GG2021.model.Member;
import GG2021.service.AdminService;
import GG2021.service.MemberService;

@Controller
public class AdminController {
	@Autowired
	private AdminService service;
	@Autowired
	private MemberService mservice;
	// 대시보드
	@RequestMapping("adminDashBoardCon.do")
	public String adminDashBoardCon() {
		return "admin/dashBoard";
	}

	// 회원관리
	@RequestMapping("adminMemeberCon.do")
	public String adminMemeberCon(Member member, Model model) {
		List<Member> list = service.getMemberList(); //멤버 전체목록을 뽑아온다.
		int result= service.getMemberCount();// 전체 회원수를 구해온다.
		System.out.println(list);
		model.addAttribute("member", list);
		model.addAttribute("result", result);
		return "admin/memberCon";
	}

	// 게시판관리
	@RequestMapping("adminBoardCon.do")
	public String adminBoardCon() {
		return "admin/boardCon";
	}

	// 댓글관리
	@RequestMapping("adminCommentCon.do")
	public String adminCommentCon() {
		return "admin/commentCon";
	}
	
	// 회원정보 수정 페이지 이동
		@RequestMapping("memberModify.do")
		public String memberModify(Member member, Model model, HttpSession session, HttpServletRequest request) {
			String id = (String) session.getAttribute("id");
			String admin="hth9876";
			Member old = new Member();
			if (id==admin) {
				old = mservice.idcheck(id);
			} else {
				old = mservice.idcheck(request.getParameter("M_ID"));
			}
			String name = old.getM_NAME();
			String email = old.getM_EMAIL();
			model.addAttribute("member",member);
			model.addAttribute("name", name);
			System.out.println("name" + name);
			model.addAttribute("email", email);
			System.out.println("email" + email);
			return "member/memberModify";

		}

		// 회원정보 수정 완료
		@RequestMapping(value = "memberModifyOk.do", method = RequestMethod.POST)
		public String memberModifyOk(@RequestParam("M_IMG01") MultipartFile mf, Member member, Model model,
				HttpSession session, HttpServletRequest request) throws Exception {

			String filename = mf.getOriginalFilename();
			int size = (int) mf.getSize();

			String path = request.getRealPath("upload");
			System.out.println("filename:" + filename);
			int result = 0;
			String file[] = new String[2];

			if (filename != "") { // 첨부파일이 전송된 경우
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
			}

			if (size > 0) { // 첨부파일이 전송된 경우
				mf.transferTo(new File(path + "/" + filename));
			}
			
			String id= request.getParameter("M_ID");
			System.out.println("수정을 위해 입력되는 아이디 값: "+id);
			
				Member old = mservice.idcheck(id);
			
			
			if (size > 0) { // 첨부 파일이 수정되면
				member.setM_IMG(filename);
			} else { // 첨부파일이 수정되지 않으면
				member.setM_IMG(old.getM_IMG());
			}

			/*
			 * // 중복 값 제거 String filename02 = "clock.jpg"; String extension =
			 * filename02.substring(filename02.lastIndexOf("."), filename02.length());
			 * System.out.println("extension:"+extension);
			 * 
			 * UUID uuid = UUID.randomUUID(); System.out.println("uuid:"+uuid);
			 * 
			 * String newfilename = uuid.toString() + extension;
			 * System.out.println("newfilename:"+newfilename);
			 */

			member.setM_ID(old.getM_ID());

			mservice.memberUpdate(member);

			model.addAttribute("M_EMAIl", member.getM_EMAIL());
			model.addAttribute("M_POINT", member.getM_POINT());
			model.addAttribute("M_SUBSCRIPTION_DATE", member.getM_SUBSCRIPTION_DATE());
			model.addAttribute("M_IMG", filename);

			return "redirect:myPage.do";
		}
}
