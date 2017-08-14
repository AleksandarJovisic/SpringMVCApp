package com.springmvc.db;

import java.sql.SQLException;

import com.springmvc.model.User;

public interface UserDAO {

	public String verifyPassword(String username) throws SQLException;

	public void deleteUser(String username);

	public Integer checkingForUsername(String username)throws SQLException ;
 
	public Integer verifyUsername(String username) throws SQLException;

	public void createUser(User user);

}