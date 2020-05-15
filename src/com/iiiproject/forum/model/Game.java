package com.iiiproject.forum.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component("game")
@Entity
@Table(name = "Game")
public class Game implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id @Column(name = "gameid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int gameId;

	@Column(name = "gamename")
	private String gameName;

	@Column(name = "gametype")
	private String gameType;

	public Game() {
	}

	public Game(int gameId, String gameName, String gameType) {
		this.gameId = gameId;
		this.gameName = gameName;
		this.gameType = gameType;
	}

	public int getGameId() {
		return gameId;
	}

	public void setGameId(int gameId) {
		this.gameId = gameId;
	}

	public String getGameName() {
		return gameName;
	}

	public void setGameName(String gameName) {
		this.gameName = gameName;
	}

	public String getGameType() {
		return gameType;
	}

	public void setGameType(String gameType) {
		this.gameType = gameType;
	}

}
