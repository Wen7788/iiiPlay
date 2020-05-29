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
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.iiiproject.forum.model.Article;
import com.iiiproject.forum.model.ArticleListView;
import com.iiiproject.forum.model.Board;
import com.iiiproject.forum.model.Click;
import com.iiiproject.forum.model.FavoListView;
import com.iiiproject.forum.model.MyFavoArticle;
import com.iiiproject.forum.model.ReplyListView;
import com.iiiproject.forum.service.IArticleService;
import com.iiiproject.forum.service.IBoardService;
import com.iiiproject.forum.service.IClickService;
import com.iiiproject.forum.service.IMyFavoArticleService;
import com.iiiproject.forum.service.IReplyService;
import com.iiiproject.lab02.dao.IMemberDao;
import com.iiiproject.lab02.model.MemberBean;
import com.iiiproject.lab02.service.IMemberService;

@Controller
@RequestMapping("/forum")
@SessionAttributes(value = {"MemberBean"})
public class ArticleController {
	
	@Autowired
	IArticleService iAService;
	
	@Autowired
	IBoardService iBService;
	
	@Autowired
	IReplyService iRService;
	
	@Autowired
	IClickService iCService;
	
	@Autowired
	IMyFavoArticleService iFService;
	
	@Autowired
	IMemberDao iMDao;
	
	@Autowired
	MyFavoArticle favoBean;
	
	@GetMapping("/ownArticle/{id}")
	public String ownArticle(@PathVariable("id") String id, Model model) {
		List<ArticleListView> ownArticle = iAService.queryOwnArticle(id);
		model.addAttribute("ownArticle", ownArticle);
		return "forum/ownArticle";
	}
	
	@GetMapping("/articleAndReply/{articleId}")
	public String articleAndReply(@PathVariable("articleId") Integer articleId, Model model, @SessionAttribute("MemberBean") MemberBean mb) {
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
		
		FavoListView favo = iFService.isFavo(articleId, mb.getId());
		System.out.println(mb.getId());
		System.out.println("有抓到favoBean");
		model.addAttribute("favo", favo);
		
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
					   @RequestParam String id) {
		iAService.hideArticle(articleId);
		return "redirect:/forum/ownArticle/"+id;
	}
	
	@GetMapping("/article/{articleId}")
	public String modifyform(@PathVariable("articleId") Integer articleId, Model model,
							@RequestParam("boardId") Integer boardId) {
		Article aBean = iAService.queryArticle(articleId);
		Board bBean = iBService.queryBoard(boardId);
		model.addAttribute("aBean",aBean);
		model.addAttribute("bBean",bBean);
		return "forum/updateArticle";
	}
	@PostMapping("/article/{articleId}")
	public String modify(@PathVariable("articleId") Integer articleId,
			@RequestParam("name") String name, 
			@RequestParam("boardId") Integer boardId,
			@RequestParam("category") String category, 
			@RequestParam("title") String title, 
			@RequestParam("detail") String detail,
			@RequestParam("id") String id) {
		Article aBean = new Article();
		aBean.setArticleId(articleId);
		aBean.setName(name);
		aBean.setCategory(category);
		aBean.setTitle(title);
		aBean.setDetail(detail);
		aBean.setBoardId(boardId);
		aBean.setPublishTime(new Timestamp(System.currentTimeMillis()));
		iAService.updateArticle(aBean);
		return "redirect:/forum/ownArticle/"+id;
	}
	
	@PostMapping("/addFavo")
	public String addFavo(@RequestParam("articleId") Integer articleId, 
							@RequestParam("userId") String userId,
							@RequestParam("userName") String userName) {
		favoBean.setUserId(userId);
		System.out.println("userId:"+userId);
		favoBean.setUserName(userName);
		System.out.println("userName: "+userName);
		favoBean.setArticleId(articleId);
		System.out.println("articleId: "+articleId);
		favoBean.setFavoAddTime(new Timestamp(System.currentTimeMillis()));
		iFService.addFavo(favoBean);
		
		return "redirect:/articleAndReply/"+articleId;
	}
}
