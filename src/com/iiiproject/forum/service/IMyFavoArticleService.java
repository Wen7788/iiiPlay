package com.iiiproject.forum.service;

import java.util.List;

import com.iiiproject.forum.model.FavoListView;
import com.iiiproject.forum.model.MyFavoArticle;

public interface IMyFavoArticleService {
	
	MyFavoArticle addFavo(MyFavoArticle favoBean);

	Boolean deleFavo(Integer favoId);

	List<FavoListView> getOwnFavoArticle(String userId);

	FavoListView isFavo(Integer articleId, String userId);
}
