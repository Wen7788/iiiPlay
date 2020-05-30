package com.iiiproject._00_backstage.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.iiiproject.product.model.OrderBean;





@Repository("dao")
public class SearchOrderDaoImp implements SearchOrderDao {

	@Autowired @Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	
	@Override
	public List<OrderBean> SearchAllOrder(){
		Session session = sessionFactory.getCurrentSession();
		Query<OrderBean> query = session.createQuery("from OrderBean",OrderBean.class);
//		query.setParameter(1, value) 設定條件參數時這樣打，然後加上where id =?1
		return query.list();
		
	}



		
	@Override
	public OrderBean querySearchOrder(Integer orderId) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(OrderBean.class, orderId);
		
	}
}
