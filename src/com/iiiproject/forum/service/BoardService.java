package com.iiiproject.forum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iiiproject.forum.dao.IBoardDAO;
import com.iiiproject.forum.model.Board;
import com.iiiproject.forum.model.BoardListView;

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
		Boolean resultBean = boardDao.deleteBoard(boardId);
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

	@Override
	public List<BoardListView> queryHot5Board() {
		List<BoardListView> queryHot5Board = boardDao.queryHot5Board();
		return queryHot5Board;
	}

	@Override
	public Long getAllBoardCount() {
		Long allBoardCount = boardDao.getAllBoardCount();
		return allBoardCount;
	}

	@Override
	public List<BoardListView> getRandom3Board() {
		List<BoardListView> random3Board = boardDao.getRandom3Board();
		return random3Board;
	}
}
