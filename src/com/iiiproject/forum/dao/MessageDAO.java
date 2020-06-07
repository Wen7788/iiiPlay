package com.iiiproject.forum.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iiiproject.forum.model.Message;

@Repository("messageDao")
public class MessageDAO implements IMessageDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Message saveMsg(Message msgBean) {
		Session session = sessionFactory.getCurrentSession();
		session.save(msgBean);
		return msgBean;
		
	}
	
	
	@Override
	public Message updateStatus(Integer msgId) {
		Session session = sessionFactory.getCurrentSession();
		Message message = session.get(Message.class, msgId);
		if (message!=null) {
			if (message.getReadStatus()==0) {
				message.setReadStatus(1);	
				session.update(message);
			}
		}
		return message;
	}
	
	@Override
	public List<Message> getMyMsg(Integer authorId){
		Session session = sessionFactory.getCurrentSession();
		String hql = "From Message where authorId=?1 order by msgTime desc";
		Query<Message> query = session.createQuery(hql, Message.class);
		query.setParameter(1, authorId);
		return query.list();
	}
	@Override
	public Message getMsg(Integer msgId) {
		Session session = sessionFactory.getCurrentSession();
		Message message = session.get(Message.class, msgId);
		return message;
		
	}
}
