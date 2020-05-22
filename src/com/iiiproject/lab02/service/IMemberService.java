package com.iiiproject.lab02.service;

import java.util.List;

import com.iiiproject.lab02.model.MemberBean;



public interface IMemberService {

	boolean isDup(String id);

	int insert(MemberBean mb);

	MemberBean checkIDPassword(String id, String password);
//
//	int updateMember(MemberBean mb);
	
	String resetCustomerPassword(String email);

//	List<MemberBean> getAllMembers();
//
//	MemberBean getMember(int pk);
//
	int deleteMember(String id);
//
	int updateMember(MemberBean mb);

}