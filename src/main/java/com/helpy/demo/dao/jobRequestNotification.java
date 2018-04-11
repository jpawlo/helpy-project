package com.helpy.demo.dao;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table( name = "job_request_notification")
public class jobRequestNotification {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String notifHeader;
	private String notifBody;
	private String notifStatus;
	private String notifServerId;
	private String notifDoerId;
	private String notifJobRequestId;
	private String notifId;
	private String notifTime;
	private String notifDate;
	
	public jobRequestNotification() {
		
	}

	public jobRequestNotification(int id, String notifHeader, String notifBody, String notifStatus,
			String notifServerId, String notifDoerId, String notifJobRequestId, String notifId, String notifTime,
			String notifDate) {
		super();
		this.id = id;
		this.notifHeader = notifHeader;
		this.notifBody = notifBody;
		this.notifStatus = notifStatus;
		this.notifServerId = notifServerId;
		this.notifDoerId = notifDoerId;
		this.notifJobRequestId = notifJobRequestId;
		this.notifId = notifId;
		this.notifTime = notifTime;
		this.notifDate = notifDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNotifHeader() {
		return notifHeader;
	}

	public void setNotifHeader(String notifHeader) {
		this.notifHeader = notifHeader;
	}

	public String getNotifBody() {
		return notifBody;
	}

	public void setNotifBody(String notifBody) {
		this.notifBody = notifBody;
	}

	public String getNotifStatus() {
		return notifStatus;
	}

	public void setNotifStatus(String notifStatus) {
		this.notifStatus = notifStatus;
	}

	public String getNotifServerId() {
		return notifServerId;
	}

	public void setNotifServerId(String notifServerId) {
		this.notifServerId = notifServerId;
	}

	public String getNotifDoerId() {
		return notifDoerId;
	}

	public void setNotifDoerId(String notifDoerId) {
		this.notifDoerId = notifDoerId;
	}

	public String getNotifJobRequestId() {
		return notifJobRequestId;
	}

	public void setNotifJobRequestId(String notifJobRequestId) {
		this.notifJobRequestId = notifJobRequestId;
	}

	public String getNotifId() {
		return notifId;
	}

	public void setNotifId(String notifId) {
		this.notifId = notifId;
	}

	public String getNotifTime() {
		return notifTime;
	}

	public void setNotifTime(String notifTime) {
		this.notifTime = notifTime;
	}

	public String getNotifDate() {
		return notifDate;
	}

	public void setNotifDate(String notifDate) {
		this.notifDate = notifDate;
	}
	
	
}
