package com.iiiproject.forum.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.iiiproject.forum.dao.IMessageDAO;
import com.iiiproject.forum.model.Notify;

@Service("messageService")
@Transactional
public class MessageService implements IMessageService {
	
	@Autowired
	IMessageDAO msgDao;
	
	@Autowired
	private SimpMessagingTemplate simpMessagingTemplate;

	@Override
	public Notify saveMsg(Notify msgBean) {
		Notify saveMsg = msgDao.saveMsg(msgBean);
		return saveMsg;
	}

	@Override
	public Notify getMsg(Integer msgId) {
		Notify msg = msgDao.getMsg(msgId);
		return msg;
	}

	@Override
	public Notify updateStatus(Integer msgId) {
		Notify updateStatus = msgDao.updateStatus(msgId);
		return updateStatus;
	}

	@Override
	public List<Notify> getMyMsg(Integer authorId) {
		List<Notify> myMsg = msgDao.getMyMsg(authorId);
		return myMsg;
	}
	
	@Override
	public void sendNotice(Notify notify) {
		simpMessagingTemplate.convertAndSendToUser(notify.getAuthorId(), "/queue/reply", notify);
				//user the user that should receive the message.
				//please see the SpringWebSocketHandler will get the userId(can be the different column) 
				//then return to SpringWebSocketPrincipal, userId is the value of name(name is default cannot be changed)
				
				// destination the destination to send the message to. Please see the main.js, "/user" will be add at js 
				// "/user" is not the path which is the target for WebSocket
				// convertAndSend => for broadcast, "/topic" and send the message to everyone
				// convertAndSendToUser => "/user", just send the message to target
				
				
				//payload the payload to send
				//notice = body (the message put into the <div>)
	}
}
