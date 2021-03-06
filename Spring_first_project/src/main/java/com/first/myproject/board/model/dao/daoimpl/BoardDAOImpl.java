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
	public List<BoardVO> boardList() throws Exception {
		return sqlSession.selectList("board.boardList");
	}

	@Override
	public void writerBoard(BoardVO boardVO) throws Exception {
		sqlSession.insert("board.boardWriter", boardVO);
	}

	@Override
	public BoardVO boardRead(int bno) throws Exception {
		return sqlSession.selectOne("board.boardRead", bno);
	}

	@Override
	public void boardUpdate(BoardVO boardVO) throws Exception {
		sqlSession.update("board.boardUpdate", boardVO);
	}

	@Override
	public void boardDelete(int bno) throws Exception {
		sqlSession.delete("board.boardDelete", bno);
	}
}
