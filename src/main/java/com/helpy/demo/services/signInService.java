package com.helpy.demo.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helpy.demo.repository.LoginRepository;
import com.helpy.demo.repository.UserInformation;
import com.helpy.demo.dao.*;

@Service
public class signInService {

	@Autowired
	private UserInformation rep_user;
	
	
	public Map<String,String> loginProcess(String email, String password){
		Map<String, String> map = new HashMap<>();
		
		List<User> user = new ArrayList<>();
		String resultBody = "";
		String resultHeader = "";
		String sessionId = "";		
	
		user = rep_user.getByEmail(email);
					
					if(user.isEmpty()) {
						resultHeader = "Please check login credentials";
						resultBody = email+" not valid";
						sessionId = "";				
					}else {
						if(!user.get(0).getStatus().equals("0") || user.get(0).equals("Freezed") ) {
							
							if(user.get(0).getLoginAttempts()<3) {
							
								if(password.equals(user.get(0).getPassword())) {
			
									user.get(0).setLoginAttempts(0);
									rep_user.save(user);
									resultHeader = "Login Success";
									resultBody = email+" account successfully logged in";
									sessionId = email;	
									
									}else {
										
										int attempts = user.get(0).getLoginAttempts();
										attempts += 1;
										user.get(0).setLoginAttempts(attempts);
										rep_user.save(user);
										resultHeader = "Login Fail";
										resultBody = email+" account failed to logged in";
										sessionId = "";		
										
									}
								
							}else {
								
								resultHeader = "Account Blocked";
								resultBody = email+" account blocked";
								sessionId = "";	
								
							}
							
						}else {
							resultHeader = "Account Not Activated or is freezed";
							resultBody = email+" account not activated or is freezed";
							sessionId = "";							
						}
					}			
					map.put("header", resultHeader);
					map.put("body", resultBody);
					map.put("session", sessionId);
					return map;
	}
	
}
