package com.iiiproject.product.model;

import java.beans.Transient;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

//@Component("OrderItemBean")
@Entity
@Table(name="orderitem")
public class OrderItemBean {
	@Id
	@Column(name="itemId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer itemId;
	@Column(name=" pdId")
	Integer pdId;  //商品id  
//	@Column(name="orderId")
//	int orderId;  //訂單編號
	@Column(name="quantity")
	Integer quantity; 
	@Column(name="total")
	Integer total; 
	@javax.persistence.Transient
	private ProductBean product;
	

	@ManyToOne
	@JoinColumn(name="FK_orderId")   
	private OrderBean order;
	
	public OrderItemBean() {
		super();
	}

	public OrderItemBean(int pdId,  int quantity, int total) {
		super();
		this.pdId = pdId;
//		this.orderId = orderId;
		this.quantity = quantity;
		this.total = total;
	}
	
	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	
	public int getPdId() {
		return pdId;
	}

	public void setPdId(int pdId) {
		this.pdId = pdId;
	}

//	public int getOrderId() {
//		return orderId;
//	}
//
//	public void setOrderId(int orderId) {
//		this.orderId = orderId;
//	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public ProductBean getProduct() {
		return product;
	}

	public void setProduct(ProductBean product) {
		this.product = product;
	}

	public OrderBean getOrder() {
		return order;
	}

	public void setOrder(OrderBean order) {
		this.order = order;
	}
	
	
}