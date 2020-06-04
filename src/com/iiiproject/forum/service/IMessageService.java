package com.iiiproject.forum.service;

import java.util.List;

import com.iiiproject.forum.model.Message;

public interface IMessageService {
	Message saveMsg(Message msgBean);

	Message getMsg(Integer msgId);

	Message updateStatus(Integer msgId);

	List<Message> getMyMsg(Integer authorId);
}
