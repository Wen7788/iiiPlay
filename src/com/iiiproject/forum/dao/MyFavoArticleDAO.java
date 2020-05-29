package com.iiiproject.forum.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iiiproject.forum.model.FavoListView;
import com.iiiproject.forum.model.MyFavoArticle;

@Repository("myFavoArticleDao")
public class MyFavoArticleDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public MyFavoArticle addFavo(MyFavoArticle favoBean) {
		Session session = sessionFactory.getCurrentSession();
		session.save(favoBean);
		return favoBean;
	}
	
	public Boolean deleFavo(Integer favoId) {
		Session session = sessionFactory.getCurrentSession();
		MyFavoArticle myFavoBean = session.get(MyFavoArticle.class, favoId);
		if (myFavoBean!=null) {
			session.delete(myFavoBean);
			return true;
		}
		return false;
	}
	
	public List<FavoListView> getOwnFavoArticle(String userId){
		Session session = sessionFactory.getCurrentSession();
		Query<FavoListView> query = session.createQuery("FROM FavoListView where userId =?1 ORDER BY favoAddTime Desc", FavoListView.class);
		query.setParameter(1, userId);
		return query.list();
	
	}
	
	
}
