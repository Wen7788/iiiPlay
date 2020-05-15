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

@Component(value = "reply")
@Entity
@Table(name = "Reply")
public class Reply implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id @Column(name = "replyid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer replyId;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "articleid")
	private Integer articleId;
	
	@Column(name = "replydetail")
	private String replyDetail;
	

	@Column(name = "replytime")
	private Timestamp replyTime;

	public Reply() {
	}

	public Reply(String name, Integer articleId, String replyDetail, Timestamp replyTime) {
		this.name = name;
		this.articleId = articleId;
		this.replyDetail = replyDetail;
		this.replyTime = replyTime;
	}

	public Integer getReplyId() {
		return replyId;
	}

	public void setReplyId(Integer replyId) {
		this.replyId = replyId;
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

	public String getReplyDetail() {
		return replyDetail;
	}

	public void setReplyDetail(String replyDetail) {
		this.replyDetail = replyDetail;
	}

	public Timestamp getReplyTime() {
		return replyTime;
	}

	public void setReplyTime(Timestamp replyTime) {
		this.replyTime = replyTime;
	}

}
