package com.first.myproject.board.model.dao.daoimpl;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.first.myproject.board.model.dao.BoardDAO;
import com.first.myproject.board.model.vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<BoardVO> boardList() throws Exception{
		return sqlSession.selectList("board.boardList");
	}
	
	@Override
	public void writerBoard(BoardVO boardVO) throws Exception{
		sqlSession.insert("board.boardWriter",boardVO);
	}
}
