package com.iiiproject.forum.service;

import java.util.List;

import com.iiiproject.forum.model.Board;

public interface IBoardService {

	Board insertBoard(Board bBean);

	Boolean deleteBoard(Integer boardId);

	Board hideBoard(Integer boardId);

	Board updateBoard(Board bBean);

	Board queryBoard(Integer boardId);

	List<Board> queryAllBoard();

	List<Board> queryAllBoardStatus1();


}