package com.iiiproject.product.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



import com.iiiproject.product.model.OrderItem;
import com.iiiproject.product.model.ProductBean;
import com.iiiproject.product.model.ReplyBean;
import com.iiiproject.product.service.IProductBeanService;
import com.iiiproject.product.service.IReplyservice;
import com.iiiproject.product.service.ShoppingCart;






 
@Controller
@RequestMapping("/product")

public class PdController {

	@Autowired
	IProductBeanService pdService;
	
	@Autowired
	IReplyservice iRService;

	@GetMapping("/allproducts")
	public String allproducts(Model model) {
		model.addAttribute("memberList", pdService.selectAll());
		return "product/Shops2";

	}

	@GetMapping("/Cart.do")
	public String order(HttpServletRequest request ,Model model) {
		
		ShoppingCart cart=(ShoppingCart)request.getSession().getAttribute("cart");
	 
		if(cart==null) {
		cart=new ShoppingCart();		
		 request.getSession().setAttribute("cart", cart);}
 
		
	         return"product/Shoporder";

	}
	@GetMapping("/ProductDetail.do/Cart.do")
	public String pddetail(@RequestParam("pid") int pdId,
			@RequestParam("quantity") int num ,HttpServletRequest request ,Model model) {
		
		ShoppingCart cart=(ShoppingCart)request.getSession().getAttribute("cart");
	 
		if(cart==null) {
		cart=new ShoppingCart();		
		 request.getSession().setAttribute("cart", cart);}
 
			ProductBean pBean = pdService.select(pdId);

			OrderItem orderItem=new OrderItem();
			orderItem.setProduct(pBean);
			orderItem.setNum(num);			
			cart.addOrderItem(orderItem);	
			
	         return"product/Shoporder";
	}
	
	@GetMapping(value =  "/ProductDetail.do/Cart.do" ,produces = {"application/json"})
	public ResponseEntity<ShoppingCart> ADDCART(@RequestParam("pid") int pdId,
			@RequestParam("quantity") int num ,HttpServletRequest request ,Model model) {
		
		ShoppingCart cart=(ShoppingCart)request.getSession().getAttribute("cart");
		if(cart==null) {
			cart=new ShoppingCart();		
			 request.getSession().setAttribute("cart", cart);}
		
		ProductBean pBean = pdService.select(pdId);
		OrderItem orderItem=new OrderItem();
		orderItem.setProduct(pBean);
		orderItem.setNum(num);			
		cart.addOrderItem(orderItem);	
		ResponseEntity<ShoppingCart> re  = new ResponseEntity<>(cart, HttpStatus.OK);
		return re;
	}
	
	
	@GetMapping( value ="/ProductDetail.do/update.do" ,produces = {"application/json"})
	public ResponseEntity<ShoppingCart> update(@RequestParam("pid") int pdId,
			@RequestParam("quantity") int num ,HttpServletRequest request ,Model model) {
		
		ShoppingCart cart=(ShoppingCart)request.getSession().getAttribute("cart");
	 
	
			ProductBean pBean = pdService.select(pdId);
			OrderItem orderItem=new OrderItem();
			orderItem.setProduct(pBean);
			orderItem.setNum(num);			
			cart.update(orderItem);	
			
			ResponseEntity<ShoppingCart> re  = new ResponseEntity<>(cart, HttpStatus.OK);
			return re;
	        

	}

	@GetMapping("/CartServlet1.do")
	public String clearcart(HttpServletRequest request ,Model model) {
	
		ShoppingCart cart=(ShoppingCart)request.getSession().getAttribute("cart");
		cart.clearOrderItem();
		
		
		  return"product/Shoporder";
	}
	

	@GetMapping("/remove.do/{pid}")
	public String removecart(@PathVariable("pid") int pdId,HttpServletRequest request,Model model) {
		ShoppingCart cart=(ShoppingCart)request.getSession().getAttribute("cart");
		cart.removeOrderItem(pdId);		
		 return"product/Shoporder";
	}

	@GetMapping("/newpd.do")
	public String newpd(Model model) {
		
		List<ProductBean> newpd = pdService.newpd();
		model.addAttribute("memberList", newpd);
		return "product/Shops2";
		
	}

