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
	private String id;
	
	@Column(name = "name")
	private String name;
	
	@Id
	@Column(name = "articleid")
	private Integer articleId;
	
	@Column(name = "category")
	private String category;
	
	@Column(name = "title")
	private String title;
	
	@Column(name = "detail")
	private String detail;
	
	@Column(name = "publishtime")
	private Timestamp publishTime;
	
	@Column(name = "boardid")
	private Integer boardId;
	
	@Column(name = "boardname")
	private String boardName;
	
	@Column(name = "status")
	private Integer status;
	
	@Column(name = "replycount")
	private Integer replyCount;

	public ArticleListView() {
	}

	public ArticleListView(String id, String name, Integer articleId, String category, String title, String detail, Timestamp publishTime,
			Integer boardId, String boardName, Integer status, Integer replyCount) {
		this.id = id;
		this.name = name;
		this.articleId = articleId;
		this.category = category;
		this.title = title;
		this.detail = detail;
		this.publishTime = publishTime;
		this.boardId = boardId;
		this.boardName = boardName;
		this.status = status;
		this.replyCount = replyCount;
	}

	
	
	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public Integer getReplyCount() {
		return replyCount;
	}

	public void setReplyCount(Integer replyCount) {
		this.replyCount = replyCount;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
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
