package com.iiiproject.forum.service;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iiiproject.forum.dao.IClickDAO;
import com.iiiproject.forum.model.Click;

@Service("clickService")
@Transactional
public class ClickService implements IClickService {

	@Autowired @Qualifier("clickDao")
	private IClickDAO clickDao;

	@Override
	public void insertOrUpdate(Click cBean) {
		
		if(cBean != null) {
			Integer articleId = cBean.getArticleId();
			Date recordDate = cBean.getRecordDate();
			Click check = clickDao.checkClickForUpdate(articleId, recordDate);
			
			if(check != null) {
				System.out.println(check.getClickId());
				
				clickDao.updateClick(check);
			}else {
				System.out.println("insert");
				clickDao.insertClick(cBean);
			}
				
		}

		
//		System.out.println("Service1:"+cBean.getArticleId());
//		Click check = clickDao.getClickBean(cBean.getArticleId());
//		if (check != null) {
//			System.out.println("Service2:"+check.getArticleId());
//			System.out.println("Service3:"+check.getRecordDate());
//			if (check.getArticleId() != cBean.getArticleId() || check.getRecordDate() != cBean.getRecordDate()) {
//				clickDao.insertClick(cBean);
//			}
//			if (check.getArticleId() == cBean.getArticleId() && check.getRecordDate() == cBean.getRecordDate()) {
//				clickDao.updateClick(cBean);
//			}
//		}

	}
}
