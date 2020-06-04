package com.iiiproject._00_backstage.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.iiiproject.product.model.OrderBean;
import com.iiiproject.product.model.ProductBean;





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
	public List<ProductBean> SearchAllPdId(){
		Session session = sessionFactory.getCurrentSession();
		Query<ProductBean> query2 = session.createQuery("from ProductBean",ProductBean.class);
		return query2.list();
	}

//	@Override 
//	public  ProductBean querypdname(Integer pdId) {
//		Session session = sessionFactory.getCurrentSession();
//		return session.get(ProductBean.class, pdId);
//	}

		
	@Override
	public OrderBean querySearchOrder(Integer orderId) {
		Session session = sessionFactory.getCurrentSession();
		// session.createSQLQuery("SELECT COUNT(*) FROM [Gamedb].[dbo].[MemberTest]");
		return session.get(OrderBean.class, orderId);
		
	}
}
