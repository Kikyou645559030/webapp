package com.webapp.userInfo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.webapp.userInfo.entity.User;

public interface UserDao extends JpaRepository<User, String>{

	@Query("select user from User user where user.username = ?1 and user.password = ?2")
	public User findUserByUsernameAndPassword(String username,String password);
}
