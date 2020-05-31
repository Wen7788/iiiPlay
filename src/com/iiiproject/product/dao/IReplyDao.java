package com.iiiproject.product.dao;



import java.util.List;

import com.iiiproject.forum.model.Reply;
import com.iiiproject.product.model.ReplyBean;




public interface IReplyDao {
	ReplyBean insertReply(ReplyBean rBean);
	List<ReplyBean> getReplyPd(Integer PdId);
}
