package com.iiiproject.forum.model;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component(value = "replyListView")
@Entity
@Table(name = "ReplyListView")
public class ReplyListView implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Column(name = "id")
	private Integer id;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "articleid")
	private Integer articleId;
	
	@Column(name = "title")
	private String title;
	
	@Id @Column(name = "replyid")
	private Integer replyId;
	
	@Column(name = "replydetail")
	private String replyDetail;
	
	@Column(name = "replytime")
	private Timestamp replyTime;

	public ReplyListView() {
	}

	public ReplyListView(Integer id, String name, Integer articleId, String title, Integer replyId, String replyDetail,
			Timestamp replyTime) {
		this.id = id;
		this.name = name;
		this.articleId = articleId;
		this.title = title;
		this.replyId = replyId;
		this.replyDetail = replyDetail;
		this.replyTime = replyTime;
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

	public Integer getReplyId() {
		return replyId;
	}

	public void setReplyId(Integer replyId) {
		this.replyId = replyId;
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
