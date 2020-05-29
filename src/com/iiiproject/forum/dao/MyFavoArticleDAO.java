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
public class MyFavoArticleDAO implements IMyFavoArticleDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public MyFavoArticle addFavo(MyFavoArticle favoBean) {
		Session session = sessionFactory.getCurrentSession();
		session.save(favoBean);
		return favoBean;
	}
	
	@Override
	public Boolean deleFavo(Integer favoId) {
		Session session = sessionFactory.getCurrentSession();
		MyFavoArticle myFavoBean = session.get(MyFavoArticle.class, favoId);
		if (myFavoBean!=null) {
			session.delete(myFavoBean);
			return true;
		}
		return false;
	}
	
	@Override
	public List<FavoListView> getOwnFavoArticle(String userId){
		Session session = sessionFactory.getCurrentSession();
		Query<FavoListView> query = session.createQuery("FROM FavoListView where userId =?1 ORDER BY favoAddTime Desc", FavoListView.class);
		query.setParameter(1, userId);
		return query.list();
	
	}
	
	@Override
	public FavoListView isFavo(Integer articleId, String userId) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM FavoListView where articleid=?1 and userId=?2";
		Query<FavoListView> query = session.createQuery(hql, FavoListView.class);
		query.setParameter(1, articleId);
		query.setParameter(2, userId);
		return query.uniqueResult();
		
	}
}
