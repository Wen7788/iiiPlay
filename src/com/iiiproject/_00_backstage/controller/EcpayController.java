package com.iiiproject._00_backstage.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iiiproject._00_backstage.service.SearchOrderService;
import com.iiiproject.product.model.OrderBean;

import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutALL;

@Controller
@RequestMapping("/backstage")
public class EcpayController {
	
	@Autowired
	SearchOrderService ecpayService;
	
	@Autowired
	ServletContext context;
	
	
	@GetMapping("/pay/{orderId}")
	
		public @ResponseBody String ecpay(HttpServletRequest request)throws Exception{
//	public String querySingleOrder(@PathVariable("orderId") Integer orderId, Model model) {
//		OrderBean oBean = ecpayService.querySearchOrder(orderId);
//		model.addAttribute("oBean",oBean);
		
		AllInOne all = new AllInOne("");
		Random random = new Random();
		Date dNow = new Date();
		SimpleDateFormat sdft = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String time = sdft.format(dNow);
		
		AioCheckOutALL obj = new AioCheckOutALL();
		obj.setMerchantTradeNo("orderID" + (random.nextInt(1000000) + 1));
		obj.setMerchantTradeDate(time);
//		obj.setPeriodType("aio");
		obj.setTotalAmount("1000");
		obj.setTradeDesc("tradeDesc");
		obj.setItemName("test");
		obj.setReturnURL("http://211.23.128.214:5000");
		obj.setNeedExtraPaidInfo("N");
		obj.setClientBackURL("http://localhost:8080/iiiPlay/backstage/SearchOrdersFinal");
		
		String form = all.aioCheckOut(obj, null);
		System.out.println(form);
		return form;
				
		
		
		
		
	}
}


