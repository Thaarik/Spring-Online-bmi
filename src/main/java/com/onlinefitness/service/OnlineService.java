package com.onlinefitness.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.onlinefitness.Repository.OnlineRepository;
import com.onlinefitness.model.BMICalciModel;
import com.onlinefitness.model.OnlineModel;

@Service 
@Transactional //we are making transaction between this data and database
public class OnlineService {
	
	// instance from repository
	private final OnlineRepository onlineRepository;
	
	
	// to persist our data in database
	public OnlineService (OnlineRepository onlineRepository) {
		this.onlineRepository=onlineRepository;
	}
	
	
	//to save our data in database
	public void saveMyUser(OnlineModel user) {
		onlineRepository.save(user );
	}
	

	public OnlineModel findByUsernameAndPassword(String username,String password) {
		return onlineRepository.findByUsernameAndPassword(username, password);
	}
	
	public String getBMIResult(BMICalciModel bmicalcimodel) {
		String result = null;
		if(bmicalcimodel.getResult()<18.5) {
			result = "Oh My God! You are UNDERWEIGHT! Have some healthy food and gain weight!";
		}
		else if (bmicalcimodel.getResult()>= 18.5 && bmicalcimodel.getResult()<25) {
			result = "Congrats! You are PERFECT with your BMI! Eat healthy and stay fit!";
		}
		else if (bmicalcimodel.getResult()>= 25 && bmicalcimodel.getResult()<30){
			result = "The time has come to wear your gym shoes and reduce your fat! Your BMI shows that you are OVERWEIGHT!!";
			}
		else if (bmicalcimodel.getResult()>30 ){
			result = "Oh My God! The time has come to wear your gym shoes and reduce your extra fat! Your BMI shows that you are OBESE!!";
			}
		else {
			result = "Please enter correct height and weight!";
		}
		return result;
		
	}
}
