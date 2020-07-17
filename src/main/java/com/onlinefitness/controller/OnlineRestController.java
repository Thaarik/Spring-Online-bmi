package com.onlinefitness.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.onlinefitness.model.OnlineModel;
import com.onlinefitness.service.OnlineService;

@RestController
public class OnlineRestController {
	
	@Autowired
	private OnlineService onlineService;
	
	@GetMapping("/")
	public String hello() {
		return "HOMEPAGE";
	}
	
	
	// Save the user registration input in the database
	
	@GetMapping("/saveuser")
	public String saveUser(@RequestParam String username,@RequestParam String firstname,@RequestParam String lastname,@RequestParam int age,@RequestParam String gender,@RequestParam String password) {
		OnlineModel model = new OnlineModel(username,firstname,lastname,age,gender,password);
		onlineService.saveMyUser(model);
		return "User Saved";	
		}
}
