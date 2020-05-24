package com.iiiproject.forum.controller;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import javax.servlet.ServletContext;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.iiiproject.forum.model.Article;
import com.iiiproject.forum.model.ArticleListView;
import com.iiiproject.forum.model.Board;
import com.iiiproject.forum.service.IArticleService;
import com.iiiproject.forum.service.IBoardService;

@Controller
@RequestMapping("/forum")
public class BoardController {

	@Autowired
	IBoardService iBService;

	@Autowired
	ServletContext context;

	@Autowired
	IArticleService iAService;

//	@GetMapping("/randomArticle")
//	public ResponseEntity<List<Article>> getRandomArticle() {
//		Long allArticleCounts = iAService.getAllArticleCounts();
//		System.out.println(allArticleCounts);
//		Integer randomId = Integer.valueOf((int) (Math.random() * allArticleCounts + 1000));
//		System.out.println("初取亂數:"+randomId);
//		List<Board> boardSt1 = iBService.queryAllBoardStatus1();
//		
//		List<Article> alist = new ArrayList<>();
//		Article aBean = null;
//		for (Board b : boardSt1) {
//			List<ArticleListView> aOfB = iAService.queryArticleOfBoard(b.getBoardId());
//			for (ArticleListView a : aOfB) {
//				while (randomId!= a.getArticleId()) {
//					randomId = Integer.valueOf((int) (Math.random() * allArticleCounts + 1000));
//					System.out.println("清單文章ID:"+a.getArticleId());
//					System.out.println("亂數文章ID:"+randomId);
//				}
//				if (randomId == a.getArticleId()) {
//					aBean = iAService.queryArticle(randomId);
//					alist.add(aBean);
//				}
//			}
//			randomId = Integer.valueOf((int) (Math.random() * allArticleCounts + 1000));
//
//		}
//		
//		ResponseEntity<List<Article>> re = new ResponseEntity<>(alist, HttpStatus.OK);
//		return re;
//	}

	@GetMapping("/showArticleCount")
	public ResponseEntity<List<Long>> showArticleCount() {
		List<Board> boardSt1 = iBService.queryAllBoardStatus1();
		Integer boardId = 0;
		Long aCounts = null;
		List<Long> clist = new ArrayList<>();
		for (Board b : boardSt1) {
			boardId = b.getBoardId();
			aCounts = iAService.getArticleOfBoardCounts(boardId);
//			System.out.println(boardId + "," + aCounts);
			clist.add(aCounts);
		}
		ResponseEntity<List<Long>> re = new ResponseEntity<>(clist, HttpStatus.OK);
		return re;
	}
	
	@GetMapping("/showBoards")
	public String showBoards(Model model) {
		List<Board> boardSt1 = iBService.queryAllBoardStatus1();
		model.addAttribute("boardSt1", boardSt1);

		return "forum/boardList";
	}

	@GetMapping("/showAllBoard")
	public String showBoardList(Model model) {
		List<Board> boards = iBService.queryAllBoard();
		model.addAttribute("boards", boards);
		return "forum/boardListMaintain";
	}

	@PostMapping("/board")
	public String add(@RequestParam("boardName") String boardName,
			@RequestParam("boardImg") MultipartFile multipartFile, @RequestParam("status") Integer status) {

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
			@RequestParam("boardImg") MultipartFile multipartFile, @PathVariable Integer boardId) {
		Board bBean = new Board();
//		System.out.println(boardId);
		bBean.setBoardId(boardId);
//		System.out.println(boardName);
		bBean.setBoardName(boardName);
		String imgName = multipartFile.getOriginalFilename();
//		System.out.println(imgName);

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

	@GetMapping("/loadImg/{boardId}")
	public ResponseEntity<byte[]> loadImg(@PathVariable Integer boardId) {
		byte[] body = null;
		ResponseEntity<byte[]> re = null;
		MediaType mediaType = null;
		HttpHeaders headers = new HttpHeaders();
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());

		Board board = iBService.queryBoard(boardId);
		if (board == null) {
			return new ResponseEntity<byte[]>(HttpStatus.NOT_FOUND);
		}
		String imgName = board.getImgName();
		if (imgName != null) {
			if (imgName.toLowerCase().endsWith("jfif")) {
				mediaType = MediaType.valueOf(context.getMimeType("dummy.jpeg"));
			} else {
				mediaType = MediaType.valueOf(context.getMimeType(imgName));
				headers.setContentType(mediaType);
			}
		}

		Blob blob = board.getBoardImg();
		if (blob != null) {
			body = blobToByteArray(blob);
		}
		re = new ResponseEntity<byte[]>(body, headers, HttpStatus.OK);
		return re;

	}

	public byte[] blobToByteArray(Blob blob) {
		byte[] result = null;
		try (InputStream is = blob.getBinaryStream(); ByteArrayOutputStream baos = new ByteArrayOutputStream();) {
			byte[] b = new byte[819200];
			int len = 0;
			while ((len = is.read(b)) != -1) {
				baos.write(b, 0, len);
			}
			result = baos.toByteArray();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
