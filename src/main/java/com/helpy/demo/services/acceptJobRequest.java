package com.helpy.demo.services;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helpy.demo.repository.JobRequestRepository;
import com.helpy.demo.repository.UserTransactiontblRepository;
import com.helpy.demo.admin.repository.admin_wallet_repository;
import com.helpy.demo.dao.*;


@Service
public class acceptJobRequest {
	@Autowired
	private JobRequestRepository jobRequest;
	@Autowired
	private UserTransactiontblRepository doerTable;
	@Autowired
	private admin_wallet_repository adminWalletRep;
	
	public List<server_job_request> getJobRequestInformations(String job_id){
		List<server_job_request> list1 = jobRequest.getJobReqquestByJobId(job_id);
		return list1;
	}
	public void setValueForDoerTable(List<server_job_request> list, String doerJobId){
		LocalDateTime datenow = LocalDateTime.now();
	  	String dateNow = datenow.getYear()+"-"+datenow.getMonthValue()+"-"+datenow.getDayOfMonth();
	  	String timeNow = datenow.getHour()+":"+datenow.getMinute()+":"+datenow.getSecond();
	  	adminWallet Adminwallet = new adminWallet();
	  	
	  	try {
		  	DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		 	java.util.Date utilDate =  dateFormat.parse(dateNow);
		 	java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());

		//List<UserTransactiontbl> list1 = new ArrayList<>();
			UserTransactiontbl user = new UserTransactiontbl() ;
			user.setDeliveryFee( list.get(0).getDelivery_fee() );
			user.setAmountRequired( String.valueOf(list.get(0).getRequired_cash()) );
			user.setClientJobId( String.valueOf(list.get(0).getServer_job_id()));
			user.setDoerJobId(doerJobId);
			user.setDeliveryExactTime( list.get(0).getTime() );
			user.setDistance( list.get(0).getLocation()+" ("+list.get(0).getLocation_details()+")");
			user.setJobTitle( list.get(0).getCategory() );
			user.setJobType( list.get(0).getJob_type() );
			user.setRequestId( list.get(0).getJob_id() );
			user.setRequestStatus("In progress");
			user.setUserRequest( list.get(0).getLocation_details());
			user.setTransactionDate(sqlDate);
			
			Adminwallet.setClientId( String.valueOf(list.get(0).getServer_job_id()) );
			Adminwallet.setDoerId(doerJobId);
			Adminwallet.setDeliveryFee( list.get(0).getDelivery_fee() );
			Adminwallet.setJobId( list.get(0).getJob_id() );
			Adminwallet.setStartTime(timeNow);
			Adminwallet.setStartDate(dateNow);
			Adminwallet.setEndDate("Not finish");
			Adminwallet.setEndTime("Not finish");
			Adminwallet.setStatus("In progress");
			Adminwallet.setSystemFee(0);
			adminWalletRep.save(Adminwallet);
			
			
			doerTable.save(user);
			
	  	}catch(Exception e) {

	  		System.out.println("acceptJobRequest: "+e);
	  		
	  	}
	  	
	  	
	}
}
