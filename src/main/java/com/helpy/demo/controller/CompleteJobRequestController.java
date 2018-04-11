package com.helpy.demo.controller;



import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.helpy.demo.admin.repository.admin_wallet_repository;
import com.helpy.demo.dao.User;
import com.helpy.demo.dao.UserTransactiontbl;
import com.helpy.demo.dao.adminWallet;
import com.helpy.demo.dao.completeJobRequestRecord;
import com.helpy.demo.repository.JobRequestRepository;
import com.helpy.demo.repository.NotificationRepositoryJPA;
import com.helpy.demo.repository.UserInformation;
import com.helpy.demo.repository.UserTransactiontblRepository;
import com.helpy.demo.services.completeJobRequestService;
import com.helpy.demo.services.createJobRequestService;
import com.helpy.demo.services.updateJobRequest;

@RestController
@Controller
@SessionAttributes("user_id")
public class CompleteJobRequestController {
	@Autowired
	private updateJobRequest UpdateJobRequest;
	@Autowired
	private createJobRequestService CreateJobRequestService;
	@Autowired
	private NotificationRepositoryJPA notificationRepJpa;
	@Autowired
	private UserTransactiontblRepository UserTransactionRep;
	@Autowired
	private UserInformation userInformation;
	@Autowired
	private completeJobRequestService CompleteJobRequestService;
	@Autowired
	private admin_wallet_repository AdminWallet;

	
	@RequestMapping(value = "/user/accept/job/{id}" , method = RequestMethod.PUT)
	@ResponseBody
	public Map<String,String> jobRequestCompleted(ModelMap model, @PathVariable("id") String id){
		
		completeJobRequestRecord com = new completeJobRequestRecord();
		Map<String, String> map = new HashMap<>();
		String user_id = String.valueOf(model.get("user_id"));
		

		List<UserTransactiontbl> lst = UserTransactionRep.getJobRequestById(id);
		
		List<User> userInfo = userInformation.getByUserId(lst.get(0).getDoerJobId());
		String percentageString = "."+userInfo.get(0).getUserRate();

		float percentageUser = Float.parseFloat(percentageString);

		int hundred = 100;
		
		int systemPercentage = hundred - Integer.parseInt( userInfo.get(0).getUserRate() );
		
		String adminPercent = "."+String.valueOf(systemPercentage);
		float percentForAdmin = Float.parseFloat(adminPercent);	
		boolean clientStatus = false;
		boolean doerStatus = false;

		if(user_id.equals(lst.get(0).getDoerJobId())) {
			doerStatus = true;
		}else {
			clientStatus = true;
		}		
		
			if(lst.get(0).getRequestStatus().equals("In progress")) {
				
				com.setJobId( id );
				com.setCliendId( lst.get(0).getClientJobId() );
				com.setDoerId( lst.get(0).getDoerJobId() );
				com.setClientStatus(clientStatus);
				com.setDoerStatus(doerStatus);
				com.setStatus("Not completed");
				CompleteJobRequestService.saveJobRequestCompletedByOne(com);
				
				lst.get(0).setRequestStatus("Partially done");
				notificationRepJpa.updateByJobRequestServerJobId("Partially done", id);
				UserTransactionRep.updateByJobRequestServerJobId("Partially done", id);
				
				
				map.put("response", "In progress mode done");
				
			}else if(lst.get(0).getRequestStatus().equals("Partially done")) {
				
				LocalDateTime now = LocalDateTime.now();
				
				String timeNow = now.getHour()+":"+now.getMinute()+":"+now.getSecond();
				String dateNow = now.getYear()+"-"+now.getMonth()+"-"+now.getDayOfMonth();
				
				
				com = CompleteJobRequestService.getJobCompletedRecord(id);
				com.setStatus("Completed");
				
				
				if( ( user_id.equals(com.getDoerId()) && com.getDoerStatus() == false) || (user_id.equals(com.getCliendId()) && com.getClientStatus() == false ) ) {
					if(com.getClientStatus() == false) {
						com.setClientStatus(true);
					}else {
						com.setDoerStatus(true);
					}
		
					lst.get(0).setRequestStatus("Completed");
					
					List<User> doer = userInformation.getByUserId(lst.get(0).getDoerJobId());
					List<User> client = userInformation.getByUserId(lst.get(0).getClientJobId());
					
					float deliveryFee = lst.get(0).getDeliveryFee();
					float requiredCash = Float.parseFloat( lst.get(0).getAmountRequired() );
					
					double doerTotalEarning = (deliveryFee * percentageUser) + requiredCash + doer.get(0).getRemainingBalance();

					double systemEarning = deliveryFee * percentForAdmin;
					float doerIncome = (float)doerTotalEarning;
					
					doer.get(0).setRemainingBalance(doerIncome);
					
					userInformation.save(doer);
					notificationRepJpa.updateByJobRequestServerJobId("Completed", id);
					UserTransactionRep.updateByJobRequestServerJobId("Completed", id);
					CreateJobRequestService.updateServerJobRequest("Completed",id);
					CompleteJobRequestService.saveJobRequestCompletedByOne(com);
					
					AdminWallet.updateAdminWallet(timeNow, dateNow, "Complete", (float)systemEarning , id);
					map.put("response", "Job completed successfully");
				}else {
					map.put("response", "Waiting");
				}
			}
	

		return map;
	}
	
	@RequestMapping(value = "/user/get/notification/job-request-completed", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,String> getUpdateOnTheJobIfCompletedNotificationModal(ModelMap model) throws Exception{
		
		Map<String,String> map = new HashMap<>();
		String user_id = String.valueOf(model.get("user_id"));
		if(!user_id.isEmpty()) {	

			List<completeJobRequestRecord> lst = CompleteJobRequestService.getAllJobCompletedNotificationByUserId(user_id);
			
			if(!lst.isEmpty()) {
				
				if( (lst.get(0).getCliendId().equals(user_id) && lst.get(0).getClientStatus() == false) || (lst.get(0).getDoerId().equals(user_id) && lst.get(0).getDoerStatus() == false) ) {
					map.put("Notify", "Yes");
					map.put("Id", lst.get(0).getJobId());
				}else {
					map.put("Notify", "No");
				}
				
			}else {
				map.put("Notify", "No");
			}
			
		}else {
			map.put("Notify", "No");
		}
		return map;
	}
	
	
	
}
