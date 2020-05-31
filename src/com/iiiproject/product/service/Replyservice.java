package com.iiiproject.product.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iiiproject.forum.model.Reply;
import com.iiiproject.forum.model.ReplyListView;
import com.iiiproject.product.dao.OrderDao;
import com.iiiproject.product.dao.ReplyDao;
import com.iiiproject.product.model.OrderBean;
import com.iiiproject.product.model.OrderItemBean;
import com.iiiproject.product.model.ReplyBean;


@Service("Replyservice")
@Transactional
public class Replyservice implements IReplyservice {

	
	@Autowired @Qualifier("ReplyDao")
	private ReplyDao rDao;
	
	public Replyservice() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public ReplyBean insertReply(ReplyBean rBean) {
		
		 ReplyBean Rp =	rDao.insertReply(rBean);
		
		return Rp;
	}
	@Override
	public List<ReplyBean> getReplyPd(Integer PdId) {
		
		 
		List<ReplyBean> list  =rDao.getReplyPd(PdId);
		
		
		return list ;
	}

}
