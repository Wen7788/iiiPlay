package com.iiiproject.forum.dao;

import java.util.List;

import com.iiiproject.forum.model.Message;

public interface IMessageDAO {

	Message saveMsg(Message msgBean);

	Message getMsg(Integer msgId);

	Message updateStatus(Integer msgId);

	List<Message> getMyMsg(Integer authorId);

}