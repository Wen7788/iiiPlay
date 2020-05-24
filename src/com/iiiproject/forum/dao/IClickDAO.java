package com.iiiproject.forum.dao;

import com.iiiproject.forum.model.Click;

public interface IClickDAO {

	Click insertClick(Click cBean);

	Click updateClick(Click cBean);

	Click getClickBean(Integer clickId);

}