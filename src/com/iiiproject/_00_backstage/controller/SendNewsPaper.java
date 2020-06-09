package com.iiiproject._00_backstage.controller;

import java.io.IOException;
import java.sql.Blob;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
public class SendNewsPaper {
	
 
    private String host="smtp.gmail.com";
    private String port="587";
    private String email="jerryelitebio@gmail.com";

    private String name="iiiPlay Administer";
    private String pass="z864297531";
    
 
     
//	@RequestMapping()
//	public String page() {
//		return "member/forget";
//	}
 
    @RequestMapping("/NewsPaper")
    protected String doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    	
    	
    	String recipient = "jerryelitebio@gmail.com";
        String subject = "測試email";
        
        
        
        
//        String newPassword = mService.resetCustomerPassword(recipient);
        String message = "test";
        
//        Byte [] picture =  
        		
        		
        		
//        if (newPassword=="error") {
//        	message = "找不到此信箱註冊的帳號，請重新輸入 ";
//        	 request.setAttribute("message", message);
//        			return "member/message";
//        }
// 
//        String content = "你好，這是您的新密碼: " + newPassword;
//        content += "\nNote: 為了安全理由， "
//
//                + "登入後請修改密碼"+"\r\n"+"此由iiiPlay系統自動發送，請勿回覆"
//        		
//                ;

 
 
        try {
            EmailUtilityTest.sendEmail(host, port, email, name, pass,
                    recipient, subject,message);
//            message = "Your password has been reset. Please check your e-mail.";
        } catch (Exception ex) {
            ex.printStackTrace();
//            message = "找不到此信箱註冊的帳號，請重新輸入 " ;
//        } finally {
//            request.setAttribute("message", message);
                       
        } return "redirect:/bs";
    }
    
}
