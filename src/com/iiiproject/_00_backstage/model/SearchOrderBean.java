//package com.iiiproject._00_backstage.model;
//
//import java.io.Serializable;
//import java.sql.Timestamp;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.Table;
//
//import org.springframework.stereotype.Component;
//
//
//@Component(value = "orders")
//@Entity
//@Table(name = "orders")
//public class SearchOrderBean implements Serializable {
//	private static final long serialVersionUID = 1L;
//	
//	@Id
//	@Column(name = "orderId")
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//    Integer orderId;
//    
//	@Column(name = "id")
//	String id;
//	
//	@Column(name = "name")
//	String name;
//	
//	@Column(name = "total")
//	Integer total;
//	
//	@Column(name = "shippingAddress")
//	String shippingAddress;
//	
//	@Column(name = "email")
//	String email;
//	
//	@Column(name = "phone")
//	String phone;
//	
//	@Column(name = "orderDate")
//	Timestamp orderDate;
//
//	@Column(name = "state")
//	String state;
//	
//	@Column(name = "orderNO")
//	Integer orderNO;
//	
//	@Column(name = "memberId")
//	String memberId;
//	
//	@Column(name = "totalAmount")
//	Integer totalAmount;
//	
//	public SearchOrderBean() {
//
//	}
//
//	
//}
