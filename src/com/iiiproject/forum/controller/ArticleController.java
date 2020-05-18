package com.iiiproject.forum.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iiiproject.forum.model.ArticleListView;
import com.iiiproject.forum.service.IArticleService;

@Controller
@RequestMapping("/forum")
public class ArticleController {
	
	@Autowired
	IArticleService iAService;
	
	@GetMapping("/showAofB/{boardId}")
	public String showArticleOfBoard(Model model, @PathVariable Integer boardId) {
		List<ArticleListView> list = iAService.queryArticleOfBoardStatus1(boardId);
		model.addAttribute("aOfB", list);
		return "forum/articleListForEach";
	}
}
