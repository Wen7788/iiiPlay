package com.iiiproject.product.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.iiiproject.lab02.controller.EmailUtility;
import com.iiiproject.lab02.model.MemberBean;
import com.iiiproject.product.model.OrderBean;
import com.iiiproject.product.model.OrderItem;
import com.iiiproject.product.model.OrderItemBean;
import com.iiiproject.product.model.ProductBean;
import com.iiiproject.product.service.IOrderservice;
import com.iiiproject.product.service.IProductBeanService;
import com.iiiproject.product.service.ShoppingCart;

@Controller
@RequestMapping("/product")

public class orderController {

	@Autowired
	IOrderservice odService;

	private String host = "smtp.gmail.com";
	private String port = "587";
	private String email1 = "ericeric4062@gmail.com";

	private String name1 = "iiiPlay Administer";

	private String pass = "ab123830205";

	@GetMapping("/saveorder")
	public String saveorder(HttpServletRequest request, Model model) {
		MemberBean user = (MemberBean) request.getSession().getAttribute("MemberBean");
		if (null == user) {
			request.setAttribute("error", "請登錄後再下單");

		}
		// 獲取購物車
		ShoppingCart cart = (ShoppingCart) request.getSession().getAttribute("cart");
		// 創一個訂單對象
		OrderBean order = new OrderBean();
		order.setOrderDate(new Date());
		order.setTotal(cart.getTotal());
		order.setState(1);
		order.setId(user.getId()); // 取得用戶id

		// 遍歷一個個購物項
		for (OrderItem item : cart.getOrderItems()) {
			OrderItemBean orderItem = new OrderItemBean();
			orderItem.setQuantity(item.getNum());
			orderItem.setTotal(item.getSubtotal());
			orderItem.setProduct(item.getProduct());
			orderItem.setPdId(item.getProduct());

			orderItem.setOrder(order); // 新創建的訂單

			order.getItems().add(orderItem); // 訂單上所有的訂單項

		}

		request.setAttribute("order", order);
		return "product/order";

	}

	@GetMapping("/saveorder1")
	public String saveorder1(HttpServletRequest request, Model model) {
		MemberBean user = (MemberBean) request.getSession().getAttribute("MemberBean");
		if (null == user) {
			request.setAttribute("error", "請登錄後再下單");

		}
		// 獲取購物車
		ShoppingCart cart = (ShoppingCart) request.getSession().getAttribute("cart");
		// 創一個訂單對象
		OrderBean order = new OrderBean();

		order.setOrderDate(new Date());
		order.setTotal(cart.getTotal());
		order.setState(1);
		order.setId(user.getId()); // 取得用戶id
		order.setEmail(request.getParameter("email"));
		order.setName(request.getParameter("name"));
		order.setPhone(request.getParameter("number"));
		order.setShippingAddress(request.getParameter("address"));

		// 遍歷一個個購物項
		Set<OrderItemBean> set = new HashSet<OrderItemBean>();
		for (OrderItem item : cart.getOrderItems()) {
			OrderItemBean orderItem = new OrderItemBean();
			orderItem.setQuantity(item.getNum());
			orderItem.setTotal(item.getSubtotal());
			orderItem.setPdId(item.getProduct());
//		    orderItem.setOrderId(order.getOrderId());  

			orderItem.setOrder(order); // 新創建的訂單
//			order.getItems().add(orderItem); //訂單上所有的訂單項
			set.add(orderItem);

		}
		order.setItems(set);
		odService.saveorder(order);

		cart.clearOrderItem();
		request.setAttribute("order", order);
		return "redirect:/backstage/pay/" + order.getOrderId();

	}

	@GetMapping("/saveorder2")
	public String saveorder2(@RequestParam("name") String name, @RequestParam("email") String email,
			@RequestParam("number") String number, HttpServletRequest request, @RequestParam("address") String address,
			Model model) {
		MemberBean user = (MemberBean) request.getSession().getAttribute("MemberBean");
		if (null == user) {
			request.setAttribute("error", "請登錄後再下單");

		}
		// 獲取購物車
		ShoppingCart cart = (ShoppingCart) request.getSession().getAttribute("cart");
		// 創一個訂單對象

		OrderBean order = new OrderBean();

		order.setOrderDate(new Date());
		order.setTotal(cart.getTotal());
		order.setState(1);
		order.setId(user.getId()); // 取得用戶id
		order.setEmail(email);
		order.setName(name);
		order.setPhone(number);
		order.setShippingAddress(address);

		String recipient = email;
		String subject = "你的訂單";

		// 遍歷一個個購物項
		
		Set<OrderItemBean> set = new HashSet<OrderItemBean>();
		for (OrderItem item : cart.getOrderItems()) {
			OrderItemBean orderItem = new OrderItemBean();
			orderItem.setQuantity(item.getNum());
			orderItem.setTotal(item.getSubtotal());
			orderItem.setPdId(item.getProduct());
//		    orderItem.setOrderId(order.getOrderId());  

			orderItem.setOrder(order); // 新創建的訂單
//			order.getItems().add(orderItem); //訂單上所有的訂單項
			set.add(orderItem);

		}
		order.setItems(set);

		odService.saveorder(order);
       

		cart.clearOrderItem();
		request.setAttribute("order", order);
		
		String content = "您好，這是您的訂單編號:" + order.getOrderId()+"\r\n";
	
		 StringBuilder stringBuilder =new StringBuilder();	  
		for (OrderItemBean orderItemBean : set) {
			stringBuilder.append("商品名稱為").append( orderItemBean.getPdId().getProductName()).append("\r\n");
			stringBuilder.append("商品數量為").append(orderItemBean.getQuantity()).append("\r\n");
			stringBuilder.append("商品小計為").append(orderItemBean.getTotal()).append("\r\n");
		};
		content+=stringBuilder.toString()+"\r\n"+ "訂單總額"+order.getTotal()+"\r\n"+"請盡速付款 ";
		
     

        System.out.println(content);
     
		;


		try {
			EmailUtility.sendEmail(host, port, email1, name1, pass, recipient, subject, content);
		} catch (UnsupportedEncodingException | MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/product/findorder1";

	}

	

	@GetMapping("/findorder1")
	public String findorder1(HttpServletRequest request, Model model) {
		MemberBean user = (MemberBean) request.getSession().getAttribute("MemberBean");
		String uid = user.getId();

		List<OrderBean> orders = odService.findorder(uid);

		model.addAttribute("order", orders);

		return "product/myorder1";

	}

	@GetMapping("/findorder/{oid}")
	public String findorder(@PathVariable("oid") Integer oid, HttpServletRequest request, Model model) {

		List<OrderItemBean> orderitem = odService.findorderdetail(oid);
		model.addAttribute("oitem", orderitem);

		return "product/myorder";

	}

}
