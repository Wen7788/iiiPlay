package com.iiiproject.forum.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iiiproject.forum.model.Notify;

@Repository("notifyDao")
public class NotifyDAO implements INotifyDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Notify saveMsg(Notify msgBean) {
		Session session = sessionFactory.getCurrentSession();
		session.save(msgBean);
		return msgBean;
		
	}
	
	
	@Override
	public Notify updateStatus(Integer msgId) {
		Session session = sessionFactory.getCurrentSession();
		Notify message = session.get(Notify.class, msgId);
		if (message!=null) {
			if (message.getReadStatus()==0) {
				message.setReadStatus(1);	
				session.update(message);
			}
		}
		return message;
	}
	
	@Override
	public List<Notify> getMyMsg(Integer authorId){
		Session session = sessionFactory.getCurrentSession();
		String hql = "From Notify where authorId=?1 and readStatus=0 order by msgTime desc";
		Query<Notify> query = session.createQuery(hql, Notify.class);
		query.setParameter(1, authorId);
		return query.list();
	}
	@Override
	public Notify getMsg(Integer msgId) {
		Session session = sessionFactory.getCurrentSession();
		Notify message = session.get(Notify.class, msgId);
		return message;
		
	}
}
