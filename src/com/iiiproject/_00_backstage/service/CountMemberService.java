package com.iiiproject._00_backstage.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

@Service
@Transactional
public interface CountMemberService {
	Long getMemberCount();
	Long getSaleCount();
	Long getOrderCount();
	Long getMouse5();
}
