package com.iiiproject._00_backstage.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import com.google.protobuf.Timestamp;

@Component(value = "ordercount3")
@Entity
@Table(name = "ordercount3")
public class CountOrderBean  implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "orderId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer orderId;
	
	@Column(name = "id")
	private String id;
	
	@Column(name = "orderDate")
	private Timestamp orderDate;
	
	@Column(name = "state")
	private String state;
	
	@Column(name = "pdId")
	private Integer pdId;
	
	@Column(name = "total")
	private Integer total;
	
	@Column(name = "category")
	private String category;
	
	@Column(name = "companyId")
	private String companyId;
	
	
	public CountOrderBean() {
		
	}

	public CountOrderBean(Integer orderId, String id, Timestamp orderDate, String state, Integer pdId, Integer total,
			String category, String companyId) {
		this.orderId = orderId;
		this.id = id;
		this.orderDate = orderDate;
		this.state = state;
		this.pdId = pdId;
		this.total = total;
		this.category = category;
		this.companyId = companyId;
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Timestamp getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Integer getPdId() {
		return pdId;
	}

	public void setPdId(Integer pdId) {
		this.pdId = pdId;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
