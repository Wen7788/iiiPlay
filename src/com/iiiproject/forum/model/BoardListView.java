package com.iiiproject.forum.model;

import java.io.Serializable;
import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component("boardListView")
@Entity
@Table(name = "BoardListView")
public class BoardListView implements Serializable{
	private static final long serialVersionUID = 1L;

	@Id @Column(name = "boardid")
	private Integer boardId;

	@Column(name = "boardname")
	private String boardName;

	@Column(name = "boardimg")
	private Blob boardImg;

	@Column(name = "imgname")
	private String imgName;
	
	@Column(name = "status")
	private Integer status;
	
	@Column(name = "boardclick")
	private Integer boardClick;

	public BoardListView() {
	}

	public BoardListView(Integer boardId, String boardName, Blob boardImg, String imgName, Integer status,
			Integer boardClick) {
		this.boardId = boardId;
		this.boardName = boardName;
		this.boardImg = boardImg;
		this.imgName = imgName;
		this.status = status;
		this.boardClick = boardClick;
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

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getBoardClick() {
		return boardClick;
	}

	public void setBoardClick(Integer boardClick) {
		this.boardClick = boardClick;
	}
	
	
}
