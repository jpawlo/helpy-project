package com.helpy.demo.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

@RestController
@Controller
@SessionAttributes("user_id")
public class logoutController {
	
	
	@RequestMapping(method = RequestMethod.GET, value = "/profile/user/logout")
	@ResponseBody
	public Map<String,String> destroySession(ModelMap model) {
		Map<String, String> map =new HashMap<>();
		map.put("response", "/");
		model.addAttribute("user_id","");
		return map;
	}
}
