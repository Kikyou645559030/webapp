package com.webapp.userInfo.service;

import java.util.List;

import com.webapp.userInfo.entity.User;

public interface UserService {
	
	public User save(User user);
	
	public List<User> findAll();
	
	public User findUserByUsernameAndPassword(String username,String password);
}
