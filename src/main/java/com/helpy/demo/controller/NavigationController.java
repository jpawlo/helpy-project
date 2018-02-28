package com.helpy.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class NavigationController {

	
	@RequestMapping("/")
	public String welcomePage(){
		return "index";
	}
	@RequestMapping("/signup")
	public String signUpPage(){
		return "signup";
	}
	@RequestMapping("/signin")
	public String signInPage(){
		return "signin";
	}
	@RequestMapping("/profile")
	public String profilePage(){
		return "profile";
	}
}
