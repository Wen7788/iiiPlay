package com.iiiproject.lab02.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iiiproject.lab02.model.MemberBean;
import com.iiiproject.lab02.service.IMemberService;


@Controller                       

public class InsertMemberServlet  {
	@Autowired
	private IMemberService mService;
	
	@RequestMapping(path="register")
	public String page() {
		return "member/MemberForm";
	}
	
	
	
	@RequestMapping(path= "insertMember.do", method = RequestMethod.POST)
	protected String action(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		System.out.println("hello");
		Map<String, String> errorMsg = new HashMap<String, String>();
		request.setAttribute("error", errorMsg);
		//讀取輸入資料
		String id =request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String []gamesArray = request.getParameterValues("games");
		String games=String.join(",", gamesArray);
		System.out.println(games);
		String ageString = request.getParameter("age");
		String statusString = request.getParameter("status");
		Integer status = Integer.valueOf(statusString);
		System.out.println(status);
		
		
		//進行必要的型態轉換，
		
		
		
		//檢查輸入資料
		if(id == null || id.trim().length()==0){
			errorMsg.put("id","帳號不能空白");			
		}
		if(password  == null || password.trim().length()==0){
			errorMsg.put("password","密碼欄不能空白");			
		}else if(password.trim().length() < 6){
			errorMsg.put("password","密碼至少要6個字元");	
		}
		if(name ==null || name.trim().length() ==0){
			errorMsg.put("name", "姓名欄不能空白");
		}
		if(email ==null || email.trim().length() ==0){
			errorMsg.put("email", "請輸入電子信箱地址");
		}
		if(ageString ==null|| ageString.trim().length() ==0 ){
			errorMsg.put("age", "請輸入年齡");
		}
		if(!errorMsg.isEmpty()){
			;
			return "member/MemberForm";
		}
		Integer age = Integer.valueOf(ageString);
		//企業邏輯的運算
		
		if (mService.isDup(id)){
			errorMsg.put("id", "帳號重複，請重新輸入新帳號");
			return "member/MemberForm";
		}
		//轉向成功加入會員頁面
		HttpSession session1 = request.getSession();
		try{
			//將要寫入的資料裝到Bean內
			MemberBean mb = new MemberBean(id,password,name, email,age, gender, games,status);
			session1.setAttribute("mb", mb);    
			mService.insert(mb);
			
//			HibernateUtil.closeSessionFactory();
		}catch(Exception e){
			e.printStackTrace();
			errorMsg.put("id", "寫入資料時發生異常,訊息:"+ e.getMessage());
		}
		//沒有任何錯誤時
		if(errorMsg.isEmpty()){
			//不這樣寫是因為頁面不會跳轉,若案重新整理寫入資料會重做一遍,容易有疑慮
			//RequestDispatcher rd = request.getRequestDispatcher("/mod27/InsertMemberSuccess.jsp");
			return "member/InsertMemberSuccess";
		
		}else{
			return "member/MemberForm";
		}
	}
}
