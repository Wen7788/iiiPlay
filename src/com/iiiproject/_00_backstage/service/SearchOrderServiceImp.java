package com.iiiproject._00_backstage.service;

import java.util.List;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iiiproject._00_backstage.dao.SearchOrderDaoImp;
import com.iiiproject.product.model.OrderBean;
import com.iiiproject.product.model.ProductBean;




@Service("ecpayServiceImp")
@Transactional
public class SearchOrderServiceImp implements SearchOrderService {
	
	@Autowired @Qualifier("dao")
	private SearchOrderDaoImp dao;
	
	@Override
	public List<OrderBean> SearchAllOrder(){
		List<OrderBean> elist = dao.SearchAllOrder();
		return elist;
	}
	
	@Override
	public  List<ProductBean> SearchAllPdId(){
		 List<ProductBean> elist2 = dao.SearchAllPdId();
		 return elist2;
	}
	
	@Override
	public OrderBean querySearchOrder(Integer orderId) {
		OrderBean resultBean = dao.querySearchOrder(orderId);
		return resultBean;
		
	}
}
