package com.iiiproject._00_backstage.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("Company")
public class CountCompanyDaoImp implements CountCompanyDao {
	
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	@Override
	public  Long getRazer1() {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
		("select sum(total) from CountOrderBean where orderDate between '2020-01-01' and '2020-04-01'and companyId ='雷蛇'",Long.class);
		return  (Long)query.uniqueResult();
	}
	
	@Override
	public  Long getRazer2() {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
		("select sum(total) from CountOrderBean where orderDate between '2020-04-01' and '2020-07-01'and companyId ='雷蛇'",Long.class);
		return  (Long)query.uniqueResult();
	}
	
	@Override
	public  Long getRazer3() {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
		("select sum(total) from CountOrderBean where orderDate between '2020-07-01' and '2020-10-01'and companyId ='雷蛇'",Long.class);
		return  (Long)query.uniqueResult();
	}
	
	@Override
	public  Long getRazer4() {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
		("select sum(total) from CountOrderBean where orderDate between '2020-10-01' and '2021-01-01'and companyId ='雷蛇'",Long.class);
		return  (Long)query.uniqueResult();
	}
	
	
	@Override
	public  Long getLogi1() {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
		("select sum(total) from CountOrderBean where orderDate between '2020-01-01' and '2020-04-01'and companyId ='羅技'",Long.class);
		return  (Long)query.uniqueResult();
	}
	
	@Override
	public  Long getLogi2() {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
		("select sum(total) from CountOrderBean where orderDate between '2020-04-01' and '2020-07-01'and companyId ='羅技'",Long.class);
		return  (Long)query.uniqueResult();
	}
	
	@Override
	public  Long getLogi3() {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
		("select sum(total) from CountOrderBean where orderDate between '2020-07-01' and '2020-10-01'and companyId ='羅技'",Long.class);
		return  (Long)query.uniqueResult();
	}
	
	@Override
	public  Long getLogi4() {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
		("select sum(total) from CountOrderBean where orderDate between '2020-10-01' and '2021-01-01'and companyId ='羅技'",Long.class);
		return  (Long)query.uniqueResult();
	}
	
	@Override
	public  Long getYuet1() {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
		("select sum(total) from CountOrderBean where orderDate between '2020-01-01' and '2020-04-01'and companyId ='曜越'",Long.class);
		return  (Long)query.uniqueResult();
	}
	
	@Override
	public  Long getYuet2() {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
		("select sum(total) from CountOrderBean where orderDate between '2020-04-01' and '2020-07-01'and companyId ='曜越'",Long.class);
		return  (Long)query.uniqueResult();
	}
	
	@Override
	public  Long getYuet3() {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
		("select sum(total) from CountOrderBean where orderDate between '2020-07-01' and '2020-10-01'and companyId ='曜越'",Long.class);
		return  (Long)query.uniqueResult();
	}
	
	@Override
	public  Long getYuet4() {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
		("select sum(total) from CountOrderBean where orderDate between '2020-10-01' and '2021-01-01'and companyId ='曜越'",Long.class);
		return  (Long)query.uniqueResult();
	}
}
