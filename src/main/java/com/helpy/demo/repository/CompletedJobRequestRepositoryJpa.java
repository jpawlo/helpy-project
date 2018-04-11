package com.helpy.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.helpy.demo.dao.*;


public interface CompletedJobRequestRepositoryJpa extends JpaRepository<completeJobRequestRecord, String>{
	
	@Query(value = "SELECT * FROM completed_job_notification WHERE job_id = ?1",nativeQuery = true)
	completeJobRequestRecord getAllJobCompletedNotification(String job_id);
	
	@Transactional
	@Modifying(clearAutomatically = true)
	@Query(value = "UPDATE completed_job_notification SET clientStatus = ?1, doerStatus = ?2 WHERE job_id = ?3",nativeQuery = true)
	void updateJobCompleteNotification(Boolean status1,Boolean status2, String jobid);
	
	@Query(value = "SELECT * FROM completed_job_notification WHERE cliend_id = ?1 OR doer_id = ?2 AND status = 'Not completed'",nativeQuery = true)
	List<completeJobRequestRecord> getAllJobCompletedNotificationByUserId(String user_id,String User_Id);
	
}
