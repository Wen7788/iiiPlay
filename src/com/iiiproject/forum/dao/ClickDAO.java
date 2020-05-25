package com.iiiproject.forum.dao;

import java.sql.Date;
import java.sql.Timestamp;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.iiiproject.forum.model.Click;

@Repository("clickDao")
public class ClickDAO implements IClickDAO {
	
	@Autowired @Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	@Override
	public Click insertClick(Click cBean) {
		Session session = sessionFactory.getCurrentSession();
		session.save(cBean);
		return cBean;
		
	}
	
	@Override
	public Click updateClick(Click cBean) {
		Session session = sessionFactory.getCurrentSession();

		Click oldBean = session.get(Click.class, cBean.getClickId());
		
		if (oldBean != null) {

			oldBean.setClickId(oldBean.getClickId());
			oldBean.setArticleId(cBean.getArticleId());
			oldBean.setCount(oldBean.getCount()+1);
			oldBean.setUpdateTime(new Timestamp(System.currentTimeMillis()));
			oldBean.setRecordDate(cBean.getRecordDate());
			session.update(oldBean);
		}
		return oldBean;
	}
	
	@Override
	public Click checkClickForUpdate(Integer articleId, Date recordDate) {
		Session session = sessionFactory.getCurrentSession();
		String hqlForUpdate = "FROM Click where articleid =?1 and recorddate =?2";
		Query<Click> query = session.createQuery(hqlForUpdate, Click.class);
		query.setParameter(1, articleId);
		query.setParameter(2, recordDate);
		return query.uniqueResult();
	}
	
	

}
