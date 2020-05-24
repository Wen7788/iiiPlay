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

@Component(value = "click")
@Entity
@Table(name = "Click")
public class Click implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id @Column(name = "clickid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer clickId;
	
	@Column(name = "articleid")
	private Integer articleId;
	
	@Column(name = "count")
	private Integer count;
	
	@Column(name = "createtime")
	private Timestamp createTime;
	
	@Column(name = "updatetime")
	private Timestamp updateTime;
	
	@Column(name = "recorddate")
	private Timestamp recordDate;

	public Click(Integer clickId, Integer articleId, Integer count, Timestamp createTime, Timestamp updateTime,
			Timestamp recordDate) {
		this.clickId = clickId;
		this.articleId = articleId;
		this.count = count;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.recordDate = recordDate;
	}

	public Click() {
	}

	public Integer getClickId() {
		return clickId;
	}

	public void setClickId(Integer clickId) {
		this.clickId = clickId;
	}

	public Integer getArticleId() {
		return articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public Timestamp getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	public Timestamp getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}

	public Timestamp getRecordDate() {
		return recordDate;
	}

	public void setRecordDate(Timestamp recordDate) {
		this.recordDate = recordDate;
	}
	
	
}
