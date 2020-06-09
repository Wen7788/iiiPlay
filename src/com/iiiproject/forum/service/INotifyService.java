package com.iiiproject.forum.service;

import java.util.List;

import com.iiiproject.forum.model.Notify;

public interface INotifyService {
	Notify saveMsg(Notify msgBean);

	Notify getMsg(Integer msgId);

	Notify updateStatus(Integer msgId);

	List<Notify> getMyMsg(Integer authorId);

	void sendNotice(Notify notify);
	
	
}
