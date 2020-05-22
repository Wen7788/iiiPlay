package com.iiiproject.lab02.controller;

import java.io.IOException;


import javax.servlet.ServletException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.iiiproject.lab02.service.IMemberService;
 

@Controller
public class ResetPasswordServlet{
	@Autowired
	private IMemberService mService;
    
 
    private String host="smtp.gmail.com";
    private String port="587";
    private String email="ericeric4062@gmail.com";
    private String name="Administer";
    private String pass="ab82423321";
    
 
     
	@RequestMapping(path="forget")
	public String page() {
		return "member/forget";
	}
 
    @RequestMapping("sendEmail")
    protected String doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String recipient = request.getParameter("email");
        String subject = "Your Password has been reset";
 
        
        String newPassword = mService.resetCustomerPassword(recipient);
 
        String content = "Hi, this is your new password: " + newPassword;
        content += "\nNote: for security reason, "
                + "you must change your password after logging in.";
 
        String message = "";
 
        try {
            EmailUtility.sendEmail(host, port, email, name, pass,
                    recipient, subject, content);
            message = "Your password has been reset. Please check your e-mail.";
        } catch (Exception ex) {
            ex.printStackTrace();
            message = "There were an error: " + ex.getMessage();
        } finally {
            request.setAttribute("message", message);
                       
        } return "member/message";
    }
 
}