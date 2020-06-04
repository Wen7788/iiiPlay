package com.iiiproject._00_backstage.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("Test")
public class TestDaoImp  implements TestDao{

	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	
	
	
	@Override 
	public Long testget(Integer i) {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
		("select sum(total) from CountOrderBean where orderDate between '2020-" + i + "-01' and '2020-" +(i+1)+"-01'and category ='滑鼠'",Long.class);
		System.out.println("測試測試測試測試測試測試"+(Long) query.uniqueResult());
		return (Long) query.uniqueResult();
	}
}
