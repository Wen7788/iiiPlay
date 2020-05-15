package com.iiiproject.forum.controller;

import java.sql.Blob;

import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.iiiproject.forum.model.Board;
import com.iiiproject.forum.service.IBoardService;

@Controller
@RequestMapping("/forum")
public class BoardController {

	@Autowired
	IBoardService iBService;

	@GetMapping("/showAllBoard")
	public String showBoardList(Model model) {
		model.addAttribute("boards", iBService.queryAllBoard());
		return "forum/boardListMaintain";
	}

	@PostMapping("/board")
	public String add(@RequestParam("boardName") String boardName,
			@RequestParam("boardImg") MultipartFile multipartFile, 
			@RequestParam("status") Integer status) {
		Board bBean = new Board();
//		System.out.println(boardName);
		bBean.setBoardName(boardName);
//		System.out.println(status);
		bBean.setStatus(status);

		String imgName = multipartFile.getOriginalFilename();
//		System.out.println("imgName:"+imgName);
		if (imgName.length() > 0 && imgName.lastIndexOf(".") > -1) {
			bBean.setImgName(imgName);
		}
		if (multipartFile != null && !multipartFile.isEmpty()) {
			try {
				byte[] b = multipartFile.getBytes();
				Blob blob = new SerialBlob(b);
				bBean.setBoardImg(blob);

			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
		iBService.insertBoard(bBean);

		return "redirect:/forum/showAllBoard";
	}
	
	@GetMapping("/board/{boardId}")
	public String modifyForm(@PathVariable("boardId") Integer boardId, Model model) {
		Board bBean = iBService.queryBoard(boardId);
		model.addAttribute("bBean", bBean);
		return "forum/updateBoard";
	}
	
	
	
	@PostMapping("/board/{boardId}")
	public String modify(@RequestParam("boardName") String boardName,
			@RequestParam("boardImg") MultipartFile multipartFile, 
			@PathVariable Integer boardId) {
		Board bBean = new Board();
		System.out.println(boardId);
		bBean.setBoardId(boardId);
		System.out.println(boardName);
		bBean.setBoardName(boardName);
		String imgName = multipartFile.getOriginalFilename();
		System.out.println(imgName);
		
		if (imgName.length() > 0 && imgName.lastIndexOf(".") > -1) {
			bBean.setImgName(imgName);
		}
		if (multipartFile != null && !multipartFile.isEmpty()) {
			try {
				byte[] b = multipartFile.getBytes();
				Blob blob = new SerialBlob(b);
				bBean.setBoardImg(blob);

			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
		iBService.updateBoard(bBean);
		return "redirect:/forum/showAllBoard";
	}
	
	@PostMapping("/boardStatus")
	public String hide(@RequestParam Integer boardId) {
		iBService.hideBoard(boardId);
		return "redirect:/forum/showAllBoard";
	}
	
	@GetMapping("/boardDelete/{boardId}")
	public String delete(@PathVariable("boardId") Integer boardId) {
		iBService.deleteBoard(boardId);
		return "redirect:/forum/showAllBoard";
	}
}
