package com.first.myproject.member.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.first.myproject.member.model.vo.MemberVO;
import com.first.myproject.member.service.MemberService;

@Controller // 현재의 클래스를 controller bean에 등록시킴
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	// MemberService 객체를 스프링에서 생성하여 주입시킴
	@Inject
	MemberService memberService;

	// 01 회원 목록
	// url pattern mapping
	@RequestMapping("member/list.do")
	public String memberList(Model model) {
		// controller => service => dao 요청
		List<MemberVO> list = memberService.memberList();
		model.addAttribute("list", list);
		return "member/member_list";
	}

	// 02_01 메인 페이지 이동
	@RequestMapping("member/main.do")
	public String memberMain(Model model) {
		model.addAttribute("msg", "메인 페이지 입니다.");
		return "main";
	}

	// 02_01 회원 등록 페이지로 이동
	@RequestMapping("member/write.do")
	public String memberWrite() {

		return "member/member_write";
	}

	// 02_02 회원 등록 처리 후 ==> 회원목록으로 리다이렉트
	// @ModelAttribute에 폼에서 입력한 데이터가 저장된다.
	@RequestMapping("member/insert.do")
	// * 폼에서 입력한 데이터를 받아오는 법 3가지
	// public String memberInsert(HttpServlet request){
	// public String memberInsert(String userId, String userPw, String userName,
	// String userEmail){
	public String memberInsert(@ModelAttribute MemberVO vo) {

		// 현재 날짜 가지고 오기
		Date date = new Date();
		SimpleDateFormat rdate = new SimpleDateFormat("yyyy-mm-dd-hh-mm-ss");

		vo.setUserRegdate(rdate.format(date));
		logger.info("현재 날짜 " + date.toString());
		// 테이블에 레코드 입력
		memberService.insertMember(vo);
		// * (/)의 유무에 차이
		// /member/list.do : 루트 디렉토리를 기준
		// member/list.do : 현재 디렉토리를 기준
		// member_list.jsp로 리다이렉트

		// 날짜도 넣자
		return "redirect:/member/list.do";
	}

	// 03 회원 상세정보 조회
	@RequestMapping("member/view.do")
	public String memberView(@RequestParam String userId, Model model) {
		// 회원 정보를 model에 저장
		model.addAttribute("dto", memberService.viewMember(userId));
		// System.out.println("클릭한 아이디 확인 : "+userId);
		logger.info("클릭한 아이디 : " + userId);
		// member_view.jsp로 포워드
		return "member/member_view";
	}

	// 04. 회원 정보 수정 처리
	@RequestMapping("member/update.do")
	public String memberUpdate(@ModelAttribute MemberVO vo, Model model) {
		// 비밀번호 체크
		boolean result = memberService.checkPw(vo.getUserId(), vo.getUserPw());
		if (result) { // 비밀번호가 일치하면 수정 처리후, 전체 회원 목록으로 리다이렉트
			memberService.updateMember(vo);
			return "redirect:/member/list.do";
		} else { // 비밀번호가 일치하지 않는다면, div에 불일치 문구 출력, viwe.jsp로 포워드
			// 가입일자, 수정일자 저장
			MemberVO vo2 = memberService.viewMember(vo.getUserId());
			vo.setUserUpdatedate(vo2.getUserUpdatedate());
			model.addAttribute("dto", vo);
			model.addAttribute("message", "비밀번호 불일치");
			return "member/member_view";
		}

	}

	// 05. 회원정보 삭제 처리
	// @RequestMapping : url mapping
	// @RequestParam : get or post방식으로 전달된 변수값
	@RequestMapping("member/delete.do")
	public String memberDelete(@RequestParam String userId, @RequestParam String userPw, Model model) {
		// 비밀번호 체크
		boolean result = memberService.checkPw(userId, userPw);
		if (result) { // 비밀번호가 맞다면 삭제 처리후, 전체 회원 목록으로 리다이렉트
			memberService.deleteMember(userId);
			return "redirect:/member/list.do";
		} else { // 비밀번호가 일치하지 않는다면, div에 불일치 문구 출력, viwe.jsp로 포워드
			model.addAttribute("message", "비밀번호 불일치");
			model.addAttribute("dto", memberService.viewMember(userId));
			return "member/member_view";
		}
	}

	//로그인 페이지로 이동
	@RequestMapping("member/login.do")
	public String memberLoginpage(Model model) {
		return "member/member_login";
	}

	//로그인 처리 과정
	@RequestMapping("member/loginProcess.do")
	public String memberLogin(@RequestParam String userId, @RequestParam String userPw, Model model,HttpServletRequest request	) {
		
		boolean result=memberService.checkPw(userId, userPw);

		HttpSession session=request.getSession(true);
		
		logger.info("아이디  :"+userId+" 결과는 : "+ result);
		if(result) {
			session.setAttribute("member", userId);
			return "member/member_loginSuccess";
		}else {			
			session.setAttribute("member", null);
			return "member/member_loginFail";
		}
	}
	
	//회원 페이지로 이동
	@RequestMapping("member/memberMain.do")
	public ModelAndView memberMain(HttpServletRequest request) {
		ModelAndView mav=new ModelAndView("member/member_main");
		request.getSession().setMaxInactiveInterval(60*30);
		mav.addObject("msg",request.getSession().getAttribute("member"));
		return mav;
	}
	
	@RequestMapping("member/logout.do")
	public String memberLogout(HttpServletRequest request) throws Exception{
		request.getSession().removeAttribute("member");
		
		return "member/member_logout";
	}
}
