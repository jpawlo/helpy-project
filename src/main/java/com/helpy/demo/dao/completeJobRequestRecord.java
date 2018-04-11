package com.helpy.demo.dao;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "completed_job_notification")
public class completeJobRequestRecord {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String doerId;
	private String cliendId;
	private String jobId;
	private Boolean clientStatus;
	private Boolean doerStatus;
	private String status;
	
	public completeJobRequestRecord() {
		
	}

	public completeJobRequestRecord(int id, String doerId, String cliendId, String jobId, Boolean clientStatus,
			Boolean doerStatus,String status) {
		super();
		this.id = id;
		this.doerId = doerId;
		this.cliendId = cliendId;
		this.jobId = jobId;
		this.clientStatus = clientStatus;
		this.doerStatus = doerStatus;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDoerId() {
		return doerId;
	}

	public void setDoerId(String doerId) {
		this.doerId = doerId;
	}

	public String getCliendId() {
		return cliendId;
	}

	public void setCliendId(String cliendId) {
		this.cliendId = cliendId;
	}

	public String getJobId() {
		return jobId;
	}

	public void setJobId(String jobId) {
		this.jobId = jobId;
	}

	public Boolean getClientStatus() {
		return clientStatus;
	}

	public void setClientStatus(Boolean clientStatus) {
		this.clientStatus = clientStatus;
	}

	public Boolean getDoerStatus() {
		return doerStatus;
	}

	public void setDoerStatus(Boolean doerStatus) {
		this.doerStatus = doerStatus;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}
