package com.iiiproject._00_backstage.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.iiiproject._00_backstage.dao.CountDaoImp;

@Service("CountMemberService")
@Transactional
public class CountMemberServiceImp implements CountMemberService {

	@Autowired @Qualifier("Count")
	private CountDaoImp dao;
	
	
	@Override
	public Long getMemberCount() {
		Long count = dao.getMemberCount();
		return count;
	}
	
	@Override
	public Long getSaleCount() {
		Long count2 = dao.getSaleCount();
		return count2;
		
	}
	
	@Override
	public Long getOrderCount() {
		Long count3 = dao.getOrderCount();
		return count3;
		
	}
	
	@Override
	public Long getMouse5() {
		Long countM5 = dao.getMouse5();
		return countM5;
		
	}
	
	
}
