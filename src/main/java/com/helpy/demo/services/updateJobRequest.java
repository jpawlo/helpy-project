package com.helpy.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helpy.demo.repository.JobRequestRepository;

@Service
public class updateJobRequest {
	@Autowired
	private JobRequestRepository jobRequest;
	
	public void saveAcceptedJobRequest(String job_id) {
		jobRequest.updateByJobRequestServerJobId("In progress", job_id);
	}
	public void updateExpiredJobRequest() {
		jobRequest.updateExpiredJobRequest();
	}
}
