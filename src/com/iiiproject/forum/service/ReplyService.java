package com.iiiproject.forum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.iiiproject.forum.dao.ReplyDAO;
import com.iiiproject.forum.model.Reply;
import com.iiiproject.forum.model.ReplyListView;

@Service("replyService")
public class ReplyService {
	
	@Autowired @Qualifier("replyDao")
	private ReplyDAO replyDao;
	
	public Reply insertReply(Reply rBean) {
		Reply insertBean = replyDao.insertReply(rBean);
		return insertBean;
	}
	
	public Boolean deleteReply(Integer replyId) {
		Boolean deleteBean = replyDao.deleteReply(replyId);
		return deleteBean;
	}
	
	public Reply updateReply(Reply rBean) {
		Reply updateBean = replyDao.updateReply(rBean);
		return updateBean;
	}
	
	public Reply queryReply(Integer replyId) {
		Reply queryBean = replyDao.queryReply(replyId);
		return queryBean;
	}
	
	public List<ReplyListView> getReplyOfArticle(Integer articleId) {
		List<ReplyListView> rlist = replyDao.getReplyOfArticle(articleId);
		return rlist;
	}
	
	public int getReplyOfArticleCounts(Integer articleId) {
		int rCount = replyDao.getReplyOfArticleCounts(articleId);
		return rCount;
	}
}
