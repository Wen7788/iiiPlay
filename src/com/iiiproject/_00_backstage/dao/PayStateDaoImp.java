package com.iiiproject._00_backstage.dao;

import java.sql.Timestamp;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.google.common.util.concurrent.Service.State;
import com.iiiproject.product.model.OrderBean;

@Repository("paystate")
public class PayStateDaoImp implements PayStateDao {

	@Autowired @Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	@Override 
	public OrderBean updatepaydate(Integer orderId) {
		Session session = sessionFactory.getCurrentSession();
		OrderBean paystate = session.get(OrderBean.class, orderId);
		
		
		if (paystate.getState() == 1){
			paystate.setState(2);
		}
		paystate.setPayDate(new Timestamp(System.currentTimeMillis()));
				
				
		session.update(paystate);
		return paystate;
	}
	
	
	
	
		
}
