package com.helpy.demo.controller;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.helpy.demo.admin.repository.admin_wallet_repository;
import com.helpy.demo.dao.User;
import com.helpy.demo.dao.UserTransactiontbl;
import com.helpy.demo.dao.server_job_request;
import com.helpy.demo.repository.NotificationRepositoryJPA;
import com.helpy.demo.repository.UserInformation;
import com.helpy.demo.repository.UserTransactiontblRepository;
import com.helpy.demo.services.createJobRequestService;

@Controller
@SessionAttributes("user_id")
public class cancelJobRequest {
	
	@Autowired
	private createJobRequestService job_request_service;
	@Autowired
	private UserTransactiontblRepository doerJobAcceptTbl;
	@Autowired
	private UserInformation userInfo;	
	@Autowired 
	private NotificationRepositoryJPA notif_jpa_rep;
	@Autowired
	private admin_wallet_repository adminWalletRep;
	
	
	
	
	@RequestMapping(method = RequestMethod.PUT, value = "/cancel/job/request/active/{id}")
	@ResponseBody
	public Map<String,String> cancelJobRequest(@PathVariable("id") String jobId){
		
		LocalDateTime datenow = LocalDateTime.now();
	  	String dateNow = datenow.getYear()+"-"+datenow.getMonthValue()+"-"+datenow.getDayOfMonth();
	  	String timeNow = datenow.getHour()+":"+datenow.getMinute()+":"+datenow.getSecond();
		
		int a = Integer.parseInt(jobId);
		Map<String,String> map = new HashMap<>();
		server_job_request job = job_request_service.cancelJobRequest(a);
		String cliendId = job.getServer_job_id();
		if(job.getStatus() .equals("In progress")) {
			//In progress when cancelled
			List<UserTransactiontbl> lst = doerJobAcceptTbl.getJobRequestById( job.getJob_id() );
			String doerId = lst.get(0).getDoerJobId();
			
			List<User> doerInfo = userInfo.getByUserId(doerId);
			List<User> clientInfo = userInfo.getByUserId(cliendId);
			
			notif_jpa_rep.updateByJobRequestServerJobId("Cancelled", lst.get(0).getRequestId());
			doerJobAcceptTbl.updateByJobRequestServerJobId("NotifyDoer", lst.get(0).getRequestId());			
			//Client wallet update
			double userRefundComputation = lst.get(0).getDeliveryFee() * .50;
			float refund = (float)userRefundComputation;
			float totalClientBalance = refund + clientInfo.get(0).getRemainingBalance() + Float.parseFloat(lst.get(0).getAmountRequired()) ;
			 
			clientInfo.get(0).setRemainingBalance(totalClientBalance);
			userInfo.save(clientInfo);
			
			//Server wallet update
			double doerIncomeForCancelledJob = refund * .80;
			float doerIncome = (float)doerIncomeForCancelledJob;
			float totalServerBalance = doerIncome + doerInfo.get(0).getRemainingBalance();
			doerInfo.get(0).setRemainingBalance(totalServerBalance);
			
			double systemIncomeTotal = lst.get(0).getDeliveryFee() - userRefundComputation;
			float systemEarning = (float)systemIncomeTotal;
			

			
			adminWalletRep.updateAdminWallet(timeNow, dateNow, "Cancelled", systemEarning, lst.get(0).getRequestId());
			
			userInfo.save(doerInfo);
			//System wallet update
			
		} else {
			List<User> clientInfo = userInfo.getByUserId(cliendId);
			float totalClientBalance = clientInfo.get(0).getRemainingBalance() + job.getRequired_cash() + job.getDelivery_fee();
			clientInfo.get(0).setRemainingBalance(totalClientBalance);
			userInfo.save(clientInfo);
		}
		//compute for the income of the system must be 20% of 50% of the total delivery fee
		//compute for the income of the doer, 80% of the 50% of the total delivery fee
		//compute for the total refund for the user, 50% of the total delivery fee
		
		//update system wallet
		//update doer wallet
		//update server wallet
		
		
		server_job_request job1 = job_request_service.cancelJobRequest(a);
		
		map.put("response", "success");
		return map;
		
	}

}
