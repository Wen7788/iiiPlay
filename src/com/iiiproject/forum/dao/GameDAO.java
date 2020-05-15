package com.iiiproject.forum.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("gameDao")
public class GameDAO {
	
	@Autowired @Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	public List<String> getGameList() {
		Session session = sessionFactory.getCurrentSession();
		String hql = "SELECT gamename FROM Game ORDER BY gameid";
		Query<String> query = session.createQuery(hql);
		return query.getResultList();
	}
	
	public String queryGameByKeyword(String keyword) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "select gamename from Game where author like '%" + keyword + "%' order by gamename";
		Query query = session.createQuery(hql);
		return (String) query.uniqueResult();
	}
}
