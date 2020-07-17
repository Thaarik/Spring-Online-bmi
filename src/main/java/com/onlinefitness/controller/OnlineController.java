 package com.onlinefitness.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.onlinefitness.model.BMICalciModel;
import com.onlinefitness.model.OnlineModel;
import com.onlinefitness.service.OnlineService;

@Controller
public class OnlineController {

	@Autowired
	private OnlineService onlineService;

	@RequestMapping("/welcome")
	public String bmi(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcome";
	}


	@RequestMapping("/register")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "login";
	}

	@PostMapping("/save-user")
	public String registerUser(@ModelAttribute OnlineModel user, BindingResult bindingResult,
			HttpServletRequest request) {
		onlineService.saveMyUser(user);
		request.setAttribute("mode", "MODE_LOGIN");
		return "login";
	}

	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return "login";
	}

	@RequestMapping(value = "/login-user")
	public String LoginUser( @ModelAttribute("bmicalc") BMICalciModel bmicalcimodel, @ModelAttribute OnlineModel user,HttpServletRequest request) {
		if (onlineService.findByUsernameAndPassword(user.getUsername(), user.getPassword()) != null) {
			request.setAttribute("mode", "MODE_LOGGED");
			return "BMI";
		} else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			return "login";
		}
	}

	@RequestMapping(value = "/resultpage")
	public String userResult(ModelMap model, @ModelAttribute("bmicalc") BMICalciModel bmicalcimodel,
			BindingResult result, HttpServletRequest request) {
		onlineService.getBMIResult(bmicalcimodel);
		request.setAttribute("mode", "MODE_RESULT");
		model.addAttribute("res", bmicalcimodel.calci());
		model.addAttribute("mode", onlineService.getBMIResult(bmicalcimodel));
		return "resultpage";
	}
	
	@RequestMapping("/timer")
	public String timer() {
		return "timer";
	}
	
	 
	@RequestMapping("/caloriecounter")
	public String caloriecounter() {
		return "caloriecounter";
	}
	
	@RequestMapping("/logout")
	public String logout() {
		return "logout";
	}
}