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

	List<ArticleListView> queryAllArticleStatus1();

	List<ArticleListView> queryOwnArticle(Integer id);

	List<ArticleListView> queryArticleOfBoard(Integer boardId);

	int getAllArticleCounts();

	int getOwnArticleCounts(Integer id);

	int getArticleOfBoardCounts(Integer boardId);

}