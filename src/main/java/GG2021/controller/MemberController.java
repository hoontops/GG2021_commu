package GG2021.controller;

import java.io.File;
import java.io.PrintWriter;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import GG2021.model.Member;
import GG2021.service.BoardService;
import GG2021.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberService service;
	

	// ID중복검사 ajax함수로 처리부분
	@RequestMapping(value = "memberCheck.do", method = RequestMethod.POST)
	public String memberCheck(@RequestParam("memId") String id, Model model) throws Exception {

		int result = service.checkMemberId(id);
		model.addAttribute("result", result);

		return "member/idcheckResult";
	}

	// 회원가입
	@RequestMapping("memberJoin.do")
	public String memberJoin(Member member, Model model) {
		int result = service.memberJoin(member);
		model.addAttribute("result", result);
		return "member/memberOk";
	}

	// 로그인
	@RequestMapping("memberLogin.do")
	public String memberLogin(Member member, Model model, HttpSession session) throws Exception {
		int result = 0;
		Member old = service.idcheck(member.getM_ID());
		if (old == null) {
			result = 0;

			model.addAttribute("result", result);
			return "member/loginResult";
		}

		if (old.getM_PASSWD().equals(member.getM_PASSWD())) {
			session.setAttribute("id", member.getM_ID());
			result = 1;
		} else {
			result = -1;
		}
		model.addAttribute("result", result);
		System.out.println("로그이한 아이디? : " + member.getM_ID() );
		service.getPoint(member.getM_ID());
		return "member/loginResult";
	}

	// 회원정보 수정 페이지 이동
		@RequestMapping("memberModify.do")
		public String memberModify(Model model, HttpSession session) {
			String id = (String) session.getAttribute("id");
			Member old = service.idcheck(id);
			String name = old.getM_NAME();
			String email = old.getM_EMAIL();
			model.addAttribute("mid", id);
			model.addAttribute("name", name);
			model.addAttribute("email", email);
			return "member/memberModify";
		}
		
		// 회원정보 수정 완료
		@RequestMapping(value="memberModifyOk.do", method = RequestMethod.POST)
		public String memberModifyOk(@RequestParam("M_IMG01") MultipartFile mf, Member member, Model model, HttpSession session, 
									 HttpServletRequest request) throws Exception {
			
			
			String filename = mf.getOriginalFilename(); 
			int size = (int) mf.getSize();		
			
			String path = request.getRealPath("upload");
			System.out.println("filename:"+filename);
			int result=0;		
			String file[] = new String[2];
			
			if(filename != ""){	 // 첨부파일이 전송된 경우					
				StringTokenizer st = new StringTokenizer(filename, ".");
				file[0] = st.nextToken();		
				file[1] = st.nextToken();		// 확장자	
				
				if(size > 10000000){ 
					result=1;
					model.addAttribute("result", result);
					
					return "member/uploadResult";
					
				}else if(!file[1].equals("jpg") &&
						 !file[1].equals("gif") &&
						 !file[1].equals("png") ){
					
					result=2;
					model.addAttribute("result", result);
					
					return "member/uploadResult";
				}				
			}
				
			if (size > 0) { // 첨부파일이 전송된 경우
				mf.transferTo(new File(path + "/" + filename)); 
			}
			
			String id = (String) session.getAttribute("id");
			
				
			Member old = this.service.idcheck(id);
			
			if (size > 0 ) { 			// 첨부 파일이 수정되면
				member.setM_IMG(filename);			
			} else { 					// 첨부파일이 수정되지 않으면
				member.setM_IMG(old.getM_IMG());
			}
			
			member.setM_ID(member.getM_ID());

			service.memberUpdate(member);  
			
			
			model.addAttribute("M_EMAIl", member.getM_EMAIL());
			model.addAttribute("M_POINT", member.getM_POINT());
			model.addAttribute("M_SUBSCRIPTION_DATE", member.getM_SUBSCRIPTION_DATE()); 
			model.addAttribute("M_IMG", filename);	
			String admin="hth9876";
			if(id.equals(admin)) {
				return "redirect:admin.do?state=member";
			}else {
				return "redirect:myPage.do";       
			}
		}

		// 탈퇴 폼 페이지 이동
		@RequestMapping("memberDel.do")
		public String memberDel(Model model, HttpSession session) {
			String id = (String) session.getAttribute("id");
			Member old = service.idcheck(id);
			String name = old.getM_NAME();
			model.addAttribute("name", name);
			return "member/memberDel";
		}

		/* 회원정보 삭제 완료 */
		@RequestMapping(value = "memberDelOk.do")  
		public String memberDelOk(@RequestParam(value="M_PASSWD", required=false) String pass,
								    HttpSession session) throws Exception {

			String id = (String) session.getAttribute("id");
			Member member = this.service.idcheck(id);

			if (!member.getM_PASSWD().equals(pass)) {

				return "member/deleteResult";
				
			} else {// 비번이 같은 경우
				
				String up = session.getServletContext().getRealPath("upload");
				String fname = member.getM_IMG();
				System.out.println("up:"+up);
			
				
				// 디비에 저장된 기존 이진파일명을 가져옴
				if (fname != null) {// 기존 이진파일이 존재하면
					File delFile = new File(up +"/"+fname);
					delFile.delete();// 기존 이진파일을 삭제
				}
				Member delm = new Member();
				delm.setM_ID(id);
				delm.setM_PASSWD(pass);

				service.memberDel(delm);// 삭제 메서드 호출

				session.invalidate();	// 세션만료

				return "member/memberDelOk";
			}
		}
	/* 비번찾기 폼 */
	@RequestMapping("pwdFind.do")
	public String pwdFind() {
		return "member/pwdFind";
	}

	/* 비번찾기 완료 */
	@RequestMapping(value = "pwdFindOk.do", method = RequestMethod.POST)
	public String pwdFindOk(@ModelAttribute Member mem, HttpServletResponse response, Model model) throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		Member member = service.pwdFind(mem);

		if (member == null) {// 값이 없는 경우

			return "member/pwdResult";

		} else {

			// Mail Server 설정
			String charSet = "utf-8";
			String hostSMTP = "smtp.naver.com";
			String hostSMTPid = "wkdrha91@naver.com";
			String hostSMTPpwd = "jang9958"; // 비밀번호 입력해야함

			// 보내는 사람 EMail, 제목, 내용
			String fromEmail = "wkdrha91@naver.com";
			String fromName = "관리자";
			String subject = "비밀번호 찾기";

			// 받는 사람 E-Mail 주소
			String mail = member.getM_EMAIL();

			try {
				HtmlEmail email = new HtmlEmail();
				email.setDebug(true);
				email.setCharset(charSet);
				email.setSSL(true);
				email.setHostName(hostSMTP);
				email.setSmtpPort(587);

				email.setAuthentication(hostSMTPid, hostSMTPpwd);
				email.setTLS(true);
				email.addTo(mail, charSet);
				email.setFrom(fromEmail, fromName, charSet);
				email.setSubject(subject);
				email.setHtmlMsg("<p align = 'center'>비밀번호 찾기</p><br>" + "<div align='center'> 비밀번호 : "
						+ member.getM_PASSWD() + "</div>");
				email.send();
			} catch (Exception e) {
				System.out.println(e);
			}

			model.addAttribute("pwdOk", "등록된 email을 확인 하세요~!!");
			return "member/pwdFind";

		}
	}

}
