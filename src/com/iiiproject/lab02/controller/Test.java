package com.iiiproject.lab02.controller;

import org.apache.commons.lang3.RandomStringUtils;



public class Test {
	
	
	public String redirect() {
		String randomPassword = RandomStringUtils.randomAlphanumeric(10);
		System.out.println(randomPassword);
		return randomPassword;
	}
	
}
