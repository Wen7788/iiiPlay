package com.iiiproject._00_backstage.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.iiiproject._00_backstage.dao.CountMemberSaleDaoImp;


@Service("CountMemberSaleService")
@Transactional
public class CountMemberSaleServiceImp implements CountMemberSaleService {
		
	@Autowired @Qualifier("CountSale")
	private CountMemberSaleDaoImp dao;
	
	@Override
	public Long getMaleSale() {
		Long countM = dao.getMaleSale();
		return countM;
	}
	
	@Override
	public Long getFemaleSale() {
		Long countF = dao.getFemaleSale();
		return countF;
	}
	
	@Override
	public 	Long getAllSale() {
		Long countA = dao.getAllSale();
		return countA;
	}
	
	@Override
	public Long getMale() {
		Long countMale = dao.getMale();
		return countMale;		
	}
	
	@Override
	public Long getFemale() {
		Long countFemale = dao.getFemale();
		return countFemale;	
	}
}
