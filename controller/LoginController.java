package com.konohaibank.controller;

import java.util.List;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.konohaibank.service.CustomerService;
import com.konohaibank.service.LoginService;
import com.konohaibank.entity.Customer;

@Controller
@RequestMapping("/log")
public class LoginController {
	
	String user;
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private CustomerService customerService;
	
	int bal;

	@RequestMapping("/login")
	public String welcome(HttpSession session,Model theModel) {
		
		if(session==null) {
			
			theModel.addAttribute("message", "login please");
			return "main";
			
		}
		
			
           return "main";		

		
	}

	@RequestMapping("/logindone")
	public String loginSuccess(HttpServletRequest request, HttpServletResponse response, HttpSession session,
		                 		Customer login, Model theModel) {
		
	    user = login.getAccount_no();
		System.out.println(user);
		String userlogin = loginService.loginCheck(login.getAccount_no(), login.getPassword());
		if (userlogin.equals("success")) {

			List<Customer> theAccount = loginService.getAccount(user);
			
			session.setAttribute("session", user);
			session.setMaxInactiveInterval(10 * 60);
			theModel.addAttribute("customerID", user);
			theModel.addAttribute("theAccount", theAccount);
			
			bal = customerService.getBal(user);
			 theModel.addAttribute("bal", bal);
			 System.out.println(bal);
			return "loggedin";

		} else {
			theModel.addAttribute("message", "Wrong customerID or Password");
			return "main";

		}

	}
	
	@RequestMapping("/logins")
	public String welcomes(HttpSession session,Model theModel) {
		
		if(session==null) {
			return "redirect:/log/login";
		}
		
		else {
			 String uid = (String)session.getAttribute("session");
			 
			bal = customerService.getBal(user);
			theModel.addAttribute("customerID", uid);
			theModel.addAttribute("bal", bal);
			
			
			return "loggedin";
		}
		
		
	}

}