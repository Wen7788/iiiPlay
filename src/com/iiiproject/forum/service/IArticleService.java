package com.iiiproject.forum.service;

import java.util.List;

import com.iiiproject.forum.model.Article;
import com.iiiproject.forum.model.ArticleListView;

public interface IArticleService {

	Article insertArticle(Article aBean);

	Boolean deleteArticle(Integer articleId);

	Article hideArticle(Integer articleId);

	Article updateArticle(Article aBean);

	Article queryArticle(Integer articleId);

	List<ArticleListView> queryAllArticle();

	List<ArticleListView> queryArticleOfBoardStatus1(Integer boardId);

	List<ArticleListView> queryOwnArticle(String id);

	List<ArticleListView> queryArticleOfBoard(Integer boardId);

	Long getAllArticleCounts();

	Long getOwnArticleCounts(String id);

	Long getArticleOfBoardCounts(Integer boardId);
	
	List<ArticleListView> queryLast5Article();

}