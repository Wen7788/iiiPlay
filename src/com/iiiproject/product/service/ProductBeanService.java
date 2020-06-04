package com.iiiproject.product.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iiiproject.product.dao.ProductDao;
import com.iiiproject.product.model.ProductBean;

@Service("ProductBeanService")
@Transactional
public class ProductBeanService implements IProductBeanService {

	
	@Autowired @Qualifier("productDao")
	private ProductDao hDao;
	
	public ProductBeanService() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public ProductBean select(int productId) {
		
		return hDao.select(productId);
	}
	
	@Override
	public List<ProductBean> selecttype(String type) {
		
		return hDao.selecttype(type);
	}
	@Override
	public ProductBean insert(ProductBean productBean) {
		// TODO Auto-generated method stub
		return hDao.insert(productBean);
	}

	@Override
	public Boolean delete(int productId) {
		// TODO Auto-generated method stub
		return hDao.delete(productId);
	}

	@Override
	public ProductBean update(int productId, String productNo, String productName, int price) {
		// TODO Auto-generated method stub
		return hDao.update(productId, productNo, productName, price);
	}

	@Override
	public List<ProductBean> selectAll() {
		// TODO Auto-generated method stub
		return hDao.selectAll();
	}
	
	@Override
	public byte[] loadimage(int ProductId) {
		// TODO Auto-generated method stub
		return hDao.loadimage(ProductId);
	}
	
	@Override
	public List<ProductBean> query(String num ,String content){
		return hDao.query(num, content);
	}
	@Override
	public List<ProductBean> newpd() {
		// TODO Auto-generated method stub
		return hDao.newpd();
	}
	@Override
	public List<ProductBean> type(String type) {
		// TODO Auto-generated method stub
		return hDao.type(type);
	}
	@Override
	public List<ProductBean> category(String com) {
		// TODO Auto-generated method stub
		return hDao.category(com);
	}
	
	@Override
	public Long allpdcount() {
	return hDao.allpdcount();
	}
	
	
	@Override
	public List<ProductBean> queryprice(int price1, int price2){
		return hDao.queryprice(price1, price2);
	}

	@Override
	public ProductBean updateProduct(ProductBean pb) {
		return hDao.updateProduct(pb);
		
	}
	
	
}
