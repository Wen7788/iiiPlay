package com.iiiproject.forum.dao;

import java.sql.Date;
import java.util.List;

import com.iiiproject.forum.model.Article;
import com.iiiproject.forum.model.ArticleListView;
import com.iiiproject.forum.model.Click;

public interface IArticleDAO {

	Article insertArticle(Article aBean);

	Boolean deleteArticle(Integer articleId);

	Article hideArticle(Integer articleId);

	Article updateArticle(Article aBean);

	Article queryArticle(Integer articleId);

	List<ArticleListView> queryAllArticle();

	List<ArticleListView> queryOwnArticle(String id);

	List<ArticleListView> queryArticleOfBoard(Integer boardId);

	Long getAllArticleCounts();

	Long getOwnArticleCounts(String id);

	Long getArticleOfBoardCounts(Integer boardId);

	List<ArticleListView> queryArticleOfBoardStatus1(Integer boardId);

	List<ArticleListView> queryLast5Article();

	List<ArticleListView> likeQuery(String title);

	List<Click> dayClickTop5(Date today);

	ArticleListView getArticle(Integer articleId);

	

}