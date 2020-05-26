package com.iiiproject.forum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iiiproject.forum.dao.IBoardDAO;
import com.iiiproject.forum.model.Board;

@Service("boardService")
@Transactional
public class BoardService implements IBoardService {
	
	@Autowired @Qualifier("boardDao")
	private IBoardDAO boardDao;

	@Override
	public Board insertBoard(Board bBean) {
		Board resultBean = boardDao.insertBoard(bBean);
		return resultBean;
	}

	@Override
	public Boolean deleteBoard(Integer boardId) {
		boolean resultBean = boardDao.deleteBoard(boardId);
		return resultBean;
	}

	@Override
	public Board hideBoard(Integer boardId) {
		Board resultBean = boardDao.hideBoard(boardId);
		return resultBean;
	}

	@Override
	public Board updateBoard(Board bBean) {
		Board resultBean = boardDao.updateBoard(bBean);
		return resultBean;
	}

	@Override
	public Board queryBoard(Integer boardId) {
		Board resultBean = boardDao.queryBoard(boardId);
		return resultBean;
	}

	@Override
	public List<Board> queryAllBoard() {
		List<Board> blist = boardDao.queryAllBoard();
		return blist;
	}
	
	@Override
	public List<Board> queryAllBoardStatus1() {
		List<Board> blist1 = boardDao.queryAllBoardStatus1();
		return blist1;
	}

	@Override
	public Integer getBoardClick(Integer boardId) {
		Integer boardClick = boardDao.getBoardClick(boardId);
		return boardClick;
	}
}
