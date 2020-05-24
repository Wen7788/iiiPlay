package com.iiiproject.forum.dao;

import java.util.List;

import com.iiiproject.forum.model.Reply;
import com.iiiproject.forum.model.ReplyListView;

public interface IReplyDAO {

	Reply insertReply(Reply rBean);

	Boolean deleteReply(Integer replyId);

	Reply updateReply(Reply rBean);

	Reply queryReply(Integer replyId);

	List<ReplyListView> getReplyOfArticle(Integer articleId);

	Long getReplyOfArticleCounts(Integer articleId);

}