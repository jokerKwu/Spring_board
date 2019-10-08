package com.first.myproject.board.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	
	@RequestMapping("board/writer.do")
	public ModelAndView writerPage(HttpServletRequest request) {
		ModelAndView mav=new ModelAndView("board/board_writer");
		mav.addObject("userID",request.getSession().getAttribute("member"));
		
		return mav;
	}
	
	@RequestMapping(value="board/insert.do",method=RequestMethod.POST)
	public String boardWriter(BoardVO boardVO) throws Exception{
		boardService.writerBoard(boardVO);
		return "redirect:/board/list.do";
	}
	
    // 게시글 상세내용 불러오기 
    @RequestMapping(value="board/read.do", method=RequestMethod.GET)
    public String boardRead(@RequestParam int bno,Model model) throws Exception {
        BoardVO data = boardService.boardRead(bno); // bno값을 넘김
        model.addAttribute("data", data); // model에 데이터 값을 담는다
        return "board/board_read"; // board/board_read.jsp로 이동
    }
    
    // 게시글 수정 페이지로 이동 
    @RequestMapping(value="board/updatepage", method=RequestMethod.GET)
    public String boardUpdate(@RequestParam int bno,Model model) throws Exception {
        BoardVO data = boardService.boardRead(bno); // bno값을 넘김
        model.addAttribute("data", data); // model에 데이터 값을 담는다
        return "board/board_update"; // board/board_update.jsp로 이동
    }
    
    // 게시글 수정 실행
    @RequestMapping(value="board/update.do", method=RequestMethod.POST)
    public String boardUpdatedo(BoardVO bdto) throws Exception {
        boardService.updateBoard(bdto);
        return "redirect:/board/list.do"; // 리스트로 리다이렉트
    }
    
    @RequestMapping(value="board/delete.do", method=RequestMethod.GET)
    public String boardDelete(@RequestParam int bno) throws Exception {
        boardService.deleteBoard(bno);
        return "redirect:/board/list.do"; // 리스트로 리다이렉트
    }
    
}
