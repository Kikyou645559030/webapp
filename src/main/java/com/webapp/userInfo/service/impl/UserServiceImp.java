package com.webapp.userInfo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.webapp.userInfo.dao.UserDao;
import com.webapp.userInfo.entity.User;
import com.webapp.userInfo.service.UserService;

@Component
@Transactional(readOnly = false)
public class UserServiceImp implements UserService {
	private UserDao userDao;

	@Autowired
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public User save(User user) {
		return userDao.saveAndFlush(user);
	}

	public List<User> findAll() {
		return userDao.findAll();
	}

	public User findUserByUsernameAndPassword(String username, String password) {
		return userDao.findUserByUsernameAndPassword(username, password);
	}

}
