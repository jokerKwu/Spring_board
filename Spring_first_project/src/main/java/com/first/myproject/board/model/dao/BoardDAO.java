package com.first.myproject.board.model.dao;

import java.util.List;

import com.first.myproject.board.model.vo.BoardVO;

public interface BoardDAO {
	public List<BoardVO> boardList() throws Exception;
}
