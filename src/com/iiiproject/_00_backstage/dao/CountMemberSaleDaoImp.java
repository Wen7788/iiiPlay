package com.iiiproject._00_backstage.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("CountSale")
public class CountMemberSaleDaoImp implements CountMemberSaleDao{

	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	@Override
	public Long getMaleSale() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery
		("select sum(total) from CountMemberSaleBean where  gender ='male'");
		return (Long) query.uniqueResult();
	}
	
	@Override
	public Long getFemaleSale() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery
		("select sum(total) from CountMemberSaleBean where  gender ='female'");
		return (Long) query.uniqueResult();
	}
	
	@Override 
	public Long getAllSale() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery
		("select sum(total) from CountMemberSaleBean ");
		return (Long) query.uniqueResult();
		
	}
	
	@Override 
	public Long getMale() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery
		("select count(gender) from MemberBean where gender = 'male'");
		return (Long) query.uniqueResult();
		
	}
	
	@Override 
	public Long getFemale() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery
		("select count(gender) from MemberBean where gender = 'female'");
		return (Long) query.uniqueResult();
		
	}
	
//	select sum(total) from membercount where  gender ='male'

	
}
