package com.iiiproject.forum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iiiproject.forum.dao.IMessageDAO;
import com.iiiproject.forum.model.Message;

@Service("messageService")
@Transactional
public class MessageService implements IMessageService {
	
	@Autowired
	IMessageDAO msgDao;

	@Override
	public Message saveMsg(Message msgBean) {
		Message saveMsg = msgDao.saveMsg(msgBean);
		return saveMsg;
	}

	@Override
	public Message getMsg(Integer msgId) {
		Message msg = msgDao.getMsg(msgId);
		return msg;
	}

	@Override
	public Message updateStatus(Integer msgId) {
		Message updateStatus = msgDao.updateStatus(msgId);
		return updateStatus;
	}

	@Override
	public List<Message> getMyMsg(Integer authorId) {
		List<Message> myMsg = msgDao.getMyMsg(authorId);
		return myMsg;
	}

}
