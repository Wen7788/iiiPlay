package com.iiiproject.forum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iiiproject.forum.dao.IMyFavoArticleDAO;
import com.iiiproject.forum.model.FavoListView;
import com.iiiproject.forum.model.MyFavoArticle;

@Service("myFavoArticleService")
@Transactional
public class MyFavoArticleService implements IMyFavoArticleService {
	
	@Autowired
	private IMyFavoArticleDAO myFavoArticleDao;
	
	@Override
	public MyFavoArticle addFavo(MyFavoArticle favoBean) {
		MyFavoArticle addFavo = myFavoArticleDao.addFavo(favoBean);
		return addFavo;
	}

	@Override
	public Boolean deleFavo(Integer articleId, String userId) {
		Boolean deleFavo = myFavoArticleDao.deleFavo(articleId, userId);
		return deleFavo;
	}

	@Override
	public List<FavoListView> getOwnFavoArticle(String userId) {
		List<FavoListView> ownFavoArticle = myFavoArticleDao.getOwnFavoArticle(userId);
		return ownFavoArticle;
	}

	@Override
	public Integer isFavo(Integer articleId, String userId) {
		Integer favo = myFavoArticleDao.isFavo(articleId, userId);
		return favo;
	}

}
