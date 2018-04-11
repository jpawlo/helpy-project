package com.helpy.demo.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helpy.demo.dao.Building;
import com.helpy.demo.dao.User;
import com.helpy.demo.dao.jobRequestNotification;
import com.helpy.demo.repository.ListOfBuildingsRepository;
import com.helpy.demo.repository.UserInformation;

@Service
public class userProfileService {
	
	@Autowired
	private UserInformation rep;
	
	@Autowired
	private ListOfBuildingsRepository buildings;
	
	@Autowired
	private signUpService hashedPassword;
	
	@Autowired
	private notificationJobRequest notif_service;
	
	public List<User> getUserInformationByEmail(String email){
		List<User> userInfo = new ArrayList<>();
		userInfo = rep.getByEmail(email);
		return userInfo;
	}
	public List<User> getUserInformationByEmailLoggedIn(String email){
		List<User> userInfo = new ArrayList<>();
		userInfo = rep.getByUserId(email);
		return userInfo;
	}	
	public Iterable<Building> getListOfBuilding(){
		return buildings.findAll();
	}
	public void updateUserInformation(List<User> lsts) {
		rep.updateUserInformation(lsts.get(0).getName(), lsts.get(0).getEmail(), lsts.get(0).getPhoneNumber(), lsts.get(0).getSocialMediaAccount(), lsts.get(0).getUserId());
	}
	public boolean checkIfUserIdAndOldPasswordMatch(String user_id, String password) {
		boolean res = false;
		String iptPassword = hashedPassword.hashedMD5Password(password);
		List<User> lst = new ArrayList<>();
		lst = rep.getUsernameAndPassword(user_id, iptPassword);
		if(lst.isEmpty()) {
			res = false;
		}else {
			res = true;
		}
		return res;
	}
	public void updateUserPassword(String user_id, String password) {
		String pass = hashedPassword.hashedMD5Password(password);
		rep.updateUserPassword(pass,user_id);
	}
	public List<User> getUserById(String user_id) {
		List<User> user = new ArrayList<>();
		
		return user;
	}
}
