package com.iiiproject.forum.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iiiproject.forum.dao.IArticleDAO;
import com.iiiproject.forum.model.Article;
import com.iiiproject.forum.model.ArticleListView;
import com.iiiproject.forum.model.Click;

@Service("articleService")
@Transactional
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
		Boolean resultBean = articleDao.deleteArticle(articleId);
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
	public List<ArticleListView> queryArticleOfBoardStatus1(Integer boardId){
		List<ArticleListView> allArticleSt1 = articleDao.queryArticleOfBoardStatus1(boardId);
		return allArticleSt1;
	}
	
	
	@Override
	public List<ArticleListView> queryOwnArticle(String id) {
		List<ArticleListView> ownAs = articleDao.queryOwnArticle(id);
		return ownAs;
	}
	
	@Override
	public List<ArticleListView> queryArticleOfBoard(Integer boardId) {
		List<ArticleListView> asOfB = articleDao.queryArticleOfBoard(boardId);
		return asOfB;
	}
	
	@Override
	public Long getAllArticleCounts() {
		Long allCounts = articleDao.getAllArticleCounts();
		return allCounts;
	}
	
	@Override
	public Long getOwnArticleCounts(String id) {
		Long ownCounts = articleDao.getOwnArticleCounts(id);
		return ownCounts;
	}
	
	@Override
	public Long getArticleOfBoardCounts(Integer boardId) {
		Long aOfBCounts = articleDao.getArticleOfBoardCounts(boardId);
		return aOfBCounts;
	}

	@Override
	public List<ArticleListView> queryLast5Article() {
		List<ArticleListView> last5Article = articleDao.queryLast5Article();
		return last5Article;
	}

	@Override
	public List<ArticleListView> likeQuery(String title) {
		List<ArticleListView> titleLikeQuery = articleDao.likeQuery(title);
		return titleLikeQuery;
	}

	@Override
	public List<Click> dayClickTop5(Date today) {
		List<Click> dayClickTop5 = articleDao.dayClickTop5(today);
		return dayClickTop5;
	}

	@Override
	public ArticleListView getArticle(Integer articleId) {
		ArticleListView article = articleDao.getArticle(articleId);
		return article;
	}

	
}
