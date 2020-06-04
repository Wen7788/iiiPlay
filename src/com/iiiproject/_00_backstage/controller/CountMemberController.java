//package com.iiiproject._00_backstage.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import com.iiiproject._00_backstage.service.CountMemberService;
//
//@Controller
//@RequestMapping("/countmember")
//public class CountMemberController {
//
//	@Autowired
//	CountMemberService memberService;
//	
//	
//	@GetMapping("/member")
//	public String getCount(Model model) {
//		Long cmember = memberService.getMemberCount();
//		model.addAttribute("cmember",cmember);
//		System.out.println(cmember);
//		return "/BSindex";
//	}
//	
//}
