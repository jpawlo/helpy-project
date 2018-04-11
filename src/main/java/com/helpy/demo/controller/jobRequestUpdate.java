package com.helpy.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.helpy.demo.services.updateJobRequest;

@RestController
@Controller
public class jobRequestUpdate {
	
	@Autowired 
	private updateJobRequest jobRequestUpdate;
	
	@RequestMapping(value = "/user/update/expired-job-request", method = RequestMethod.POST)
	public void updateJobRequestExpiredNow() {
		jobRequestUpdate.updateExpiredJobRequest();
	}
	
}
