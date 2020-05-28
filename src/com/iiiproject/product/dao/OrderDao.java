   package com.iiiproject.product.dao;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.iiiproject.product.model.OrderBean;
import com.iiiproject.product.model.OrderItemBean;
import com.iiiproject.product.model.ProductBean;





@Repository("OrderDao")
public class OrderDao implements IOrderDao {
	
	@Autowired @Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	
	@Override
	public void saveorder(OrderBean order) {
		Session session = sessionFactory.getCurrentSession();
		session.save(order);
		
		
	}
	@Override
	public void saveorderItem(OrderItemBean Item) {
		Session session = sessionFactory.getCurrentSession();
		session.save(Item);
		
	}
			
			
			
			
	
	

}
