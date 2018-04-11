package com.helpy.demo.services;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.mail.internet.MimeMessage;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.helpy.demo.dao.User;
import com.helpy.demo.dao.verificationCode;
import com.helpy.demo.repository.EmailVerification;
import com.helpy.demo.repository.HelpyRepository;
import com.helpy.demo.repository.UserInformation;



@Service
public class signUpService {
	
	@Autowired
	private HelpyRepository rep;
	@Autowired
	private EmailVerification rep_email;
	@Autowired
	private UserInformation rep_user;
	private JavaMailSender send;
	@Autowired
	public signUpService(JavaMailSender javaMailSender){
		this.send = javaMailSender;	
	}
	
	public void addUserToDb(List<User> user){
		rep.save(user);
	}

	
	public String hashedMD5Password(String user){  
		String hashed = "";
		try{
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(user.getBytes());
			byte byteData[] = md.digest();
	        StringBuffer hexString = new StringBuffer();
	    	for (int i=0;i<byteData.length;i++) {
	    		String hex=Integer.toHexString(0xff & byteData[i]);
	   	     	if(hex.length()==1) hexString.append('0');
	   	     	hexString.append(hex);
	    	}
	    	hashed = hexString.toString();
		}catch(Exception e){
			System.out.println("signUpService/hashedMD5Password: "+e);
		}
    	return hashed;
		
	}

	public void sendEmail(String email_address,String user_id){
		
		try{
			String verificationCode = new keyGenerator().generateVerificationKey(25);
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			LocalDate datenow = LocalDate.now();
			String dateNow = datenow.getYear()+"-"+datenow.getMonthValue()+"-"+datenow.getDayOfMonth();
			java.util.Date utilDate =  dateFormat.parse(dateNow);
			java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		
			List<verificationCode> list = new ArrayList<>(Arrays.asList(
					new verificationCode(verificationCode,sqlDate,email_address)
			));
			rep_email.save(list);
			MimeMessage message = send.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, MimeMessageHelper.MULTIPART_MODE_MIXED_RELATED,StandardCharsets.UTF_8.name());
			String html="<div style='background-color:white!important; height:90vh; margin-bottom:2%;'>"+
							"<center>"+
								"<div style='background-color:#343a40!important; font-family:Verdana; padding-top:2%; box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23); width:100%;'>"+
									"<p style='margin-top:6%;font-weight:bolder; font-size:600%; font-family:Ubuntu; letter-spacing:-3px; color:white;'>help<span style='color:#428bca;'>y</span></p>"+
									"<h3 style='padding:5%; color:white; margin:5%; margin-top:-10%; margin-bottom:0%;'><span style='color:#428bca'>Activate</span> your <span style='color:#428bca'>account</span> by clicking the button below</h3>"+
									"<form action='http://helpyme.com/verify/user/account' method='POST'>"+
										"<input type='hidden' name='verificationCode' value='"+verificationCode+"' >"+
										"<input type='hidden' name='emailAddress' value='"+user_id+"'>"+
										"<button type='submit' style='font-size:200%;font-weight:bolder; border:.5px solid white; border-radius:10px; padding:2%; margin:2%; margin-top:0%; color:#343a40!important; background-color:white;'>"+
												"Activate <span style='font-family:Ubuntu; font-size:110%;'>Help<span style='color:#428bca'>y</span></span>"+
										"</button>"+
								"</div>"+
							"</center>"+
						"</div>";
			helper.setTo(email_address);
			helper.setText(html,true);
			helper.setSubject("Helpy");
			helper.setFrom("helpymec@helpyme.com");
			send.send(message);
			
		}catch(Exception e){
			System.out.println("sendNotification: "+e);
		}
	}
	public boolean validateEmailAddress(String code){
		boolean res = false;
		List<verificationCode> as= rep_email.getByCode(code);
		if(as.isEmpty()) {
			res = false;
		}else {
			res = true;
			rep_email.delete(code);
			res = true;
		}
		return res;
	}
	
	public boolean validateEmailOnSignUp(String email){
		List<User> user = new ArrayList<>();
		user = rep_user.getByEmail(email);
		if(user.isEmpty()) {
			return false;
		}else {
			return true;
		}
	}
	
	
	class UserMapper implements RowMapper{

		@Override
		public User mapRow(ResultSet rs, int rowNum) throws SQLException {
			User u = new User();
			u.setId(rs.getInt("id"));
			u.setEmail(rs.getString("email"));
			return u;
		}
		
	}
}
