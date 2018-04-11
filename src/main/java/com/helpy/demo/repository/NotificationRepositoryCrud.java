package com.helpy.demo.repository;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.helpy.demo.admin.dao.*;
import com.helpy.demo.dao.jobRequestNotification;



public interface NotificationRepositoryCrud extends CrudRepository<jobRequestNotification, String>{
	@Query(value = "SELECT * FROM job_request_notification WHERE notif_server_id = ?1", nativeQuery = true)
	List<jobRequestNotification> findByServerJobId(String serverId);
	
	@Query(value = "SELECT * FROM job_request_notification WHERE notif_server_id = ?1",nativeQuery = true)
	List<jobRequestNotification> getNotificationForJobAcceptanceUser(String user_id);
}