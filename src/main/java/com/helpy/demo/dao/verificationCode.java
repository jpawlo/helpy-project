package com.helpy.demo.dao;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name = "email_verification")
public class verificationCode {
	@Id
	private String code;
	private Date expirationDate;
	private String email;

	public verificationCode(){
		
	}


	public verificationCode(String code, Date expirationDate,String email) {
		super();
		this.code = code;
		this.expirationDate = expirationDate;
		this.email = email;
	}



	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
	}


	public Date getExpirationDate() {
		return expirationDate;
	}


	public void setExpirationDate(Date expirationDate) {
		this.expirationDate = expirationDate;
	}
	
}
