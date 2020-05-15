package com.iiiproject.forum.model;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component(value = "articleListView")
@Entity
@Table(name = "ArticleListView")
public class ArticleListView implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "name")
	private String name;
	
	@Id
	@Column(name = "articleid")
	private Integer articleId;
	
	@Column(name = "title")
	private String title;
	
	@Column(name = "publishtime")
	private Timestamp publishTime;
	
	@Column(name = "boardid")
	private Integer boardId;
	
	@Column(name = "boardname")
	private String boardName;
	
	@Column(name = "replycount")
	private Integer replyCount;

	public ArticleListView() {
	}

	public ArticleListView(Integer id, String name, Integer articleId, String title, Timestamp publishTime,
			Integer boardId, String boardName, Integer replyCount) {
		this.id = id;
		this.name = name;
		this.articleId = articleId;
		this.title = title;
		this.publishTime = publishTime;
		this.boardId = boardId;
		this.boardName = boardName;
		this.replyCount = replyCount;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getArticleId() {
		return articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Timestamp getPublishTime() {
		return publishTime;
	}

	public void setPublishTime(Timestamp publishTime) {
		this.publishTime = publishTime;
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

}
