package com.iiiproject._00_backstage.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iiiproject._00_backstage.service.PayStateService;
import com.iiiproject._00_backstage.service.SearchOrderService;
import com.iiiproject.product.model.OrderBean;
import com.iiiproject.product.model.OrderItemBean;
import com.iiiproject.product.model.ProductBean;

import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutALL;

@Controller
@RequestMapping("/backstage")
public class EcpayController {
	
	@Autowired
	SearchOrderService ecpayService;
	
	@Autowired
	ServletContext context;
	
	@Autowired
	PayStateService payStateService;
	
	
	@GetMapping("/pay/{orderId}")
	@ResponseBody
		public  String ecpay(HttpServletRequest request,@PathVariable("orderId") Integer orderId, Model model)throws Exception{
		OrderBean oBean = ecpayService.querySearchOrder(orderId);
//		oBean.getOrderDate() > currtntdate
		
//		List<ProductBean> pBean = ecpayService.SearchAllPdId();
		Set<OrderItemBean> Items = oBean.getItems();
		
		String itemName = "";
		for (OrderItemBean item : Items) {
			ProductBean product = item.getPdId();
		 	String Item = product.getPdEname();
			itemName += Item.trim().replaceAll("\\s+","") +"#" ; 
		}
		//欄位加總用count
		

	    
		
		
		
		
		
		AllInOne all = new AllInOne("");
		
//		String id = request.getParameter("orderId");
		String stotal = String.valueOf(oBean.getTotal());
		
		
		Random random = new Random();
		Date dNow = new Date();
		SimpleDateFormat sdft = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		String time = sdft.format(dNow);
		
		AioCheckOutALL obj = new AioCheckOutALL();
		obj.setMerchantTradeNo("orderID" + (random.nextInt(1000000) + 1));
		obj.setMerchantTradeDate(time);
		obj.setTotalAmount(stotal);
		obj.setTradeDesc("tradeDesc");
		obj.setItemName(itemName);
		obj.setReturnURL("http://211.23.128.214:5000");
		obj.setNeedExtraPaidInfo("N");
		obj.setClientBackURL("http://localhost:8080/iiiPlay/backstage/SearchOrdersFinal");
		
		payStateService.updatepaydate(oBean.getOrderId());
		
		
//		obj.setClientBackURL
		
		String form = all.aioCheckOut(obj, null);
		System.out.println(form);
		return form;
				
		
		
		
	
	}
}


