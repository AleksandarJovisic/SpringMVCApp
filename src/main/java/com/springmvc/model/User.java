package com.springmvc.model;

import javax.xml.bind.annotation.XmlRootElement;
@XmlRootElement
public class User {

	private String name;
	private String surname;
	private int id;

	private String city;
	private String state;
	private String username;
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public User(String name, String surname, int id, String city, String state, String username,
			String password) {
		super();
		this.name = name;
		this.surname = surname;
		this.id = id;
		this.city = city;
		this.state = state;
		this.username = username;
		this.password = password;
	}

	public User() {
		super();
	}

	

}
