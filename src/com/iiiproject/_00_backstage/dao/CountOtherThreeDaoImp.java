package com.iiiproject._00_backstage.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("CountKB")
public class CountOtherThreeDaoImp implements CountOtherThreeDao {
	
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	

	
	
	
	@Override
	public Long getKeyboard(Integer i) {
	
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
		("select isnull(sum(total),0) from CountOrderBean where orderDate between '2020-" + i + "-01' and '2020-" +(i+1)+"-01'and category ='鍵盤'",Long.class);
		return  (Long)query.uniqueResult();
//		return  query.uniqueResult().intValue();
	}
	
	@Override 
	public  Long getMousePad(Integer i) {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
		("select isnull(sum(total),0) from CountOrderBean where orderDate between '2020-" + i + "-01' and '2020-" +(i+1)+"-01'and category ='滑鼠墊'",Long.class);
		return  (Long)query.uniqueResult();
		
	}
	
	@Override
	public Long getEarphone(Integer i) {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
		("select isnull(sum(total),0) from CountOrderBean where orderDate between '2020-" + i + "-01' and '2020-" +(i+1)+"-01'and category ='耳機'",Long.class);
		return  (Long)query.uniqueResult();
		
	}
	
	@Override
	public 	Long getKeyboard12() {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
		("select isnull(sum(total),0) from CountOrderBean where orderDate between '2020-12-01' and '2021-01-01'and category ='鍵盤'",Long.class);
		return (Long) query.uniqueResult();
		
	}
	
	@Override
	public 	Long getMousePad12() {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
				("select isnull(sum(total),0) from CountOrderBean where orderDate between '2020-12-01' and '2021-01-01'and category ='滑鼠墊'",Long.class);
		return (Long) query.uniqueResult();
		
	}
	
	@Override
	public 	Long getEarphone12() {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
				("select isnull(sum(total),0) from CountOrderBean where orderDate between '2020-12-01' and '2021-01-01'and category ='耳機'",Long.class);
		return (Long) query.uniqueResult();
		
	}

}
