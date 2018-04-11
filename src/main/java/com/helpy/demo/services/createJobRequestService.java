package com.helpy.demo.services;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helpy.demo.dao.User;
import com.helpy.demo.dao.UserTransactiontbl;
import com.helpy.demo.dao.server_job_request;
import com.helpy.demo.repository.JobRequestRepository;

import com.helpy.demo.repository.*;
@Service
public class createJobRequestService {
	@Autowired
	private JobRequestRepository rep;
	@Autowired
	private JobRequest crud_rep;
	@Autowired
	private UserInformation user_rep;
	@Autowired
	private UserTransactiontblRepository doerTable;
	
	
	public void saveToDb(List<server_job_request> request) {
		rep.save(request);
	}
	public List<server_job_request> getActiveJobRequest(String email) {
		List<server_job_request> list = new ArrayList<>();
		list = rep.findByServerJobId(email , "Active");
		return list;
	}
	public List<server_job_request> getInProgressJobRequest(String email) {
		List<server_job_request> list = new ArrayList<>();
		list = rep.findByServerJobId(email , "In progress");
		return list;
	}
	public void updateServerJobRequest(String status,String job_id) {
		rep.updateByJobRequestServerJobId(status, job_id);
	}
	public server_job_request cancelJobRequest(int job_id) {
		
		server_job_request job = new server_job_request();
		
		job.setId(job_id);
		
		job = crud_rep.findOne(job_id);
		String statusBeforeCancelled = job.getStatus();
		job.setStatus("Cancelled");
		crud_rep.save(job);
		job.setStatus(statusBeforeCancelled);
		
		return job;
		
	}
	
	public Map<String,String> checkIfUserBalanceEnough(String location, String locationDetails, String jobType, String remainingBalance, String requiredCash){
		Map<String,String> map = new HashMap<>();
		float price = 0;
		String allowUser = "";
		if(location.equals("Inside Campus") ){
			if(jobType.equals("A-B")) {
				price = 30;
			}else if(jobType.equals("A-B-C..")) {
				String[] splitString = locationDetails.split("[|]");
				int locationDetail = splitString.length - 1;
				price = 30 * locationDetail;
			}else if(jobType.equals("A-B-A") ){
				price = 40;
			}
		}else {
			if(jobType.equals("A-B") ) {
				price = 50;
			}else if(jobType.equals("A-B-C..") ) {
				String[] splitString = locationDetails.split("[|]");
				int locationDetail = splitString.length - 1;
				price = 50 * locationDetail;
			}else if(jobType.equals("A-B-A") ){
				price = 60;
			}			
		}
		float total = Integer.parseInt(requiredCash) + price;
		if(total >= Integer.parseInt(remainingBalance)) {
			allowUser = "Not Allowed";
		}else {
			allowUser = "Allowed";
		}
		map.put("allowUserToCreateJob", allowUser);
		map.put( "locationDetailPrice",String.valueOf(total) );
		map.put("deliveryFee", String.valueOf(price) );

		return map;
	}
	
	public Map<String,String> updateDoerOnJob(String id){
		Map<String,String> map = new HashMap<>();
		List<UserTransactiontbl> doer = doerTable.getJobRequestStatus(id,"NotifyDoer");
		if( !doer.isEmpty() ) {
			
			if(doer.get(0).getRequestStatus().equals("NotifyDoer")) {
				map.put("jobStatus", "Cancelled");
				map.put("jobTitle", doer.get(0).getJobTitle());
				double earning = (doer.get(0).getDeliveryFee() / 2) * .80;
				map.put("totalEarning",String.valueOf(earning));
				doerTable.updateByJobRequestServerJobId("Cancelled", doer.get(0).getRequestId());
			}	
			
		}else {
			map.put("jobStatus", "Okay");
		}
		map.put("userId", id);
		
		return map;
	}
}
