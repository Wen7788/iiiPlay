package com.iiiproject.product.model;

import java.io.Serializable;
import java.sql.Blob;
import java.sql.Timestamp;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component("productBean")
@Entity
@Table(name="products")
public class ProductBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	
	
	private int productId;
	private String productNo;
	private String productName;
	private String category;
	private byte[] pdimg;	
	private String fileName; //圖檔名
	private int price;
	private int stock;
	private String companyName;
	private Timestamp pdate;
	
	@Id
	@Column(name="pdId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
		public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	@Lob
	@Basic(fetch = FetchType.LAZY)
	public byte[] getPdimg() {
		return pdimg;
	}
	public void setPdimg(byte[] pdimg) {
		this.pdimg = pdimg;
	}
	
	
	@Column(name="pdno")
	public String getProductNo() {
		return productNo;
	}
	
	
	public void setProductNo(String productNo) {
		this.productNo = productNo;
	}
	
	@Column(name="pdname")
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	@Column(name="category")
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	@Column(name="price")
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Column(name="stock")
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	@Column(name="companyId")
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	@Column(name="filename")
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	@Column(name="pdate")
	public Timestamp getPdate() {
		return pdate;
	}
	public void setPdate(Timestamp pdate) {
		this.pdate = pdate;
	}
	
}
