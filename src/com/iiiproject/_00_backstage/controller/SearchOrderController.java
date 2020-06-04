package com.iiiproject._00_backstage.controller;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.iiiproject._00_backstage.service.SearchOrderService;
import com.iiiproject.product.model.OrderBean;

@Controller
@RequestMapping("/backstage")
public class SearchOrderController {

	@Autowired
	SearchOrderService ecpayService;
	
	@Autowired
	ServletContext context;
	
	@GetMapping("/SearchOrdersFinal")
	public String SearchOrder(Model model) {
		List<OrderBean> order = ecpayService.SearchAllOrder();
		model.addAttribute("order" , order);
		return "backstage/SearchOrdersFinal";		
	}
	
	
	
	
}
