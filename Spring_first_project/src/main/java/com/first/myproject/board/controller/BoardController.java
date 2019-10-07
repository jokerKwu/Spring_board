package com.first.myproject.board.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.first.myproject.member.controller.MemberController;
import com.first.myproject.member.model.vo.MemberVO;
import com.first.myproject.member.service.MemberService;

@Controller
public class BoardController {


	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	// MemberService 객체를 스프링에서 생성하여 주입시킴
	@Inject
	MemberService memberService;

	// 01 회원 목록
	// url pattern mapping
	@RequestMapping("board/list.do")
	public String memberList(Model model) {
		// controller => service => dao 요청
		List<MemberVO> list = memberService.memberList();
		model.addAttribute("list", list);
		return "board/board_list";
	}

}
