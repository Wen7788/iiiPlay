package com.iiiproject.forum.model;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component("favoListView")
@Entity
@Table(name = "FavoListView")
public class FavoListView implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Column(name = "favoId")
	private Integer favoId;
	
	@Id
	@Column(name = "userId")
	private String userId;
	
	@Column(name = "userName")
	private String userName;
	
	@Column(name = "favoAddTime")
	private Timestamp favoAddTime;
	
	@Column(name = "articleid")
	private Integer articleId;
	
	@Column(name = "id")
	private String authorId;
	
	@Column(name = "name")
	private String authorName;
	
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
	
	@Column(name = "clicksum")
	private Integer clickSum;

	public FavoListView() {
	}

	public FavoListView(Integer favoId, String userId, String userName, Timestamp favoAddTime, Integer articleId,
			String authorId, String authorName, String category, String title, String detail, Timestamp publishTime,
			Integer boardId, String boardName, Integer status, Integer replyCount, Integer clickSum) {
		this.favoId = favoId;
		this.userId = userId;
		this.userName = userName;
		this.favoAddTime = favoAddTime;
		this.articleId = articleId;
		this.authorId = authorId;
		this.authorName = authorName;
		this.category = category;
		this.title = title;
		this.detail = detail;
		this.publishTime = publishTime;
		this.boardId = boardId;
		this.boardName = boardName;
		this.status = status;
		this.replyCount = replyCount;
		this.clickSum = clickSum;
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

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Timestamp getFavoAddTime() {
		return favoAddTime;
	}

	public void setFavoAddTime(Timestamp favoAddTime) {
		this.favoAddTime = favoAddTime;
	}

	public Integer getArticleId() {
		return articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

	public String getAuthorId() {
		return authorId;
	}

	public void setAuthorId(String authorId) {
		this.authorId = authorId;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getReplyCount() {
		return replyCount;
	}

	public void setReplyCount(Integer replyCount) {
		this.replyCount = replyCount;
	}

	public Integer getClickSum() {
		return clickSum;
	}

	public void setClickSum(Integer clickSum) {
		this.clickSum = clickSum;
	}
	
	
}
