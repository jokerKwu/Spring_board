package com.first.myproject.board.service;

import java.util.List;

import com.first.myproject.board.model.vo.BoardVO;

public interface BoardService {
	public List<BoardVO> boardList() throws Exception;
}
