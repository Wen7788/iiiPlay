//package com.iiiproject._00_backstage.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.iiiproject._00_backstage.service.PayStateService;
//import com.iiiproject.product.model.OrderBean;
//
//@Controller
//@RequestMapping("/backstage")
//public class PayStateController {
//	
//	@Autowired 
//	PayStateService payStateService;
//	
//	
//	@GetMapping("/paystate/{orderId}")
//	public String updatepaydate(@PathVariable("orderId") ) {
//		payStateService.updatepaydate(orderId);
//		return "redirect: /backstage/SearchOrdersFinal"
//		
//	}
//}