	@GetMapping("/ProductDetail.do/{pid}")
	public String detail(@PathVariable("pid") Integer pdId,Model model) {
	
		ProductBean pBean = pdService.select(pdId);
		model.addAttribute("detail", pBean);
		List<ReplyBean> list = iRService.getReplyPd(pdId);
		model.addAttribute("rplist", list);
		
		
		
		
		return "product/Shopdetail";
	}
	/*
	@GetMapping("/Query.do/{num}-{content}")
	public String Query(@PathVariable("num") String num,@PathVariable("content") String content, Model model) {
	
		List<ProductBean> beans = pdService.query(num,content);
		model.addAttribute("query", beans);
		return "product/query";
	}
	*/


	@GetMapping("/Querytype.do")
	public String Querytype(@RequestParam("type") String type ,Model model) {
		
		List<ProductBean> beans = pdService.selecttype(type);
		model.addAttribute("memberList", beans);
		return "product/Shops2";
	}
	
	@GetMapping("/ProductDetail.do/Images.do/{pid}")
	public void Images(@PathVariable("pid") int pdId,ServletResponse response,Model model) throws IOException {
		response.setContentType("image/jpeg");
		byte[] image=pdService.loadimage(pdId);
		ServletOutputStream outputStream=response.getOutputStream();
		outputStream.write(image);
		outputStream.close();
		return ;
	
	}
	@GetMapping("/remove.do/Images.do/{pid}")
	public void Images2(@PathVariable("pid") int pdId,ServletResponse response,Model model) throws IOException {
		response.setContentType("image/jpeg");
		byte[] image=pdService.loadimage(pdId);
		ServletOutputStream outputStream=response.getOutputStream();
		outputStream.write(image);
		outputStream.close();
		return ;
	
	}
	@GetMapping("/Images.do/{pid}")
	public void Images1(@PathVariable("pid") int pdId,ServletResponse response,Model model) throws IOException {
		response.setContentType("image/jpeg");
		byte[] image=pdService.loadimage(pdId);
		ServletOutputStream outputStream=response.getOutputStream();
		outputStream.write(image);
		outputStream.close();
		return ;
	
	}
	@GetMapping("/type.do/{type}")
	public String type(@PathVariable("type") String type, Model model) {
	
		List<ProductBean> beans = pdService.type( type);
		model.addAttribute("memberList", beans);
		return "product/Shops2";
	}
	
	
	@GetMapping("/category.do/{com}" )
	public String category(@PathVariable("com") String com, Model model) {
	 
		List<ProductBean> beans = pdService.category(com);
		model.addAttribute("memberList", beans);
		return "product/Shops2";
		
	}
	@GetMapping( value ="/showallcount" )
	public ResponseEntity<Long> showallcount() {
	
		Long acount=null;
		

			acount=pdService.allpdcount();
			
			
			ResponseEntity<Long> re  = new ResponseEntity<>(acount, HttpStatus.OK);
			return re;
	}
	@GetMapping( value ="/showallcount1" )
	public ResponseEntity<Long> showallcount1() {
	
		     Long acount=null;

			acount=(long) 5;
			
			
			ResponseEntity<Long> re  = new ResponseEntity<>(acount, HttpStatus.OK);
			return re;
	        

	}
	

	@GetMapping("/price/{price1}-{price2}")
	public String Query(@PathVariable("price1") int price1,@PathVariable("price2")  int price2, Model model) {
	
		List<ProductBean> beans = pdService.queryprice(price1,price2);
		model.addAttribute("queryprice", beans);
		return "product/query";
	}
	
	@GetMapping(value =  "/price" ,produces = {"application/json"})
	public ResponseEntity<List<ProductBean>> price(@RequestParam("price1") int price1,
			@RequestParam("price2") int price2 ,HttpServletRequest request ) {
		
		List<ProductBean> qprice = pdService.queryprice(price1,price2);
		
		
		ResponseEntity<List<ProductBean>>re  = new ResponseEntity<>(qprice, HttpStatus.OK);
		return re;
	}
	
	
}
