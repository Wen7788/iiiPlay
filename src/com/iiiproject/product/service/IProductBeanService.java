package com.iiiproject.product.service;

import java.util.List;

import com.iiiproject.product.model.ProductBean;

public interface IProductBeanService {
	ProductBean select(int productId);
	List<ProductBean> selecttype(String type);
	ProductBean insert(ProductBean productBean);
	Boolean delete(int productId);
	ProductBean update(int productId, String productNo, String productName, int price);
	List<ProductBean> selectAll();
	byte[] loadimage(int ProductId);
	public List<ProductBean> query(String num ,String content);
	public List<ProductBean> newpd();
	 List<ProductBean> type (String type); //類型
	 List<ProductBean> category (String  com); 
	 public Long allpdcount();
	 List<ProductBean> queryprice(int price1, int price2);
     ProductBean updateProduct(ProductBean pb);
}
