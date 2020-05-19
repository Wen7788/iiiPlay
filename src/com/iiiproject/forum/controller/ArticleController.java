package com.iiiproject.forum.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.iiiproject.forum.model.Article;
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
	
	@PostMapping("/article")
	public String add(@RequestParam("name") String name, 
			@RequestParam("boardId") Integer boardId,
			@RequestParam("category") String category, 
			@RequestParam("title") String title, 
			@RequestParam("detail") String detail,
			@RequestParam("status") Integer status) {
		
		Article aBean = new Article();
		aBean.setName(name);
		aBean.setCategory(category);
		aBean.setTitle(title);
		aBean.setDetail(detail);
		aBean.setBoardId(boardId);
		aBean.setStatus(status);
		
		return "redirect:/forum/showAofB/{boardId}";
	}
}
