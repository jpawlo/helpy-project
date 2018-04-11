package com.helpy.demo.services;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helpy.demo.dao.completeJobRequestRecord;
import com.helpy.demo.repository.CompletedJobRequestRepositoryJpa;

@Service
public class completeJobRequestService {
	
	@Autowired
	private CompletedJobRequestRepositoryJpa completedJobRequestRepository;
	
	public void saveJobRequestCompletedByOne(completeJobRequestRecord com) {
		completedJobRequestRepository.save(com);
	}
	public completeJobRequestRecord getJobCompletedRecord(String jobId) {
		return completedJobRequestRepository.getAllJobCompletedNotification(jobId);
	}
	public  List<completeJobRequestRecord> getAllJobCompletedNotificationByUserId(String user_id) {
		return completedJobRequestRepository.getAllJobCompletedNotificationByUserId(user_id,user_id);
	}
}
