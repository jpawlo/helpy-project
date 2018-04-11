package com.helpy.demo.dao;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "admin_account")
public class adminAccount {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String admin_account_id;
	private String name;
	private String username;
	private String password;
	private String lvlOfAccess;
	private String email;
	private String contactNumber;
	private String socialMediaAcct;
	
	public adminAccount() {
		
	}

	public adminAccount(int id, String admin_account_id, String name, String username, String password,
			String lvlOfAccess, String email, String contactNumber, String socialMediaAcct) {
		super();
		this.id = id;
		this.admin_account_id = admin_account_id;
		this.name = name;
		this.username = username;
		this.password = password;
		this.lvlOfAccess = lvlOfAccess;
		this.email = email;
		this.contactNumber = contactNumber;
		this.socialMediaAcct = socialMediaAcct;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAdmin_account_id() {
		return admin_account_id;
	}

	public void setAdmin_account_id(String admin_account_id) {
		this.admin_account_id = admin_account_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLvlOfAccess() {
		return lvlOfAccess;
	}

	public void setLvlOfAccess(String lvlOfAccess) {
		this.lvlOfAccess = lvlOfAccess;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getSocialMediaAcct() {
		return socialMediaAcct;
	}

	public void setSocialMediaAcct(String socialMediaAcct) {
		this.socialMediaAcct = socialMediaAcct;
	}


	
}
