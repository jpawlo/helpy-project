package com.helpy.demo.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.helpy.demo.dao.*;


public interface NotificationRepositoryJPA extends JpaRepository<jobRequestNotification, String>{

	@Transactional
	@Modifying(clearAutomatically = true)
	@Query(value = "UPDATE job_request_notification SET notif_status = ?1 WHERE notif_id = ?2",nativeQuery = true)
	void updateByJobRequestServerJobId(String status,String job_id);
}
