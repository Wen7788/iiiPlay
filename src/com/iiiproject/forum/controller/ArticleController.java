package com.iiiproject.forum.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iiiproject.forum.service.IArticleService;

@Controller
@RequestMapping("/forum")
public class ArticleController {
	
	@Autowired
	IArticleService iAService;
	
	
}
