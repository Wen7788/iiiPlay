package com.iiiproject.forum.dao;

import java.sql.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.iiiproject.forum.model.Article;
import com.iiiproject.forum.model.ArticleListView;
import com.iiiproject.forum.model.Click;
import com.iiiproject.forum.service.IArticleService;

@Repository("articleDao")
public class ArticleDAO implements IArticleDAO {
	
	@Autowired @Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	@Override
	public Article insertArticle(Article aBean) {
		Session session = sessionFactory.getCurrentSession();
//		Article resultBean = session.get(Article.class, aBean.getArticleId());
	
//		if (resultBean == null) {
			session.save(aBean);	
//		}
		return aBean;
	}
	
	@Override
	public Boolean deleteArticle(Integer articleId) {
		Session session = sessionFactory.getCurrentSession();
		Article resultBean = session.get(Article.class, articleId);

		if (resultBean != null) {
			session.delete(resultBean);
			return true;
		}
		return false;
	}
	
	@Override
	public Article hideArticle(Integer articleId) {
		Session session = sessionFactory.getCurrentSession();
		Article resultBean = session.get(Article.class, articleId);

		if (resultBean != null) {
			if (resultBean.getStatus()==1) {
				resultBean.setStatus(0);
				session.update(resultBean);
			}
			else{
				resultBean.setStatus(1);
				session.update(resultBean);
			}
		}
		return resultBean;
	}
	
	@Override
	public Article updateArticle(Article aBean) {
		Session session = sessionFactory.getCurrentSession();
		Article resultBean = session.get(Article.class, aBean.getArticleId());

		if (resultBean != null) {
			resultBean.setArticleId(aBean.getArticleId());
			resultBean.setTitle(aBean.getTitle());
			resultBean.setName(aBean.getName());
			resultBean.setCategory(aBean.getCategory());
			resultBean.setDetail(aBean.getDetail());
			session.update(resultBean);
		}
		return resultBean;
	}
	
	@Override
	public Article queryArticle(Integer articleId) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Article.class, articleId);
	}
	
	@Override
	public List<ArticleListView> queryAllArticle() {
		Session session = sessionFactory.getCurrentSession();
		Query<ArticleListView> query = session.createQuery("FROM ArticleListView ORDER BY publishtime DESC", ArticleListView.class);
		return query.list();
	}
	
	
	
	@Override
	public List<ArticleListView> queryOwnArticle(String id) {
		Session session = sessionFactory.getCurrentSession();
		Query<ArticleListView> query = session.createQuery("FROM ArticleListView WHERE id =?1 ORDER BY publishtime DESC", ArticleListView.class);
		query.setParameter(1, id);
		return query.list();
	}
	
	@Override
	public List<ArticleListView> queryArticleOfBoard(Integer boardId) {
		Session session = sessionFactory.getCurrentSession();
		Query<ArticleListView> query = session.createQuery("FROM ArticleListView WHERE boardid =?1 ORDER BY publishtime DESC", ArticleListView.class);
		query.setParameter(1, boardId);
		return query.list();
	}
	
	@Override
	public List<ArticleListView> queryArticleOfBoardStatus1(Integer boardId) {
		Session session = sessionFactory.getCurrentSession();
		Query<ArticleListView> query = session.createQuery("FROM ArticleListView WHERE boardid =?1 and status =?2 ORDER BY publishtime DESC", ArticleListView.class);
		query.setParameter(1, boardId);
		query.setParameter(2, 1);		
		return query.list();
	}
	
	@Override
	public Long getAllArticleCounts() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("SELECT COUNT(*) FROM ArticleListView");
		return (Long) query.uniqueResult();
	}
	
	@Override
	public Long getOwnArticleCounts(String id) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("SELECT COUNT(*) FROM ArticleListView WHERE id =?1");
		query.setParameter(1, id);
		return (Long) query.uniqueResult();
	}
	
	@Override
	public Long getArticleOfBoardCounts(Integer boardId) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("SELECT COUNT(*) FROM ArticleListView WHERE boardid =?1");
		query.setParameter(1, boardId);
		return (Long) query.uniqueResult();
	}
	
	@Override
	public List<ArticleListView> queryLast5Article(){
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM ArticleListView order by publishtime desc";
		Query<ArticleListView> query = session.createQuery(hql, ArticleListView.class);
		query.setMaxResults(5);
		return query.list();
	}
	
	@Override
	public List<ArticleListView> likeQuery(String title){
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM ArticleListView WHERE title LIKE :title";
		Query<ArticleListView> query = session.createQuery(hql, ArticleListView.class);
		query.setParameter("title", "%"+title+"%");
		
		return query.list();
	}
	
	@Override
	public List<Click> dayClickTop5(Date today) {
		Session session = sessionFactory.getCurrentSession();
		String hql = "from Click where recorddate =?1 order by ccount desc";
		Query<Click> query = session.createQuery(hql, Click.class);
		query.setParameter(1, today);
		query.setMaxResults(5);
		return query.list();
	}
	
}
