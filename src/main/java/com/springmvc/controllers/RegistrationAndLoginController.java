package com.springmvc.controllers;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc.db.UserDAOImpl;
import com.springmvc.model.User;

@Controller
public class RegistrationAndLoginController {

	@Autowired
	UserDAOImpl userDAOImpl;

	// --------------------------login------------------------------------------------------

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getLoginPage(Model model) {
		model.addAttribute("user", new User());
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginMethod(@ModelAttribute("user") User user, BindingResult result, ModelMap model)
			throws SQLException {
		model.addAttribute("username", user.getUsername());
		model.addAttribute("password", user.getPassword());

		String username = user.getUsername();
		if (userDAOImpl.verifyUsername(username).equals(0)) {
			return "login";
		}
		if (userDAOImpl.verifyPassword(username).equals(user.getPassword())) {

			return "MainPage";
		} else {
			return "login";
		}
	}

	// ------------------------------registration---------------------------------------------

	@RequestMapping(value = "/Registration", method = RequestMethod.POST)
	public String registerNewUser(@ModelAttribute("user") User user, BindingResult result, Model model)
			throws SQLException {
		model.addAttribute("name", user.getName());
		model.addAttribute("surname", user.getSurname());
		model.addAttribute("City", user.getCity());
		model.addAttribute("State", user.getState());
		model.addAttribute("username", user.getUsername());
		model.addAttribute("password", user.getPassword());
		String username = user.getUsername();

		if (userDAOImpl.checkingForUsername(username).equals(0)) {
			userDAOImpl.createUser(user);
			return "login";
		} else {

			return "Registration";
		}
	}

	@RequestMapping(value = "/Registration", method = RequestMethod.GET)
	public String getRegistrationPage(Model model) {
		model.addAttribute("user", new User());
		return "Registration";
	}

	// ------------------------MainPage-----------------------------------------------------

	@RequestMapping(value = "/MainPage", method = RequestMethod.POST)
	public String deleteUser(@ModelAttribute("user") User user, String username, Model model, BindingResult result) {
		model.addAttribute("username", user.getUsername());

		userDAOImpl.deleteUser(user.getUsername());

		return "Registration";
	}

}	
	
	
	
	
	
	
	
	
	
	
	

