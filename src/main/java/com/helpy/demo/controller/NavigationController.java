package com.helpy.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@SessionAttributes("user_id")
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
	public String signInPage(ModelMap model){
		return "signin";
	}
	@RequestMapping("/errorMessage")
	public String errorPage(){
		return "errorMessage";
	}
	@RequestMapping("/profile")
	public String profilePage(ModelMap map){
		String checkIfUserLoggedIn = String.valueOf( map.get("user_id") );
		String path = "";
		if(!checkIfUserLoggedIn.equals("null")) {
			path = "profile";
		}else {
			path = "signin";
		}
		return path;
	}
	@RequestMapping("/helpy/now/summary/page")
	public String summaryPage() {
		return "summaryPage";
	}
	@RequestMapping("/admin-login")
	public String adminSignIn(ModelMap map) {
		 return "admin_login";	
	}
}
