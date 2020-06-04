package com.iiiproject._00_backstage.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.iiiproject._00_backstage.dao.CountCompanyDaoImp;

@Service("CountCompanyService")
@Transactional
public class CountCompanyServiceImp implements CountCompanyService {

	@Autowired @Qualifier("Company")
	private CountCompanyDaoImp dao;
	
	@Override
	public Long getRazer1() {
		Long countR1 = dao.getRazer1();
		return countR1;
	}
		
	@Override
	public Long getRazer2() {
		Long countR2 = dao.getRazer2();
		return countR2;
	}
	
	@Override
	public Long getRazer3() {
		Long countR3 = dao.getRazer3();
		return countR3;
	}
	
	@Override
	public Long getRazer4() {
		Long countR4 = dao.getRazer4();
		return countR4;
	}
	
	
	@Override
	public Long getLogi1() {
		Long countL1 = dao.getLogi1();
		return countL1;
	}
	
	@Override
	public Long getLogi2() {
		Long countL2 = dao.getLogi2();
		return countL2;
	}
	
	@Override
	public Long getLogi3() {
		Long countL3 = dao.getLogi3();
		return countL3;
	}
	
	@Override
	public Long getLogi4() {
		Long countL4 = dao.getLogi4();
		return countL4;
	}
		
	@Override 
	public Long getYuet1() {
		Long countY1 = dao.getYuet1();
		return countY1;
	}
	
	@Override 
	public Long getYuet2() {
		Long countY2 = dao.getYuet2();
		return countY2;
	}
	
	@Override 
	public Long getYuet3() {
		Long countY3 = dao.getYuet3();
		return countY3;
	}
	
	@Override 
	public Long getYuet4() {
		Long countY4 = dao.getYuet4();
		return countY4;
	}
	
	
}
