package com.iiiproject._00_backstage.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.iiiproject._00_backstage.dao.PayStateDaoImp;
import com.iiiproject.product.model.OrderBean;

@Service("PayStateService")
@Transactional
public class PayStateServiceImp implements PayStateService {
	
	@Autowired @Qualifier("paystate")
	private PayStateDaoImp dao;
	
	@Override 
	public OrderBean updatepaydate(Integer orderId) {
		OrderBean paystate = dao.updatepaydate(orderId);
		return paystate;
	}
}
