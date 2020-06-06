package com.iiiproject.forum.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.iiiproject.forum.model.Reply;
import com.iiiproject.forum.model.ReplyListView;

@Repository("replyDao")
public class ReplyDAO implements IReplyDAO{
	
	@Autowired @Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	@Override
	public Reply insertReply(Reply rBean) {
		Session session = sessionFactory.getCurrentSession();
//		Reply resultBean = session.get(Reply.class, rBean.getReplyId());

//		if (resultBean == null) {
			session.save(rBean);
//		}
		return rBean;
	}
	
	@Override
	public Boolean deleteReply(Integer replyId) {
		Session session = sessionFactory.getCurrentSession();
		Reply resultBean = session.get(Reply.class, replyId);

		if (resultBean != null) {
			session.delete(resultBean);
			return true;
		}
		return false;
	}
	
	@Override
	public Reply updateReply(Reply rBean) {
		Session session = sessionFactory.getCurrentSession();
		Reply resultBean = session.get(Reply.class, rBean.getReplyId());

		if (resultBean != null) {
			resultBean.setReplyId(rBean.getReplyId());
			resultBean.setName(rBean.getName());
			resultBean.setArticleId(rBean.getArticleId());
			resultBean.setReplyDetail(rBean.getReplyDetail());
			session.update(resultBean);
		}
		return resultBean;
	}
	
	@Override
	public Reply queryReply(Integer replyId) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Reply.class, replyId);
	}
	
	@Override
	public List<ReplyListView> getReplyOfArticle(Integer articleId) {
		Session session = sessionFactory.getCurrentSession();
		Query<ReplyListView> query = session.createQuery("FROM ReplyListView WHERE articleid =?1 ORDER BY replytime DESC", ReplyListView.class);
		query.setParameter(1, articleId);
		return query.list();
		
	}
	
	@Override
	public Long getReplyOfArticleCounts(Integer articleId) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("SELECT COUNT(*) FROM ReplyListView WHERE articleid =?1");
		query.setParameter(1, articleId);
		return (Long) query.uniqueResult();
	}
	
	@Override
	public List<ReplyListView> getLast5Reply(){
		Session session = sessionFactory.getCurrentSession();
		Query<ReplyListView> query = session.createQuery("FROM ReplyListView order by replytime desc", ReplyListView.class);
		query.setMaxResults(5);
		return query.list();
	}
}
