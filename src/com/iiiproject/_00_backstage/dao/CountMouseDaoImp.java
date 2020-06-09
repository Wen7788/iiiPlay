package com.iiiproject._00_backstage.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import net.bytebuddy.dynamic.scaffold.MethodRegistry.Handler.ForAbstractMethod;

@Repository("CountMouse")
public class CountMouseDaoImp implements CountMouseDao {
	
	
	
	
	
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	@Override
	public Long getMouse1() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery
		("select isnull(sum(total),0) from CountOrderBean where orderDate between '2020-01-01' and '2020-02-01'and category ='滑鼠'");
		return (Long) query.uniqueResult();
	}
	@Override
	public Long getMouse2() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery
		("select isnull(sum(total),0) from CountOrderBean where orderDate between '2020-02-01' and '2020-03-01'and category ='滑鼠'");
		return (Long) query.uniqueResult();
	}
	@Override
	public Long getMouse3() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery
		("select isnull(sum(total),0) from CountOrderBean where orderDate between '2020-03-01' and '2020-04-01'and category ='滑鼠'");
		return (Long) query.uniqueResult();
	}
	@Override
	public Long getMouse4() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery
		("select isnull(sum(total),0) from CountOrderBean where orderDate between '2020-04-01' and '2020-05-01'and category ='滑鼠'");
		return (Long) query.uniqueResult();
	}
	@Override
	public Long getMouse5() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery
		("select isnull(sum(total),0) from CountOrderBean where orderDate between '2020-0" + 5 + "-01' and '2020-0" +(5+1)+"-01'and category ='滑鼠'");
		return (Long) query.uniqueResult();
	}
	@Override
	public Long getMouse6() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery
		("select isnull(sum(total),0) from CountOrderBean where orderDate between '2020-06-01' and '2020-07-01'and category ='滑鼠'");
		return (Long) query.uniqueResult();
	}
	@Override
	public Long getMouse7() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery
		("select isnull(sum(total),0) from CountOrderBean where orderDate between '2020-07-01' and '2020-08-01'and category ='滑鼠'");
		return (Long) query.uniqueResult();
	}
	@Override
	public Long getMouse8() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery
		("select isnull(sum(total),0) from CountOrderBean where orderDate between '2020-08-01' and '2020-09-01'and category ='滑鼠'");
		return (Long) query.uniqueResult();
	}
	@Override
	public Long getMouse9() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery
		("select isnull(sum(total),0) from CountOrderBean where orderDate between '2020-09-01' and '2020-10-01'and category ='滑鼠'");
		return (Long) query.uniqueResult();
	}
	@Override
	public Long getMouse10() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery
		("select isnull(sum(total),0) from CountOrderBean where orderDate between '2020-10-01' and '2020-11-01'and category ='滑鼠'");
		return (Long) query.uniqueResult();
	}
	@Override
	public Long getMouse11() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery
		("select isnull(sum(total),0) from CountOrderBean where orderDate between '2020-11-01' and '2020-12-01'and category ='滑鼠'");
		return (Long) query.uniqueResult();
	}
	@Override
	public Long getMouse12() {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery
		("select isnull(sum(total),0) from CountOrderBean where orderDate between '2020-12-01' and '2021-01-01'and category ='滑鼠'",Long.class);
		return (Long) query.uniqueResult();
	}
}








