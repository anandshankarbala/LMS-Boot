package com.anand.LmsBoot.rest;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.anand.LmsBoot.entity.Users;
import com.anand.LmsBoot.service.UserService;

@RestController
public class UserController {
	
	private static Logger log = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(method=RequestMethod.GET,value="/getUsersByFirstName/{firstName}")
	public List<Users> getUsersByFirstName(@PathVariable("firstName") String firstName){
		log.debug("get all Users by First Name");
		return userService.getUsersByFirstName(firstName);
	}
}
