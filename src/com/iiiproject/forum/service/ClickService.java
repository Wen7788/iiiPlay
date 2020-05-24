package com.iiiproject.forum.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iiiproject.forum.dao.IClickDAO;
import com.iiiproject.forum.model.Click;

@Service("clickService")
@Transactional
public class ClickService {
	
	@Autowired @Qualifier("clickDao")
	private IClickDAO clickDao;
	
	public void insertOrUpdate(Click cBean) {
		Click checkClick = clickDao.getClickBean(cBean.getClickId());
		if (  checkClick.getArticleId()!=cBean.getArticleId() || 
			  checkClick.getRecordDate()!=cBean.getRecordDate() ) {
			clickDao.insertClick(cBean);
		}
		if ( checkClick.getArticleId()==cBean.getArticleId() && 
			 checkClick.getRecordDate()==cBean.getRecordDate() ) {
			clickDao.updateClick(cBean);
		}
		
		
	}
}
