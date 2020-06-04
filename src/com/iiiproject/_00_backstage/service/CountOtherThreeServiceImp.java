package com.iiiproject._00_backstage.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.iiiproject._00_backstage.dao.CountOtherThreeDaoImp;

@Service("CountOtherThreeService")
@Transactional
public class CountOtherThreeServiceImp implements CountOtherThreeService{

	@Autowired @Qualifier("CountKB")
	private CountOtherThreeDaoImp dao;
	
	@Override
	public  Long getKeyboard(Integer i) {
		Long countK = dao.getKeyboard(i);
		return countK;	
	}
	
	@Override 
	public Long getMousePad(Integer i) {
		Long countM = dao.getMousePad(i);
		return countM;
	}
	
	@Override
	public Long getEarphone(Integer i) {
		Long countE = dao.getEarphone(i);
		return countE;
	}
	
	@Override
	public Long getKeyboard12() {
		Long countK12 = dao.getKeyboard12();
		return countK12;
		
	}
	
	@Override
	public Long getMousePad12() {
		Long countM12 = dao.getMousePad12();
		return countM12;
		
	}
	
	@Override 
	public Long getEarphone12() {
		Long countE12 = dao.getEarphone12();
		return countE12;
	}
	
	
}
