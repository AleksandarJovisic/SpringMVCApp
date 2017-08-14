package com.springmvc.db;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.springmvc.model.User;

@Component
public class UserDAOImpl implements UserDAO {

	@Autowired
	DataSource dataSource;

	private JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	// ------------------------------------------------------------------------------------------------------------

	public JdbcTemplate getTemplate() {
		return template;
	}

	@Override
	public void createUser(User user) {

		String sql = "INSERT INTO users (Name,Surname,State,City,Username,Password) "
				+ "VALUES(?,?,?,?,?,?)";
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update(sql, new Object[] { user.getName(), user.getSurname(), user.getState(),
				user.getCity(), user.getUsername(), user.getPassword() });

	}

	// --------------------------------------------------------------------------------------------------------------

	@Override
	public void deleteUser(String username) {

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.update("delete from users where Username = ?", String.valueOf(username));
	}

	// -------------------------------------------------------------------------------------------------------------





	@Override
	public String verifyPassword(String username) throws SQLException {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		

		String sql = "SELECT Password FROM users WHERE Username = ?";

		String Password = (String) getTemplate().queryForObject(sql, String.class, username);
		

		return Password;

	}
	
	//-----------------------------------------------------------------------------------------------------------------

	@Override
	public Integer checkingForUsername(String username)throws SQLException  {
	
		String sql="select count(*) from simplebankloancalculator.users WHERE Username =?";
		String result = (String) getTemplate().queryForObject(sql, String.class, username);
		Integer count=Integer.valueOf(result);
		return count;
	}

	//-------------------------------------------------------------------------------------------------------------------
	
	@Override
	public Integer verifyUsername(String username) throws SQLException {
		
		String sql="select count(*) from simplebankloancalculator.users WHERE Username =?";
		String result = (String) getTemplate().queryForObject(sql, String.class, username);
		Integer count=Integer.valueOf(result);
		return count;
	}
}
	



