package com.helpy.demo.dao;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table (name = "admin_wallet")
public class adminWallet {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String jobId;
	private float systemFee;
	private String doerId;
	private String clientId;
	private String startTime;
	private String endTime;
	private float deliveryFee;
	private String status;
	private String startDate;
	private String endDate;
	
	public adminWallet() {
		
	}

	public adminWallet(int id, String jobId, float systemFee, String doerId, String clientId, String startTime,
			String endTime, float deliveryFee, String status, String startDate, String endDate) {
		super();
		this.id = id;
		this.jobId = jobId;
		this.systemFee = systemFee;
		this.doerId = doerId;
		this.clientId = clientId;
		this.startTime = startTime;
		this.endTime = endTime;
		this.deliveryFee = deliveryFee;
		this.status = status;
		this.startDate = startDate;
		this.endDate = endDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getJobId() {
		return jobId;
	}

	public void setJobId(String jobId) {
		this.jobId = jobId;
	}

	public float getSystemFee() {
		return systemFee;
	}

	public void setSystemFee(float systemFee) {
		this.systemFee = systemFee;
	}

	public String getDoerId() {
		return doerId;
	}

	public void setDoerId(String doerId) {
		this.doerId = doerId;
	}

	public String getClientId() {
		return clientId;
	}

	public void setClientId(String clientId) {
		this.clientId = clientId;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public float getDeliveryFee() {
		return deliveryFee;
	}

	public void setDeliveryFee(float deliveryFee) {
		this.deliveryFee = deliveryFee;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	
	

	
}
