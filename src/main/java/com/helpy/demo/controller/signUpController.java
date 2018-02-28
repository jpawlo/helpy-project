package com.helpy.demo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.helpy.demo.dao.User;
import com.helpy.demo.dao.verificationCode;
import com.helpy.demo.services.UserService;
import com.helpy.demo.services.signUpService;


@Controller
public class signUpController {
	@Autowired 
	private signUpService service;
	
	@RequestMapping(method = RequestMethod.POST, value = "/signup/createaccount/newuser/registration")
	@ResponseBody
	public String registerClient(@RequestBody List<User> user){
		String hashedPassword = service.hashedMD5Password(user.get(0).getPassword());
		user.get(0).setPassword(hashedPassword);
		service.addUserToDb(user);
		service.sendEmail(user.get(0).getEmail());
		return "1";
	}
	
	@RequestMapping("/signup/validate/emailaddress/{email}")
	@ResponseBody
	public Map<String,String> checkEmailAddressValidity(@PathVariable String email){
	//	String res = service.validateEmailAddress(email);
		Map<String,String> map = new HashMap<>();
		map.put("msg", "1");
		map.put("hello","Hello");
		return map;
	}
	@RequestMapping(method = RequestMethod.POST, value = "/verify/user/account")
	public String verifyAccount(@RequestParam (name = "verificationCode") String VerificationCode, @RequestParam (name = "emailAddress") String emailAddress){
		boolean res = service.validateEmailAddress(VerificationCode);
		if(res){
			new UserService().GetUserInformationByEmail(emailAddress);
			System.out.print("Success");
		}else{
			System.out.print("Fail");
		}
		return "index";
	}
}
