//package com.iiiproject._00_backstage.dao;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.query.Query;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.stereotype.Repository;
//
//import com.iiiproject.forum.model.BoardListView;
//
//@Repository("countarticle")
//public class CountArticleDaoImp implements CountArticleDao {
//		
//	@Autowired
//	@Qualifier("sessionFactory")
//	private SessionFactory sessionFactory;
//	
//	@Override
//	public Integer getArticle(Integer i) {
//		Session session = sessionFactory.getCurrentSession();
//		String sql = ("select BoardListView from BoardListView where boardid =' "+i+" '");
//		
//		Query<BoardListView> query = session.createQuery(sql);
//		return query.list();
//	}
//	
//	
//	
//}
