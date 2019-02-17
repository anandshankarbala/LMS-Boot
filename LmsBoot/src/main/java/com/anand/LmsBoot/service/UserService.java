package com.anand.LmsBoot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anand.LmsBoot.dao.UserDao;
import com.anand.LmsBoot.entity.Users;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public List<Users> getUsersByFirstName(String firstName){
		return userDao.getUsersByFirstName(firstName);
	}

}
