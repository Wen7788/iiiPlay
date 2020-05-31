package com.iiiproject.product.service;

import java.util.List;

import com.iiiproject.forum.model.ReplyListView;
import com.iiiproject.product.model.OrderBean;
import com.iiiproject.product.model.OrderItemBean;
import com.iiiproject.product.model.ProductBean;
import com.iiiproject.product.model.ReplyBean;

public interface IReplyservice {
	ReplyBean insertReply(ReplyBean rBean);
	List<ReplyBean> getReplyPd(Integer PdId);
}
