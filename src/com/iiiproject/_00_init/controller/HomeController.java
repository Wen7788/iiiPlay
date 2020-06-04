package com.iiiproject._00_init.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home() {
		return "index";
	}
	
	@RequestMapping("/bs")
	public String bsHome() {
		return "BSindex";
	}
	@RequestMapping("/twitch")
	public String twitch() {
		return "member/twitch";
	}
//	@RequestMapping("/top")
//	public String top() {
//		return "top";
//	}
}
