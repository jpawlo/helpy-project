package com.helpy.demo.controller;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.helpy.demo.dao.User;
import com.helpy.demo.dao.server_job_request;
import com.helpy.demo.repository.UserInformation;
import com.helpy.demo.services.createJobRequestService;
import com.helpy.demo.services.keyGenerator;


@RestController
@Controller
@SessionAttributes("user_id")
public class createRequestController {
	
	@Autowired
	private createJobRequestService service; 
	@Autowired
	private UserInformation userInformation;
	@Autowired
	private keyGenerator key;
	
	@RequestMapping(method = RequestMethod.POST, value = "/user/create/request/move/summary/page")
	@ResponseBody
	public  Map<String,String> getUserJobRequest(@RequestBody List<server_job_request> list, ModelMap model) {
		String email = String.valueOf( model.get("user_id") );
	 	String job_id = key.generateVerificationKeyUppercase(10);
	 	List<User> userInfo = userInformation.getByUserId(email);
	 	float userBalance = userInfo.get(0).getRemainingBalance();
	 	float jobRequestCost = list.get(0).getTotal_fee();
	 	float minusUserBalance = userBalance - jobRequestCost;
	 	userInfo.get(0).setRemainingBalance(minusUserBalance);
	 	userInformation.updateUserBalance(minusUserBalance, email);
	 	String name = userInfo.get(0).getName();
	 	String id = String.valueOf(userInfo.get(0).getUserId());
	 	Map<String,String> map = new HashMap<>();
			LocalDate datenow = LocalDate.now();
		  	String dateNow = datenow.getYear()+"-"+datenow.getMonthValue()+"-"+datenow.getDayOfMonth();
		  	try {
			  	DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			 	java.util.Date utilDate =  dateFormat.parse(dateNow);
			 	java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
			 	list.get(0).setJob_id(job_id);
				list.get(0).setServer_job_id(id);
				list.get(0).setDateCreated(sqlDate);
				list.get(0).setStatus("Active");
				list.get(0).setName(name);
				map.put("response", "success");
				service.saveToDb(list);
				
		  	}catch(Exception e) {
				System.out.println("createRequestController: "+e); 
			 }
		  	
		return map;
	}
	
	@RequestMapping(value ="/validate/user/remaining/balance")
	@ResponseBody
	public Map<String,String> validateUserIfBalanceIsEnough(ModelMap model){
		Map<String,String> map = new HashMap<>();
		List<User> list = userInformation.getByUserId( String.valueOf(model.get("user_id")) );
		if( list.get(0).getRemainingBalance() > 100 ) {
			map.put("Response", "True");
			map.put("Valid", "True");
		}else {
			map.put("Response", "False");
			map.put("Valid", "False");
		}
		return map;
	}
	
	@RequestMapping(value = "/user/compute/total/fee/validate", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,String> validateIfUserHasEnoughBalance(@RequestBody List<server_job_request> lsts){
		Map<String,String> map = new HashMap<>();
		map = service.checkIfUserBalanceEnough(lsts.get(0).getLocation(), lsts.get(0).getLocation_details(), lsts.get(0).getJob_type(), lsts.get(0).getOther_info(), lsts.get(0).getStatus());
		return map;
	}
}
