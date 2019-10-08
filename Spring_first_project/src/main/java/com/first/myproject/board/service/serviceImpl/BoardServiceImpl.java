package com.first.myproject.board.service.serviceImpl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.first.myproject.board.model.dao.BoardDAO;
import com.first.myproject.board.model.vo.BoardVO;
import com.first.myproject.board.service.BoardService;

@Service
public class BoardServiceImpl implements BoardService{
	@Inject
	BoardDAO boardDao;
	
	@Override
	public List<BoardVO> boardList() throws Exception{
		return boardDao.boardList();
	}
	@Override
	public void writerBoard(BoardVO boardVO) throws Exception{
		boardDao.writerBoard(boardVO);
	}
	
	@Override
	public BoardVO boardRead(int bno) throws Exception{
		return boardDao.boardRead(bno);
	}
}
