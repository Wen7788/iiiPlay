package com.iiiproject.forum.service;

import java.util.List;

import com.iiiproject.forum.model.Board;
import com.iiiproject.forum.model.BoardListView;

public interface IBoardService {

	Board insertBoard(Board bBean);

	Boolean deleteBoard(Integer boardId);

	Board hideBoard(Integer boardId);

	Board updateBoard(Board bBean);

	Board queryBoard(Integer boardId);

	List<Board> queryAllBoard();

	List<Board> queryAllBoardStatus1();

	Integer getBoardClick(Integer boardId);

	List<BoardListView> queryHot5Board();
	
	Long getAllBoardCount();
	
	List<BoardListView> getRandom3Board();
}