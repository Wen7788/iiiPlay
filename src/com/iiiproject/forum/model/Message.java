package com.iiiproject.forum.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

@Component("message")
@Entity
@Table(name = "Message")
public class Message implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id @Column(name = "msgId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer msgId;
	
	@Column(name = "msgUrl")
	private String msgUrl;
	
	@JsonFormat(pattern = "yyyy-MM-dd hh:mm:ss")
	@Column(name = "msgTime")
	private String msgTime;
	
	@Column(name = "userId")
	private String userId;
	
	@Column(name = "userName")
	private String userName;
	
	@Column(name = "articleId")
	private Integer articleId;
	
	@Column(name = "authorId")
	private String authorId;
	
	@Column(name = "readStatus")
	private Integer readStatus;
	
	
	
	public Message() {
	}

	public Message(Integer msgId, String msgUrl, String msgTime, String userId, String userName, Integer articleId,
			String authorId, Integer readStatus) {
		this.msgId = msgId;
		this.msgUrl = msgUrl;
		this.msgTime = msgTime;
		this.userId = userId;
		this.userName = userName;
		this.articleId = articleId;
		this.authorId = authorId;
		this.readStatus = readStatus;
		
	}

	public Integer getMsgId() {
		return msgId;
	}

	public void setMsgId(Integer msgId) {
		this.msgId = msgId;
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

	public String getMsgTime() {
		return msgTime;
	}

	public void setMsgTime(String msgTime) {
		this.msgTime = msgTime;
	}

	public Integer getReadStatus() {
		return readStatus;
	}

	public void setReadStatus(Integer readStatus) {
		this.readStatus = readStatus;
	}

	public String getMsgUrl() {
		return msgUrl;
	}

	public void setMsgUrl(String msgUrl) {
		this.msgUrl = msgUrl;
	}

	
	
	
}
