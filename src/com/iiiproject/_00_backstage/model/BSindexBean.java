//package com.iiiproject._00_backstage.model;
//
//import java.io.Serializable;
//
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
//import javax.persistence.Table;
//
//
//import org.springframework.stereotype.Component;
//
//import com.iiiproject.product.model.OrderBean;
//import com.iiiproject.product.model.OrderItemBean;
//import com.iiiproject.product.model.ProductBean;
//
//
//@Component(value = "pdChart")
//@Entity
//@Table(name = "pdChart")
//public class BSindexBean implements Serializable {
//	private static final long serialVersionUID = 1L;
//	
//	
//	@Id
//	@JoinColumn(name = "pdcid")
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	Integer pdcid;
//	
//	
//	@ManyToOne
//	@JoinColumn(name = "itemId")
//	private OrderItemBean orderItemBean;
//	
//	@ManyToOne
//	@JoinColumn(name = "orderId")
//	private OrderBean orderBean;
//	
//	@ManyToOne
//	@JoinColumn(name = "pdId")
//	private ProductBean productBean;
//
//	public Integer getPdcid() {
//		return pdcid;
//	}
//
//	public void setPdcid(Integer pdcid) {
//		this.pdcid = pdcid;
//	}
//
//	public OrderItemBean getOrderItemBean() {
//		return orderItemBean;
//	}
//
//	public void setOrderItemBean(OrderItemBean orderItemBean) {
//		this.orderItemBean = orderItemBean;
//	}
//
//	public OrderBean getOrderBean() {
//		return orderBean;
//	}
//
//	public void setOrderBean(OrderBean orderBean) {
//		this.orderBean = orderBean;
//	}
//
//	public ProductBean getProductBean() {
//		return productBean;
//	}
//
//	public void setProductBean(ProductBean productBean) {
//		this.productBean = productBean;
//	}
//
//	public static long getSerialversionuid() {
//		return serialVersionUID;
//	}
//	
//	
//}
