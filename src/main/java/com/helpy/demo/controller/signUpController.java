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
import org.springframework.web.bind.annotation.RestController;

import com.helpy.demo.dao.User;
import com.helpy.demo.services.UserService;
import com.helpy.demo.services.keyGenerator;
import com.helpy.demo.services.signUpService;

@Controller
public class signUpController {
	@Autowired 
	private signUpService service;
	@Autowired
	private UserService updateUserInfo;
	
	@RequestMapping(method = RequestMethod.POST, value = "/signup/createaccount/newuser/registration")
	@ResponseBody
	public String registerClient(@RequestBody List<User> user){
		System.out.println("Email Address: "+user.get(0).getEmail() );
		if(user.get(0).getEmail()=="" || user.get(0).getEmail()==null ){
			return "2";
		}else{
			String hashedPassword = service.hashedMD5Password(user.get(0).getPassword());
			String user_id = new keyGenerator().generateVerificationKey(20);
			user.get(0).setPassword(hashedPassword);
			user.get(0).setLevelOfAccess("Client");
			user.get(0).setUserId(user_id);
			user.get(0).setAdminCertified(false);
			user.get(0).setStatus("0");
			user.get(0).setUserRate("80");
			service.addUserToDb(user);
			service.sendEmail(user.get(0).getEmail(),user_id);
			System.out.println("User ID: "+user_id);
			return "1";
		}
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
		String result = String.valueOf(res);
		String path = "";
		if(result.equals("true")){
			System.out.println("Existing");
			updateUserInfo.GetUserInformationByEmail(emailAddress);
			path = "signin";
		}else{
			System.out.println("Not Existing");
			path = "errorMessage";
		}
		return path;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/checkEmail/ifRegistered") 
	@ResponseBody
	public Map<String, String> validateEmailAddress(@RequestBody List<User> user){
		Map<String, String> map = new HashMap<>();
		boolean res = service.validateEmailOnSignUp(user.get(0).getEmail());
		map.put("result", String.valueOf(res));
		return map;
		
	}

}
