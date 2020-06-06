package com.iiiproject.forum.service;

import java.util.List;

import com.iiiproject.forum.model.Reply;
import com.iiiproject.forum.model.ReplyListView;

public interface IReplyService {

	Reply insertReply(Reply rBean);

	Boolean deleteReply(Integer replyId);

	Reply updateReply(Reply rBean);

	Reply queryReply(Integer replyId);

	List<ReplyListView> getReplyOfArticle(Integer articleId);

	Long getReplyOfArticleCounts(Integer articleId);
	
	List<ReplyListView> getLast5Reply();

}