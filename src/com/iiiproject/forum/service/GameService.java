package com.iiiproject.forum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.iiiproject.forum.dao.GameDAO;

@Service("gameService")
public class GameService {
	
	@Autowired @Qualifier("gameDao")
	private GameDAO gameDao;
	
	public List<String> getGameList() {
		List<String> gamelist = gameDao.getGameList();
		return gamelist;
	}
	
	public String queryGameByKeyword(String keyword) {
		String gameName = gameDao.queryGameByKeyword(keyword);
		return gameName;
	}


}
