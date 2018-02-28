package com.helpy.demo.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.helpy.demo.dao.*;



public class UserService {

	Connection con=db_conn.getConnection();

	
	
	public void GetUserInformationByEmail(String email){
		try{
			PreparedStatement ps = con.prepareStatement("UPDATE user_client SET status=true WHERE email = ?");
			ps.setString(1,email);
			ps.executeUpdate();
		}
		catch(Exception e){
			System.out.println("GetUserInformationByEmail: "+e);
		}
	
	}
	
}
