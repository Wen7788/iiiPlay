package com.iiiproject.forum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.iiiproject.forum.dao.IArticleDAO;
import com.iiiproject.forum.model.Article;
import com.iiiproject.forum.model.ArticleListView;

@Service("articleService")
public class ArticleService implements IArticleService {

	@Autowired @Qualifier("articleDao")
	private IArticleDAO articleDao;
	
	@Override
	public Article insertArticle(Article aBean) {
		Article resultBean = articleDao.insertArticle(aBean);
		return resultBean;
	}
	
	@Override
	public Boolean deleteArticle(Integer articleId) {
		boolean resultBean = articleDao.deleteArticle(articleId);
		return resultBean;
	}
	
	@Override
	public Article hideArticle(Integer articleId) {
		Article resultBean = articleDao.hideArticle(articleId);
		return resultBean;
	}
	
	@Override
	public Article updateArticle(Article aBean) {
		Article resultBean = articleDao.updateArticle(aBean);
		return resultBean;
	}
	
	@Override
	public Article queryArticle(Integer articleId) {
		Article resultBean = articleDao.queryArticle(articleId);
		return resultBean;
	}
	
	@Override
	public List<ArticleListView> queryAllArticle() {
		List<ArticleListView> allAs = articleDao.queryAllArticle();
		return allAs;
	}
	
	@Override
	public List<ArticleListView> queryAllArticleStatus1(){
		List<ArticleListView> allArticleSt1 = articleDao.queryAllArticleStatus1();
		return allArticleSt1;
	}
	
	
	@Override
	public List<ArticleListView> queryOwnArticle(Integer id) {
		List<ArticleListView> ownAs = articleDao.queryOwnArticle(id);
		return ownAs;
	}
	
	@Override
	public List<ArticleListView> queryArticleOfBoard(Integer boardId) {
		List<ArticleListView> asOfB = articleDao.queryArticleOfBoard(boardId);
		return asOfB;
	}
	
	@Override
	public int getAllArticleCounts() {
		int allCounts = articleDao.getAllArticleCounts();
		return allCounts;
	}
	
	@Override
	public int getOwnArticleCounts(Integer id) {
		int ownCounts = articleDao.getOwnArticleCounts(id);
		return ownCounts;
	}
	
	@Override
	public int getArticleOfBoardCounts(Integer boardId) {
		int aOfBCounts = articleDao.getArticleOfBoardCounts(boardId);
		return aOfBCounts;
	}
}
