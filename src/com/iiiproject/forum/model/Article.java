package com.iiiproject.forum.model;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;
import org.springframework.stereotype.Component;

@Component(value = "article")
@Entity
@Table(name = "Article")
public class Article implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id @Column(name = "articleid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer articleId;

	@Column(name = "title")
	private String title;

	@Column(name = "name")
	private String name;

	@Column(name = "category")
	private String category;

	@Column(name = "detail")
	private String detail;
	
	
	@Column(name = "publishtime")
	private Timestamp publishTime;
	
	@Column(name = "status")
	private Integer status;
	
	@Column(name = "boardid")
	private Integer boardId;

	public Article() {
	}

	public Article(String title, String author, String category, String detail, Timestamp publishTime, Integer status, Integer boardId) {
		this.title = title;
		this.name = author;
		this.category = category;
		this.detail = detail;
		this.publishTime = publishTime;
		this.status = status;
		this.boardId = boardId;
	}
	
	public Integer getBoardId() {
		return boardId;
	}

	public void setBoardId(Integer boardId) {
		this.boardId = boardId;
	}

	

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public Timestamp getPublishTime() {
		return publishTime;
	}

	public void setPublishTime(Timestamp publishTime) {
		this.publishTime = publishTime;
	}

}
