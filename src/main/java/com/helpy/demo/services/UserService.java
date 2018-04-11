package com.helpy.demo.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helpy.demo.dao.*;
import com.helpy.demo.repository.UserInformation;


@Service
public class UserService {

	@Autowired
	private UserInformation updateInfo;
	
	
	public void GetUserInformationByEmail(String user_id){
		System.out.println("USER ID USERSERVICE CLASS: "+user_id);
		String status = "1";
		updateInfo.updateUserStatus(status,user_id);
	}
	
	
}
