package com.helpy.demo.dao;



import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.data.annotation.CreatedDate;

@Entity
@Table(name="doer_job_acceptance")
public class UserTransactiontbl {
	

	public UserTransactiontbl() {
		
	}
	


	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	public int transactionid;
	
	@Column()
	public String requestId;
	
	@Column()
	public String doerJobId;
    
    @Column()
    public String clientJobId;
    
    @Column()
    public String jobTitle;
    
    @Column(nullable = true)
    public String distance;
    
    @Column()
    public String jobType;
    
    @Column()
    public String amountRequired;
    
    @Column()
    public String deliveryExactTime;
    
    @Column()
    public String userRequest;
    
    @Column()
    public String requestStatus;
    
    @Column(nullable = true, updatable = false)
    public Date transactionDate;
	
    @Column()
    public float deliveryFee;
	
    public UserTransactiontbl(int transactionid, String requestId, String doerJobId, String clientJobId,
			String jobTitle, String distance, String jobType, String amountRequired, String deliveryExactTime,
			String userRequest, String requestStatus, Date transactionDate,float deliveryFee) {
		super();
		this.transactionid = transactionid;
		this.requestId = requestId;
		this.doerJobId = doerJobId;
		this.clientJobId = clientJobId;
		this.jobTitle = jobTitle;
		this.distance = distance;
		this.jobType = jobType;
		this.amountRequired = amountRequired;
		this.deliveryExactTime = deliveryExactTime;
		this.userRequest = userRequest;
		this.requestStatus = requestStatus;
		this.transactionDate = transactionDate;
		this.deliveryFee = deliveryFee;
	}

	public String getRequestId() {
		return requestId;
	}
    
	public void setRequestId(String requestId) {
		this.requestId = requestId;
	}

	public String getDoerJobId() {
		return doerJobId;
	}

	public void setDoerJobId(String doerJobId) {
		this.doerJobId = doerJobId;
	}

	public String getClientJobId() {
		return clientJobId;
	}

	public void setClientJobId(String clientJobId) {
		this.clientJobId = clientJobId;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public String getDistance() {
		return distance;
	}

	public void setDistance(String distance) {
		this.distance = distance;
	}

	public String getJobType() {
		return jobType;
	}

	public void setJobType(String jobType) {
		this.jobType = jobType;
	}

	public String getAmountRequired() {
		return amountRequired;
	}

	public void setAmountRequired(String amountRequired) {
		this.amountRequired = amountRequired;
	}

	public String getDeliveryExactTime() {
		return deliveryExactTime;
	}

	public void setDeliveryExactTime(String deliveryExactTime) {
		this.deliveryExactTime = deliveryExactTime;
	}

	public String getUserRequest() {
		return userRequest;
	}

	public void setUserRequest(String userRequest) {
		this.userRequest = userRequest;
	}

	public String getRequestStatus() {
		return requestStatus;
	}

	public void setRequestStatus(String requestStatus) {
		this.requestStatus = requestStatus;
	}

	public Date getTransactionDate() {
		return transactionDate;
	}

	public void setTransactionDate(Date transactionDate) {
		this.transactionDate = transactionDate;
	}

	public float getDeliveryFee() {
		return deliveryFee;
	}

	public void setDeliveryFee(float deliveryFee) {
		this.deliveryFee = deliveryFee;
	}

	
}
