package com.iiiproject.forum.dao;

import java.sql.Date;

import com.iiiproject.forum.model.Click;

public interface IClickDAO {

	Click insertClick(Click cBean);

	Click updateClick(Click cBean);

	Click checkClickForUpdate(Integer articleId, Date recordDate);

}