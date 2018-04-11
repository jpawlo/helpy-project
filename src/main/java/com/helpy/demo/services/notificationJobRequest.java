package com.helpy.demo.services;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helpy.demo.dao.jobRequestNotification;
import com.helpy.demo.dao.server_job_request;
import com.helpy.demo.repository.NotificationRepositoryCrud;

@Service
public class notificationJobRequest {

	@Autowired
	private NotificationRepositoryCrud notifCrud;
	@Autowired
	private keyGenerator key;
	
	public void saveAcceptJobRequestNotification(List<server_job_request> serverJobRequest, String doer_id) {

		try {
			LocalDateTime timeNow = LocalDateTime.now();
			String dateNow = timeNow.getYear()+"-"+timeNow.getMonthValue()+"-"+timeNow.getDayOfMonth();
			String timenow = timeNow.getHour()+":"+timeNow.getMinute()+":"+timeNow.getSecond();
			String notif_id = key.generateVerificationKey(7);
			
			jobRequestNotification notif = new jobRequestNotification();
			
			notif.setNotifBody( serverJobRequest.get(0).getLocation_details() );
			notif.setNotifDoerId(doer_id);
			notif.setNotifHeader( serverJobRequest.get(0).getCategory() );
			notif.setNotifJobRequestId( serverJobRequest.get(0).getJob_id() );
			notif.setNotifStatus( "Modal" );
			notif.setNotifServerId( serverJobRequest.get(0).getServer_job_id() );
			notif.setNotifTime(timenow);
			notif.setNotifDate(dateNow);
			notif.setNotifId(notif_id);
			
			notifCrud.save(notif);
		} catch (Exception e) {
			System.out.println("saveAcceptJobRequestNotification:"+e);
		}
	}
	
	public List<jobRequestNotification> getAcceptedJobRequestNotification(String user_id){
		List<jobRequestNotification> list = new ArrayList<>();
		list = notifCrud.getNotificationForJobAcceptanceUser(user_id);
		return list;
	}
	
	public void updateJobRequestNotification(String notif_id) {
		
	}
}
