package com.helpy.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.helpy.demo.dao.User;
import com.helpy.demo.dao.server_job_request;
import com.helpy.demo.repository.JobRequestRepository;
import com.helpy.demo.repository.UserInformation;

@RestController
@Controller
@SessionAttributes("user_id")
public class viewRequestController {

	@Autowired
	private UserInformation userInformation;
	@Autowired
	private JobRequestRepository job;
	
	@RequestMapping(method = RequestMethod.POST, value = "/profile/get/job/requester/information")
	@ResponseBody
	public List<User> displayJobRequestInformation(@RequestBody List<User> user){
		
		List<User> list = userInformation.getByUserId(user.get(0).getUserId());
		
		return list;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/request/profile/get/job/details")
	@ResponseBody
	public List<server_job_request> displayJobFullDetails(@RequestBody List<server_job_request> jobId){
		String job_id = jobId.get(0).getJob_id();
		List<server_job_request> lst = job.getJobReqquestByJobId( job_id );
		return lst;
	}
	
	@RequestMapping(method = RequestMethod.POST, value = "/transaction/populate/table")
	@ResponseBody
	public List<server_job_request> displayTransactionHistory(ModelMap map){
		String user = String.valueOf( map.get("user_id") );
		List<server_job_request> list = job.populateTransactionTable(user);
		return list;
	}
}
