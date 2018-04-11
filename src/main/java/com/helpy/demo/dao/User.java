package com.helpy.demo.dao;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_client")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String idNumber;
	private String name;
	private String email;
	private String phoneNumber;
	private String password;
	private String status;
	private int loginAttempts;
	private Date accountCreated;
	private String levelOfAccess;
	private float remainingBalance = 0;
	private String userId;
	private String socialMediaAccount;
	private boolean adminCertified;
	private String userRate;
	public User(){
		
	}
	public User( String idNumber, String name, String email, String phoneNumber, String password, String status,
			int loginAttempts, Date accountCreated, String levelOfAccess, float remainingBalance, String userId, String socialMediaAccount, boolean adminCertified,String userRate) {
		super();
		this.idNumber = idNumber;
		this.name = name;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.password = password;
		this.status = status;
		this.loginAttempts = loginAttempts;
		this.accountCreated = accountCreated;
		this.levelOfAccess = levelOfAccess;
		this.remainingBalance = remainingBalance;
		this.userId = userId;
		this.socialMediaAccount = socialMediaAccount;
		this.adminCertified = adminCertified;
		this.userRate = userRate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
	
	}
	public String getIdNumber() {
		return idNumber;
	}
	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getLoginAttempts() {
		return loginAttempts;
	}
	public void setLoginAttempts(int loginAttempts) {
		this.loginAttempts = loginAttempts;
	}
	public Date getAccountCreated() {
		return accountCreated;
	}
	public void setAccountCreated(Date accountCreated) {
		this.accountCreated = accountCreated;
	}
	public String getLevelOfAccess() {
		return levelOfAccess;
	}
	public void setLevelOfAccess(String levelOfAccess) {
		this.levelOfAccess = levelOfAccess;
	}
	public float getRemainingBalance() {
		return remainingBalance;
	}
	public void setRemainingBalance(float remainingBalance) {
		this.remainingBalance = remainingBalance;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getSocialMediaAccount() {
		return socialMediaAccount;
	}
	public void setSocialMediaAccount(String socialMediaAccount) {
		this.socialMediaAccount = socialMediaAccount;
	}
	public boolean isAdminCertified() {
		return adminCertified;
	}
	public void setAdminCertified(boolean adminCertified) {
		this.adminCertified = adminCertified;
	}
	public String getUserRate() {
		return userRate;
	}
	public void setUserRate(String userRate) {
		this.userRate = userRate;
	}

	
	
}
