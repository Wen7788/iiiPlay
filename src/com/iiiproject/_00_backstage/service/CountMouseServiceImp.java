package com.iiiproject._00_backstage.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.iiiproject._00_backstage.dao.CountMouseDaoImp;


@Service("CountMouseService")
@Transactional
public class CountMouseServiceImp implements CountMouseService  {
	
	@Autowired @Qualifier("CountMouse")
	private CountMouseDaoImp dao;
	
	@Override
	public Long getMouse1() {
		Long countM1 = dao.getMouse1();
		return countM1;
	}
	@Override
	public Long getMouse2() {
		Long countM2 = dao.getMouse2();
		return countM2;
	}@Override
	public Long getMouse3() {
		Long countM3 = dao.getMouse3();
		return countM3;
	}@Override
	public Long getMouse4() {
		Long countM4 = dao.getMouse4();
		return countM4;
	}@Override
	public Long getMouse5() {
		Long countM5 = dao.getMouse5();
		return countM5;
	}@Override
	public Long getMouse6() {
		Long countM6 = dao.getMouse6();
		return countM6;
	}@Override
	public Long getMouse7() {
		Long countM7 = dao.getMouse7();
		return countM7;
	}@Override
	public Long getMouse8() {
		Long countM8 = dao.getMouse8();
		return countM8;
	}@Override
	public Long getMouse9() {
		Long countM9 = dao.getMouse9();
		return countM9;
	}@Override
	public Long getMouse10() {
		Long countM10 = dao.getMouse10();
		return countM10;
	}@Override
	public Long getMouse11() {
		Long countM11 = dao.getMouse11();
		return countM11;
	}@Override
	public Long getMouse12() {
		Long countM12 = dao.getMouse12();
		return countM12;
	}
}
