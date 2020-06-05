package com.iiiproject.product.model;

import java.util.Date;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import com.iiiproject.lab02.model.MemberBean;
// 本類別存放訂單資料
// @Component("OrderBean")
@Entity
@Table(name="orders")
public class OrderBean {
	
	@Id
	@Column(name="orderId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer orderId;  //訂單編號
	@Column(name="id")
	String 	id;//會員Id
	@Column(name="name")
	String name; //收貨人
	@Column(name="total")
	Integer	total; //總金額
	@Column(name="shippingAddress")
	String	shippingAddress; //送貨地址
	@Column(name="email")
	String email; //email
	@Column(name="phone")
	String phone; //電話
	@Column(name="orderDate")
	Date  orderDate; //訂單生成日期 
	@Column(name="state")
	Integer state ;//訂單狀態	
	@Column(name = "payDate")
	Date payDate;


	@javax.persistence.Transient
	private MemberBean user;

	//查詢訂單的同時還需要獲取訂單項
	@OneToMany(mappedBy ="order", cascade =CascadeType.PERSIST )	
	Set<OrderItemBean> items = new LinkedHashSet<>();
	
	public OrderBean() {
		
	}
	
	
	public OrderBean(Integer orderId, String id,String name, int total, String shippingAddress, String email,
			String phone, Date orderDate, Integer state , Date payDate) {
		super();
		this.orderId = orderId;
		this.id = id;
		this.name = name;
		this.total = total;
		this.shippingAddress = shippingAddress;
		this.email = email;
		this.phone = phone;
		this.orderDate = orderDate;
		this.state = state;
		this.payDate = payDate;
	}

	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	

	public Date getPayDate() {
		return payDate;
	}


	public void setPayDate(Date payDate) {
		this.payDate = payDate;
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


	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
	public String getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(String shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}
	
	public MemberBean getUser() {
		return user;
	}


	public void setUser(MemberBean user) {
		this.user = user;
	}


	public Set<OrderItemBean> getItems() {
		return items;
	}


	public void setItems(Set<OrderItemBean> items) {
		this.items = items;
	}


	@Override
	public String toString() {
		return "OrderBean [orderId=" + orderId + ", id=" + id + ", name=" + name + ", total=" + total
				+ ", shippingAddress=" + shippingAddress + ", email=" + email + ", phone=" + phone + ", orderDate="
				+ orderDate + ", state=" + state + ", user=" + user + ", items=" + items + "]";
	}
	

}