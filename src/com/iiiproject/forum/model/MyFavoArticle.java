package com.iiiproject.forum.model;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component("myFavoArticle")
@Entity
@Table(name = "MyFavoArticle")
public class MyFavoArticle implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id @Column(name = "favoId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer favoId;
	
	@Column(name = "userId")
	private String userId;

	
	@Column(name = "articleId")
	private Integer articleId;
	
	@Column(name = "favoAddTime")
	private Timestamp favoAddTime;

	public MyFavoArticle() {
	}

	public MyFavoArticle(Integer favoId, String userId, Integer articleId, Timestamp favoAddTime) {
		this.favoId = favoId;
		this.userId = userId;
		this.articleId = articleId;
		this.favoAddTime = favoAddTime;
	}

	public Integer getFavoId() {
		return favoId;
	}

	public void setFavoId(Integer favoId) {
		this.favoId = favoId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	

	public Integer getArticleId() {
		return articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

	public Timestamp getFavoAddTime() {
		return favoAddTime;
	}

	public void setFavoAddTime(Timestamp favoAddTime) {
		this.favoAddTime = favoAddTime;
	}
	
	
	
	
}
