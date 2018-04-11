package com.helpy.demo.controller;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.helpy.demo.dao.*;
import com.helpy.demo.repository.UserInformation;
import com.helpy.demo.services.signInService;
import com.helpy.demo.services.signUpService;
import com.helpy.demo.services.userProfileService;

@RestController
@Controller
@SessionAttributes("user_id")
public class signInController {
	
	@Autowired 
	private signInService service;
	@Autowired 
	private signUpService hashedPasswordService;
	@Autowired
	private userProfileService userProfile;
	
	
	@RequestMapping(method = RequestMethod.POST, value = "/helpy/signin")
	@ResponseBody
	public Map<String, String> signIn(@RequestBody List<Login> user, ModelMap model){
		Map<String, String> map = new HashMap<String,String>();
		String hashedPassword = hashedPasswordService.hashedMD5Password(user.get(0).getPassword());
		user.get(0).setPassword(hashedPassword);
		
		List<User> userInfo = new ArrayList<>();
		
		String email = user.get(0).getEmail();
		userInfo = userProfile.getUserInformationByEmail(email);
		map = service.loginProcess(user.get(0).getEmail(), user.get(0).getPassword());
			if(map.get("header").equals("Login Success")){
				model.addAttribute("user_id",userInfo.get(0).getUserId());
			}
		return map;
	}
	
}
