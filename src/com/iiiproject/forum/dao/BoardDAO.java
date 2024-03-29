package com.iiiproject.forum.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.iiiproject.forum.model.Board;
import com.iiiproject.forum.model.BoardListView;

@Repository("boardDao")
public class BoardDAO implements IBoardDAO {

	@Autowired @Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	@Override
	public Board insertBoard(Board bBean) {
		Session session = sessionFactory.getCurrentSession();
//		Board resultBean = session.get(Board.class, bBean.getBoardId());

//		if (resultBean == null) {
			session.save(bBean);
//		}
		return bBean;
	}

	@Override
	public Boolean deleteBoard(Integer boardId) {
		Session session = sessionFactory.getCurrentSession();
		Board resultBean = session.get(Board.class, boardId);

		if (resultBean != null) {
			session.delete(resultBean);
			return true;
		}
		return false;
	}

	@Override
	public Board hideBoard(Integer boardId) {
		Session session = sessionFactory.getCurrentSession();
		Board resultBean = session.get(Board.class, boardId);

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
	public Board updateBoard(Board bBean) {
		Session session = sessionFactory.getCurrentSession();
		Board resultBean = session.get(Board.class, bBean.getBoardId());

		if (resultBean != null) {
			resultBean.setBoardId(bBean.getBoardId());
			resultBean.setBoardName(bBean.getBoardName());
			resultBean.setBoardImg(bBean.getBoardImg());
			resultBean.setImgName(bBean.getImgName());
			session.update(resultBean);
		}
		return resultBean;
	}

	@Override
	public Board queryBoard(Integer boardId) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Board.class, boardId);
	}

	@Override
	public List<Board> queryAllBoard() {
		Session session = sessionFactory.getCurrentSession();
		Query<Board> query = session.createQuery("From Board", Board.class);
		return query.list();
	}
	
	@Override
	public List<Board> queryAllBoardStatus1() {
		Session session = sessionFactory.getCurrentSession();
		Query<Board> query = session.createQuery("From Board WHERE status =?1 ORDER BY boardid DESC", Board.class);
		query.setParameter(1, 1);
		return query.list();
	}

	@Override
	public Integer getBoardClick(Integer boardId) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("SELECT boardClick FROM BoardListView where boardid =?1");
		query.setParameter(1, boardId);
		return (Integer) query.uniqueResult();
	}
	
	@Override
	public List<BoardListView> queryHot5Board(){
		Session session = sessionFactory.getCurrentSession();
		String hql = "FROM BoardListView order by boardclick desc";
		Query<BoardListView> query = session.createQuery(hql, BoardListView.class);
		query.setMaxResults(5);
		return query.list();
	}
	
	@Override
	public Long getAllBoardCount() {
		Session session = sessionFactory.getCurrentSession();
		Query<Long> query = session.createQuery("SELECT COUNT(*) FROM BoardListView", Long.class);
		return query.uniqueResult();
	}
	
	@Override
	public List<BoardListView> getRandom3Board(){
		Session session = sessionFactory.getCurrentSession();
		Query<BoardListView> query = session.createQuery("FROM BoardListView ORDER BY NEWID()", BoardListView.class);
		query.setMaxResults(5);
		return query.list();
	}
}
