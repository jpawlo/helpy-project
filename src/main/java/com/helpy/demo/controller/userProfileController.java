package com.helpy.demo.controller;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.helpy.demo.dao.Building;
import com.helpy.demo.dao.User;
import com.helpy.demo.dao.jobRequestNotification;
import com.helpy.demo.dao.server_job_request;
import com.helpy.demo.repository.JobRequest;
import com.helpy.demo.repository.JobRequestRepository;
import com.helpy.demo.repository.NotificationRepositoryJPA;
import com.helpy.demo.repository.UserInformation;
import com.helpy.demo.repository.UserTransactiontblRepository;
import com.helpy.demo.services.createJobRequestService;
import com.helpy.demo.services.notificationJobRequest;
import com.helpy.demo.services.userProfileService;

@RestController
@Controller
@SessionAttributes("user_id")
public class userProfileController {
	
	@Autowired
	private userProfileService service;
	@Autowired
	private createJobRequestService job_request_service;
	@Autowired
	private JobRequest jobRequest;
	@Autowired
	private JobRequestRepository viewJobRequest;
	@Autowired
	private notificationJobRequest notifJobRequestService;
	@Autowired 
	private NotificationRepositoryJPA notif_jpa_rep;
	@Autowired
	private UserInformation userInfo;
	@Autowired
	private UserTransactiontblRepository doerJobAcceptTbl;
	
	
	HttpSession httpSession;
	
	@RequestMapping(method = RequestMethod.POST, value = "/user/getUserInformation/userProfile")
	@ResponseBody
	public List<User> userInformationByEmailAddress(ModelMap model){
		String userId = String.valueOf( model.get("user_id") );
		List<User> user = new ArrayList<>();
		if( !userId.equals("null") ) {
			user = service.getUserInformationByEmailLoggedIn(userId);
			user.get(0).setIdNumber("");
			user.get(0).setPassword("");
			user.get(0).setLoginAttempts(0);
			user.get(0).setStatus("");
			user.get(0).setLevelOfAccess("");
			return user;
		}else {
			return user;	
		}
	}
	@RequestMapping(method = RequestMethod.POST, value = "/getLaSalle/building/lists")
	@ResponseBody
	public Iterable<Building> listAllBuildings(){
		Iterable<Building> list = new ArrayList<>();
		list = service.getListOfBuilding();
		return list;
	}
	@RequestMapping(method = RequestMethod.POST, value = "/get/all/job/request/active")
	@ResponseBody
	public List<server_job_request> listAllActiveRequest(ModelMap model){
		String email = String.valueOf( model.get("user_id") );
		List<server_job_request> list = new ArrayList<>();
		list = job_request_service.getActiveJobRequest(email);
		return list; 
	}
	@RequestMapping(method = RequestMethod.POST, value = "/get/all/job/request/in/progress")
	@ResponseBody
	public List<server_job_request> listAllProgressRequest(ModelMap model){
		String email = String.valueOf( model.get("user_id") );
		List<server_job_request> list = new ArrayList<>();
		list = job_request_service.getInProgressJobRequest(email);
		return list; 
	}

	@RequestMapping(value = "/user/notify/job-request-cancelled", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,String> notifyDoerThatJobRequestHasBeenCancelled(ModelMap model){
		Map<String,String> map = new HashMap<>();
		String user_id = String.valueOf( model.get("user_id") );
		map = job_request_service.updateDoerOnJob(user_id);
		return map;
	}
	
	
	
	@RequestMapping(value = "/profile/doerview", method = RequestMethod.POST)
	@ResponseBody
    public List<server_job_request> doerview() {
    	List<server_job_request> list = new ArrayList<>();
    	list = viewJobRequest.findByTripleStatus("Active","In progress","Completed");
    	return list;
	}
    @RequestMapping(value = "/user/update/profile/basic/information", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,String> updateUserInformation(@RequestBody List<User> userList, ModelMap model){
    	Map<String, String> map = new HashMap<>();
    	String user_id = String.valueOf( model.get("user_id") );
    	userList.get(0).setUserId(user_id);
    	service.updateUserInformation(userList);
    	map.put("Response","success");
    	return map;
    }
    @RequestMapping(value = "/user/profile/check/oldPassword", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,String> checkIfOldPasswordExist(@RequestBody List<User> lst, ModelMap model){
    	Map<String,String> map = new HashMap<>();
    	String user_id = String.valueOf( model.get("user_id") );
    	String password = lst.get(0).getPassword();
    	boolean res = service.checkIfUserIdAndOldPasswordMatch(user_id, password);
    	map.put("Response", String.valueOf(res));
    	return map;
    }
    @RequestMapping(value = "/user/update/profile/change/user/login/credential", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, String> updateUserPassword(@RequestBody List<User> lst, ModelMap model){
    	Map<String,String> map = new HashMap<>();
    	String user_id = String.valueOf( model.get("user_id") );
    	String newPassword = lst.get(0).getPassword();
    	String reenterPassword = lst.get(0).getName();
    	String oldPassword = lst.get(0).getEmail();
    	if( newPassword.equals(reenterPassword) ){
    		if( reenterPassword.equals( oldPassword ) ) {
    			map.put("Response", "noSuccess");
    		}else {
	    		service.updateUserPassword(user_id, newPassword);
	    		map.put("Response", "success");
    		}
    	}else {
    		map.put("Response", "noSuccess");
    	}
    	return map;
    }
    
    @RequestMapping(value = "/user/update/expired/job/request", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,String> updateExpiredJobRequest() {
    	Map<String,String> map = new HashMap<>();
    	viewJobRequest.updateExpiredJobRequest();
    	map.put("Response", "executed");
    	return map;
    }
    
    @RequestMapping(value = "/user/notification", method = RequestMethod.POST)
    @ResponseBody
    public List<jobRequestNotification> setUserNotificationNumber(ModelMap model){
    	String user_id = String.valueOf( model.get("user_id") );
    	List<jobRequestNotification> list = new ArrayList<>();
    	list = notifJobRequestService.getAcceptedJobRequestNotification(user_id);
    	return list;
    	
    }
    
    @RequestMapping(value = "/user/notification/modal/showed", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,String> updateJobRequestNotificationStatus(@RequestBody List<jobRequestNotification> notif){
    	Map<String, String> map = new HashMap<>();
    	notif_jpa_rep.updateByJobRequestServerJobId("Unread", notif.get(0).getNotifId());
    	return map;
    }
}
