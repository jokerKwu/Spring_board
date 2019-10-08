package com.first.myproject.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.first.myproject.board.model.dao.BoardDAO;
import com.first.myproject.board.model.vo.BoardVO;

public interface BoardService {

	
	public List<BoardVO> boardList() throws Exception;

	public void writerBoard(BoardVO boardVO) throws Exception;
}
