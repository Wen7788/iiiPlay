package com.iiiproject.forum.dao;

import java.sql.Timestamp;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
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
			oldBean.setClickId(cBean.getClickId());
			oldBean.setArticleId(cBean.getArticleId());
			oldBean.setCount(oldBean.getCount()+1);
			oldBean.setUpdateTime(new Timestamp(System.currentTimeMillis()));
			oldBean.setRecordDate(cBean.getRecordDate());
			session.update(oldBean);
		}
		return oldBean;
	}
	
	@Override
	public Click getClickBean(Integer clickId) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Click.class, clickId);
	}
}
