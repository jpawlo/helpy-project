package com.helpy.demo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.helpy.demo.dao.UserTransactiontbl;
import com.helpy.demo.dao.server_job_request;
import com.helpy.demo.repository.JobRequestRepository;
import com.helpy.demo.repository.UserTransactiontblRepository;
import com.helpy.demo.services.acceptJobRequest;
import com.helpy.demo.services.notificationJobRequest;
import com.helpy.demo.services.updateJobRequest;
@RestController
@Controller
@SessionAttributes("user_id")
public class acceptRequestController {
	
	@Autowired
	private JobRequestRepository jobRequest;
	@Autowired
	private UserTransactiontblRepository userTransactiontblRepository;
	@Autowired
	private acceptJobRequest acceptJob;
	@Autowired
	private updateJobRequest updateRequest;
	@Autowired
	private notificationJobRequest createNotification;
	
	@RequestMapping(value = "/profile/viewrequestid/acceptrequest", method = RequestMethod.POST )
	@ResponseBody
	public Map<String,String> acceptRequest(@RequestBody List<server_job_request> list, ModelMap model){
		Map<String,String> map = new HashMap<>();
		String login_id = String.valueOf( model.get("user_id") );
		String job_id = list.get(0).getJob_id();
		List<UserTransactiontbl> checkIfUserHasPendingJob = userTransactiontblRepository.getJobRequestStatus(login_id, "In progress");
		
		if(checkIfUserHasPendingJob.isEmpty()) {
			if( !job_id.equals("null") ) {
				//Get all value of server_job_request table
					list = acceptJob.getJobRequestInformations(job_id);
				//Set all value of server_job_request table to UserTransactiontbl table
					acceptJob.setValueForDoerTable(list, login_id);
				//Create notification
					createNotification.saveAcceptJobRequestNotification(list, login_id);
				//Update server_job_request table
					updateRequest.saveAcceptedJobRequest(job_id);
					map.put("response", "Success");
					map.put("Result", "1");
			}else {
				map.put("Result", "0");
				map.put("response", "Fail");
			}
		}else {
			map.put("Result", "-1");
			map.put("response", "Pending Job");
		}
		return map;
	}
	
	
	
/*	@RequestMapping(value="/profile/viewrequestid/acceptrequest", method = RequestMethod.POST)
    public ModelAndView acceptRequest(@RequestParam("reqid") Integer reqid,@RequestParam(defaultValue="D2018001") String doerJobId
    								,@RequestParam(defaultValue="U2018001") String clientJobId,@RequestParam("jobtitle") String jobTitle
    								,@RequestParam("distance") String distance,@RequestParam("jobtype") String jobType
    								,@RequestParam("amountrequired") String amountRequired, @RequestParam("deliverytime") String deliveryExactTime
    								,@RequestParam("userRequest") String userRequest,@RequestParam(defaultValue="Inprogress") String requestStatus) {
    	
    	ModelAndView userprofile = new ModelAndView("redirect:/profile/doerview/");
    	UserTransactiontbl usertransactbl = new UserTransactiontbl(); 
    	server_job_request reqfields = jobRequest.findOne(reqid);
    	
    	usertransactbl.setRequestId(reqid);
    	usertransactbl.setDoerJobId(doerJobId);
    	usertransactbl.setClientJobId("2018002");
    	usertransactbl.setJobTitle(jobTitle);
    	usertransactbl.setDistance(distance);
    	usertransactbl.setJobType(jobType);
    	usertransactbl.setAmountRequired(amountRequired);
    	usertransactbl.setDeliveryExactTime(deliveryExactTime);
    	usertransactbl.setUserRequest(userRequest);
    	usertransactbl.setRequestStatus("In Progress");
    	
    	userTransactiontblRepository.save(usertransactbl);	
    	
    	
    	reqfields.setStatus("In Progress");
    	jobRequest.save(reqfields);
    	
    	
    	return userprofile;	
	}*/
}
