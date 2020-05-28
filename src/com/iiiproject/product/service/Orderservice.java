package com.iiiproject.product.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iiiproject.product.dao.OrderDao;
import com.iiiproject.product.model.OrderBean;
import com.iiiproject.product.model.OrderItemBean;


@Service("OrderService")
@Transactional
public class Orderservice implements IOrderservice {

	
	@Autowired @Qualifier("OrderDao")
	private OrderDao hDao;
	
	public Orderservice() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public OrderBean saveorder(OrderBean order) {
		
		hDao.saveorder(order);
		for(OrderItemBean item: order.getItems()) {
			hDao.saveorderItem(item);
		}
		return order;
	}
	

}
