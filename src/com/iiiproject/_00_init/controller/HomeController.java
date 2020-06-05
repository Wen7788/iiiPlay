package com.iiiproject._00_init.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iiiproject._00_backstage.service.CountCompanyService;
import com.iiiproject._00_backstage.service.CountMemberSaleService;
import com.iiiproject._00_backstage.service.CountMemberService;
import com.iiiproject._00_backstage.service.CountMouseService;
import com.iiiproject._00_backstage.service.CountOtherThreeService;
import com.iiiproject._00_backstage.service.TestService;
import com.iiiproject.forum.service.IArticleService;
import com.iiiproject.product.service.IProductBeanService;



@Controller
public class HomeController {

	@Autowired
	IProductBeanService pdService;
	

	@Autowired
	CountMemberService memberService;
	
	@Autowired
	IArticleService ArticleService;
	
	@Autowired
	CountMouseService countMouseService;
	
	@Autowired
	CountMemberSaleService countMemberSaleService;
	
	@Autowired
	TestService testService;
	

	@Autowired 
	CountOtherThreeService  CountOtherThreeService;

	@Autowired
	CountCompanyService countCompanyService;
	
	

	@RequestMapping("/")
	public String home(Model model) {
		
		model.addAttribute("memberList", pdService.selectHot());
	
		
		return "index";
	
	

	}

	@RequestMapping("/bs")
	public String bsHome(Model model) {
		
		List<Long> listK = new ArrayList<>();
		Long K;
		for(int i=1; i<12 ;i++) {
			 K = CountOtherThreeService.getKeyboard(i);
			listK.add(K) ;
			
		}
		model.addAttribute("listK" , listK);
		
		
		List<Long> listM = new ArrayList<>();
		Long M;
		for(int i=1; i<12 ;i++) {
			 M = CountOtherThreeService.getMousePad(i);
			listM.add(M) ;
		
		}
		model.addAttribute("listM" , listM);
		
		
		List<Long> listE = new ArrayList<>();
		Long E;
		for(int i=1; i<12 ;i++) {
			 E = CountOtherThreeService.getEarphone(i);
			listE.add(E) ;
			
		}
		model.addAttribute("listE" , listE);
		
		
		
		
		
//			List<Long> list = new ArrayList<>();
//			Long e;
//			for(int i=1; i<12 ;i++) {
//				 e = testService.testget(i);
//				list.add(e) ;
//				System.out.println("測試"+e);
//			}
//			model.addAttribute("list" , list);
		
		
		
		
		Long cmember = memberService.getMemberCount();
		model.addAttribute("cmember",cmember);
		System.out.println(cmember);
	
		Long countsale = memberService.getSaleCount();
		model.addAttribute("countsale", countsale);
		
		
		Long countarticle = ArticleService.getAllArticleCounts();
		model.addAttribute("countarticle",countarticle);
		
		Long countorder = memberService.getOrderCount();
		model.addAttribute("countorder",countorder);
		
		Long countM5 = memberService.getMouse5();
		model.addAttribute("countM5",countM5);
		
		Long countm1 = countMouseService.getMouse1();
		model.addAttribute("countm1",countm1);
		
		Long countm2 = countMouseService.getMouse2();
		model.addAttribute("countm2",countm2);
		
		Long countm3 = countMouseService.getMouse3();
		model.addAttribute("countm3",countm3);
		
		Long countm4 = countMouseService.getMouse4();
		model.addAttribute("countm4",countm4);
		
		Long countm5 = countMouseService.getMouse5();
		model.addAttribute("countm5",countm5);
		
		Long countm6 = countMouseService.getMouse6();
		model.addAttribute("countm6",countm6);
		
		Long countm7 = countMouseService.getMouse7();
		model.addAttribute("countm7",countm7);
		
		Long countm8 = countMouseService.getMouse8();
		model.addAttribute("countm8",countm8);
		
		Long countm9 = countMouseService.getMouse9();
		model.addAttribute("countm9",countm9);
		
		Long countm10 = countMouseService.getMouse10();
		model.addAttribute("countm10",countm10);
		
		Long countm11 = countMouseService.getMouse11();
		model.addAttribute("countm11",countm11);
		
		Long countm12 = countMouseService.getMouse12();
		model.addAttribute("countm12",countm12);
		
		Long countMm = countMemberSaleService.getMaleSale();
		model.addAttribute("countMm",countMm);

		Long countFf = countMemberSaleService.getFemaleSale();
		model.addAttribute("countFf",countFf);
		
		Long countA =  countMemberSaleService.getAllSale();
		model.addAttribute("countA",countA);
		
		Long countMale = countMemberSaleService.getMale();
		model.addAttribute("countMale",countMale);
		
		Long countFemale = countMemberSaleService.getFemale();
		model.addAttribute("countFemale",countFemale);
				
		
		Long countK12 = CountOtherThreeService.getKeyboard12();
		model.addAttribute("countK12",countK12);
		
		Long countM12 =  CountOtherThreeService.getMousePad12();
		model.addAttribute("countM12",countM12);
		
		Long countE12 =  CountOtherThreeService.getMousePad12();
		model.addAttribute("countE12",countE12);
		
		
		
		Long countR11 = countCompanyService.getRazer1();
		model.addAttribute("countR11",countR11);
		
		Long countR22 = countCompanyService.getRazer2();
		model.addAttribute("countR22",countR22);
		
		Long countR33 = countCompanyService.getRazer3();
		model.addAttribute("countR33",countR33);
		
		Long countR44 = countCompanyService.getRazer4();
		model.addAttribute("countR44",countR44);
		
		Long countL11 = countCompanyService.getLogi1();
		model.addAttribute("countL11",countL11);
		
		Long countL22 = countCompanyService.getLogi2();
		model.addAttribute("countL22",countL22);
		
		Long countL33 = countCompanyService.getLogi3();
		model.addAttribute("countL33",countL33);
		
		Long countL44 = countCompanyService.getLogi4();
		model.addAttribute("countL44",countL44);
		
		Long countY11 = countCompanyService.getYuet1();
		model.addAttribute("countY11",countY11);

		Long countY22 = countCompanyService.getYuet2();
		model.addAttribute("countY22",countY22);
		
		Long countY33 = countCompanyService.getYuet3();
		model.addAttribute("countY33",countY33);
		
		Long countY44 = countCompanyService.getYuet4();
		model.addAttribute("countY44",countY44);
		
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
