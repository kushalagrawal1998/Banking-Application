package com.konohaibank.controller;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/signout")
public class LogoutController {
	
		@GetMapping("/s")
		public String logout(HttpServletRequest request) {
			request.getSession().invalidate();
			return "main";
		}
	}


