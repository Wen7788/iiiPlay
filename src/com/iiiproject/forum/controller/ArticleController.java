package com.iiiproject.forum.controller;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.iiiproject.forum.model.Article;
import com.iiiproject.forum.model.ArticleListView;
import com.iiiproject.forum.model.Board;
import com.iiiproject.forum.model.Click;
import com.iiiproject.forum.model.ReplyListView;
import com.iiiproject.forum.service.IArticleService;
import com.iiiproject.forum.service.IBoardService;
import com.iiiproject.forum.service.IClickService;
import com.iiiproject.forum.service.IReplyService;

@Controller
@RequestMapping("/forum")
public class ArticleController {
	
	@Autowired
	IArticleService iAService;
	
	@Autowired
	IBoardService iBService;
	
	@Autowired
	IReplyService iRService;
	
	@Autowired
	IClickService iCService;
	
	
	
	@GetMapping("/articleAndReply/{articleId}")
	public String articleAndReply(@PathVariable("articleId") Integer articleId, Model model) {
		Article aBean = iAService.queryArticle(articleId);
		model.addAttribute("aBean", aBean);
		List<ReplyListView> list = iRService.getReplyOfArticle(articleId);
		model.addAttribute("rOfA", list);
		
		Click click = new Click();
		click.setArticleId(articleId);
		click.setCount(1);
		click.setCreateTime(new Timestamp(System.currentTimeMillis()));
		
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		click.setRecordDate(Date.valueOf(df.format(new Date(System.currentTimeMillis()))));
		iCService.insertOrUpdate(click);
		
		return "forum/articleAndReply";
	}
	
	@GetMapping("/showAofB/{boardId}")
	public String showArticleOfBoard(Model model, @PathVariable Integer boardId) {
		List<ArticleListView> list = iAService.queryArticleOfBoard(boardId);
		model.addAttribute("aOfB", list);
		Board bBean = iBService.queryBoard(boardId);
		model.addAttribute("bBean", bBean);
		
		return "forum/articleListForEach";
	}
	
	@PostMapping("/article")
	public String add(@RequestParam("name1") String name, 
			@RequestParam("boardId1") Integer boardId,
			@RequestParam("category1") String category, 
			@RequestParam("title1") String title, 
			@RequestParam("detail1") String detail,
			@RequestParam("status1") Integer status) {
		
//		System.out.println(name);
//		System.out.println(boardId);
//		System.out.println(title);
//		System.out.println(category);
//		System.out.println(detail);
//		System.out.println(status);
//		System.out.println(new Timestamp(System.currentTimeMillis()));
		Article aBean = new Article();
		
		aBean.setName(name);
		aBean.setCategory(category);
		aBean.setTitle(title);
		aBean.setDetail(detail);
		aBean.setBoardId(boardId);
		aBean.setStatus(status);
		aBean.setPublishTime(new Timestamp(System.currentTimeMillis()));
		iAService.insertArticle(aBean);
		
		return "redirect:/forum/showAofB/"+boardId;
	}
	
	@PostMapping("/articleStatus")
	public String hide(@RequestParam Integer articleId,
					   @RequestParam Integer boardId) {
		iAService.hideArticle(articleId);
		return "redirect:/forum/showAofB/"+boardId;
	}
}
