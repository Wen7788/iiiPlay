package com.iiiproject._00_backstage.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.iiiproject._00_backstage.dao.TestDaoImp;


@Service("TestService")
@Transactional
public class TestServiceImp implements TestService {
	@Autowired @Qualifier("Test")
	private TestDaoImp dao;
	
	@Override 
	public Long testget(Integer i) {
		Long countT = dao.testget(i);
		return countT;
	}
	
}
