package com.iiiproject.forum.model;

import java.io.Serializable;
import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component(value = "board")
@Entity
@Table(name = "Board")
public class Board implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id @Column(name = "boardid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer boardId;

	@Column(name = "boardname")
	private String boardName;

	@Column(name = "boardimg")
	private Blob boardImg;

	@Column(name = "imgname")
	private String imgName;
	
	@Column(name = "status")
	private Integer status;

	public Board() {
	}

	public Board(Integer boardId, String boardName, Blob boardImg, String imgName, Integer status) {
		this.boardId = boardId;
		this.boardName = boardName;
		this.boardImg = boardImg;
		this.imgName = imgName;
		this.status = status;
	}

	

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getBoardId() {
		return boardId;
	}

	public void setBoardId(Integer boardId) {
		this.boardId = boardId;
	}

	public String getBoardName() {
		return boardName;
	}

	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}

	public Blob getBoardImg() {
		return boardImg;
	}

	public void setBoardImg(Blob boardImg) {
		this.boardImg = boardImg;
	}

	public String getImgName() {
		return imgName;
	}

	public void setImgName(String imgName) {
		this.imgName = imgName;
	}

}
