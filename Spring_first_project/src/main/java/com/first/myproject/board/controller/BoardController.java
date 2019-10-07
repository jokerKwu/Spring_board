package com.first.myproject.board.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.first.myproject.board.model.vo.BoardVO;
import com.first.myproject.board.service.BoardService;
import com.first.myproject.member.controller.MemberController;

@Controller
public class BoardController {
	@Inject
	BoardService boardService;
	

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	// MemberService 객체를 스프링에서 생성하여 주입시킴

	// 01 회원 목록
	// url pattern mapping
	@RequestMapping("board/list.do")
	public String memberList(Model model) throws Exception {
		List<BoardVO> list= boardService.boardList();
		model.addAttribute("list",list);
		return "board/board_list";
	}

}
