package com.iiiproject._00_backstage.dao;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("Count")
public class CountDaoImp implements CountDao {

	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	Date dNow = new Date();
	SimpleDateFormat sdft = new SimpleDateFormat("yyyy/MM/dd");
	String time = sdft.format(dNow);

	
	@Override
	public Long getMemberCount() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("select count(*) from MemberBean where DateDiff(dd,registerTime,getdate())=0");
		return (Long) query.uniqueResult();
	}
	
	@Override
	public Long getSaleCount() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("select isnull(sum(total),0) from OrderBean where DateDiff(dd,orderDate,getdate())=0");
		return (Long) query.uniqueResult();
	}
	
	@Override
	public Long getOrderCount() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("select count(*) from OrderBean where DateDiff(dd,orderDate,getdate())=0");
		return (Long) query.uniqueResult();
	}
	
//	@Override
//	public Long getMouse5() {
//		Session session = sessionFactory.getCurrentSession();
//		Query query = session.createQuery
//		("select sum(total) from CountOrderBean where orderDate between '2020-05-01' and '2020-06-01'and category ='鍵盤'");
//		System.out.println((Long) query.uniqueResult());
//		return (Long) query.uniqueResult();
//	}
	
//	select sum(total)   from ordercount3 where orderDate between '2020-05-01' and '2020-06-01' and  category ='鍵盤'

	
//	@Override
//	public Integer getTestCount(Integer orderId) {
//		Session session = sessionFactory.getCurrentSession();
//		Query query = session.createQuery("select total from BSindexBean where orderId =?1");
//		query.setParameter(1, orderId);
//		System.out.println((Long) query.uniqueResult());
//		
//		return (Integer) query.uniqueResult();
//	}
	
//	select sum("total") from orderitem 
//	select count(orderDate) from orders where orderDate between '2020-05-01' and '2020-05-30'
}
