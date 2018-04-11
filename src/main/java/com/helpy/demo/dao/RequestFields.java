package com.helpy.demo.dao;
import java.util.Date;


import javax.persistence.*;


import org.springframework.data.annotation.CreatedDate;

@Entity
@Table(name = "ClientJobRequest")

public class RequestFields {
	
	public RequestFields() {
		// TODO Auto-generated constructor stub
	}
	public RequestFields(String DoerJobId, String ClientJobId, String JobTitle, String Distance, String JobType, String AmountRequired,
						String DeliveryExactTime, String UserRequest, String RequestStatus) {
		
		this.doerJobId = DoerJobId;
		this.clientJobId = ClientJobId;
		this.jobTitle = JobTitle;
		this.distance = Distance;
		this.jobType = JobType;
		this.amountRequired = AmountRequired;
		this.deliveryExactTime = DeliveryExactTime;
		this.userRequest = UserRequest;
		this.requestStatus = RequestStatus;
		
	}
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long requestid;
	
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
    @Temporal(TemporalType.TIMESTAMP)
    @CreatedDate
    public Date requestDate;
    
    
    public Long getRequestid() {
		return requestid;
	}
	public void setRequestid(Long Requestid) {
		requestid = Requestid;
	}
	public String getDoerJobId() {
		return doerJobId;
	}
	public void setDoerJobId(String DoerJobId) {
		doerJobId = DoerJobId;
	}
	public String getClientJobId() {
		return clientJobId;
	}
	public void setClientJobId(String ClientJobId) {
		clientJobId = ClientJobId;
	}
	public String getJobTitle() {
		return jobTitle;
	}
	public void setJobTitle(String JobTitle) {
		jobTitle = JobTitle;
	}
	public String getDistance() {
		return distance;
	}
	public void setDistance(String Distance) {
		distance = Distance;
	}
	public String getJobType() {
		return jobType;
	}
	public void setJobType(String JobType) {
		jobType = JobType;
	}
	public String getAmountRequired() {
		return amountRequired;
	}
	public void setAmountRequired(String AmountRequired) {
		amountRequired = AmountRequired;
	}
	public String getDeliveryExactTime() {
		return deliveryExactTime;
	}
	public void setDeliveryExactTime(String DeliveryExactTime) {
		deliveryExactTime = DeliveryExactTime;
	}
	public String getUserRequest() {
		return userRequest;
	}
	public void setUserRequest(String UserRequest) {
		userRequest = UserRequest;
	}
	public String getRequestStatus() {
		return requestStatus;
	}
	public void setRequestStatus(String ReqStatus) {
		requestStatus = ReqStatus;
	}
	public Date getRequestDate() {
		return requestDate;
	}
	public void setRequestDate(Date RequestDate) {
		requestDate = RequestDate;
	}


	

	
}
