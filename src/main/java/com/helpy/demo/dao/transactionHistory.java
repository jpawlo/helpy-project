package com.helpy.demo.dao;

import java.sql.Date;
import java.sql.Time;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "client_transaction_history")
public class transactionHistory {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String user_id;
	private String provider_id;
	private String transaction_id;
	private String type_of_transaction_id;
	private String type_of_transaction;
	private float amount_spent;
	private Date transaction_date;
	private Time transaction_time;
	
	public transactionHistory() {
		
	}

	public transactionHistory( String user_id, String provider_id, String transaction_id,
			String type_of_transaction_id, String type_of_transaction, float amount_spent, Date transaction_date,
			Time transaction_time) {
		super();
		this.user_id = user_id;
		this.provider_id = provider_id;
		this.transaction_id = transaction_id;
		this.type_of_transaction_id = type_of_transaction_id;
		this.type_of_transaction = type_of_transaction;
		this.amount_spent = amount_spent;
		this.transaction_date = transaction_date;
		this.transaction_time = transaction_time;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getProvider_id() {
		return provider_id;
	}

	public void setProvider_id(String provider_id) {
		this.provider_id = provider_id;
	}

	public String getTransaction_id() {
		return transaction_id;
	}

	public void setTransaction_id(String transaction_id) {
		this.transaction_id = transaction_id;
	}

	public String getType_of_transaction_id() {
		return type_of_transaction_id;
	}

	public void setType_of_transaction_id(String type_of_transaction_id) {
		this.type_of_transaction_id = type_of_transaction_id;
	}

	public String getType_of_transaction() {
		return type_of_transaction;
	}

	public void setType_of_transaction(String type_of_transaction) {
		this.type_of_transaction = type_of_transaction;
	}

	public float getAmount_spent() {
		return amount_spent;
	}

	public void setAmount_spent(float amount_spent) {
		this.amount_spent = amount_spent;
	}

	public Date getTransaction_date() {
		return transaction_date;
	}

	public void setTransaction_date(Date transaction_date) {
		this.transaction_date = transaction_date;
	}

	public Time getTransaction_time() {
		return transaction_time;
	}

	public void setTransaction_time(Time transaction_time) {
		this.transaction_time = transaction_time;
	}
	
	
	
	
	
	
	
}
