package com.iiiproject.forum.controller;

import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.iiiproject.forum.model.Reply;
import com.iiiproject.forum.service.IReplyService;

@Controller
@RequestMapping("/forum")
public class ReplyController {
	
	@Autowired
	IReplyService iRService;
	
	
	
	@PostMapping("/reply")
	public String add(@RequestParam("replyDetail") String replyDetail,
			@RequestParam("name") String name,
			@RequestParam("articleId") Integer articleId) {
		Reply rBean = new Reply();
		rBean.setArticleId(articleId);
		rBean.setName(name);
		rBean.setReplyDetail(replyDetail);
		rBean.setReplyTime(new Timestamp(System.currentTimeMillis()));
		iRService.insertReply(rBean);
		
		return "redirect:/forum/articleAndReply/"+articleId;
	}
	
	@PostMapping("/reply/{replyId}")
	public String modify(@PathVariable Integer replyId,
			@RequestParam("modifyDetail") String replyDetail,
			@RequestParam("modifyArticleId") Integer articleId,
			@RequestParam("modifyName") String name) {
		Reply rBean = new Reply();
		rBean.setReplyId(replyId);
		rBean.setName(name);
		rBean.setArticleId(articleId);
		rBean.setReplyDetail(replyDetail);
		iRService.updateReply(rBean);
		return "redirect:/forum/articleAndReply/"+articleId;
	}
	
	@GetMapping("/replyDelete/{replyId}/{articleId}")
	public String delete(@PathVariable Integer replyId, @PathVariable Integer articleId) {
		iRService.deleteReply(replyId);
		return "redirect:/forum/articleAndReply/"+articleId;
	}
	
}
