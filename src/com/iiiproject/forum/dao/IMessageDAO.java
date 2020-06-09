package com.iiiproject.forum.dao;

import java.util.List;

import com.iiiproject.forum.model.Notify;

public interface IMessageDAO {

	Notify saveMsg(Notify msgBean);

	Notify getMsg(Integer msgId);

	Notify updateStatus(Integer msgId);

	List<Notify> getMyMsg(Integer authorId);

}