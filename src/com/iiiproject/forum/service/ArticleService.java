package com.iiiproject.forum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.iiiproject.forum.dao.IArticleDAO;
import com.iiiproject.forum.model.Article;
import com.iiiproject.forum.model.ArticleListView;

@Service("articleService")
public class ArticleService {

	@Autowired @Qualifier("articleDao")
	private IArticleDAO articleDao;
	
	public Article insertArticle(Article aBean) {
		Article resultBean = articleDao.insertArticle(aBean);
		return resultBean;
	}
	
	public Boolean deleteArticle(Integer articleId) {
		boolean resultBean = articleDao.deleteArticle(articleId);
		return resultBean;
	}
	
	public Article hideArticle(Integer articleId, Boolean status) {
		Article resultBean = articleDao.hideArticle(articleId, status);
		return resultBean;
	}
	
	public Article updateArticle(Article aBean) {
		Article resultBean = articleDao.updateArticle(aBean);
		return resultBean;
	}
	
	public Article queryArticle(Integer articleId) {
		Article resultBean = articleDao.queryArticle(articleId);
		return resultBean;
	}
	
	public List<ArticleListView> queryAllArticle() {
		List<ArticleListView> allAs = articleDao.queryAllArticle();
		return allAs;
	}
	
	public List<ArticleListView> queryOwnArticle(Integer id) {
		List<ArticleListView> ownAs = articleDao.queryOwnArticle(id);
		return ownAs;
	}
	
	public List<ArticleListView> queryArticleOfBoard(Integer boardId) {
		List<ArticleListView> asOfB = articleDao.queryArticleOfBoard(boardId);
		return asOfB;
	}
	
	public int getAllArticleCounts() {
		int allCounts = articleDao.getAllArticleCounts();
		return allCounts;
	}
	
	public int getOwnArticleCounts(Integer id) {
		int ownCounts = articleDao.getOwnArticleCounts(id);
		return ownCounts;
	}
	
	public int getArticleOfBoardCounts(Integer boardId) {
		int aOfBCounts = articleDao.getArticleOfBoardCounts(boardId);
		return aOfBCounts;
	}
}
