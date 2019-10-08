package com.first.myproject.board.model.dao;

import java.util.List;

import com.first.myproject.board.model.vo.BoardVO;

public interface BoardDAO {
	// 게시물 목록 보ㄱㅣ
	public List<BoardVO> boardList() throws Exception;
	
	//게시물 작성
	public void writerBoard(BoardVO boardVO) throws Exception;
	
	
}
