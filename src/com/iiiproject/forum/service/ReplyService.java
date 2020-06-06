package com.iiiproject.forum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iiiproject.forum.dao.IReplyDAO;
import com.iiiproject.forum.model.Reply;
import com.iiiproject.forum.model.ReplyListView;

@Service("replyService")
@Transactional
public class ReplyService implements IReplyService {
	
	@Autowired @Qualifier("replyDao")
	private IReplyDAO replyDao;
	
	@Override
	public Reply insertReply(Reply rBean) {
		Reply insertBean = replyDao.insertReply(rBean);
		return insertBean;
	}
	
	@Override
	public Boolean deleteReply(Integer replyId) {
		Boolean deleteBean = replyDao.deleteReply(replyId);
		return deleteBean;
	}
	
	@Override
	public Reply updateReply(Reply rBean) {
		Reply updateBean = replyDao.updateReply(rBean);
		return updateBean;
	}
	
	@Override
	public Reply queryReply(Integer replyId) {
		Reply queryBean = replyDao.queryReply(replyId);
		return queryBean;
	}
	
	@Override
	public List<ReplyListView> getReplyOfArticle(Integer articleId) {
		List<ReplyListView> rlist = replyDao.getReplyOfArticle(articleId);
		return rlist;
	}
	
	@Override
	public Long getReplyOfArticleCounts(Integer articleId) {
		Long rCount = replyDao.getReplyOfArticleCounts(articleId);
		return rCount;
	}

	@Override
	public List<ReplyListView> getLast5Reply() {
		List<ReplyListView> last5Reply = replyDao.getLast5Reply();
		return last5Reply;
	}
}
