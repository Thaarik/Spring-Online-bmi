package com.onlinefitness.model;

import java.util.Locale;

public class BMICalciModel {

	public int age;
	public String gender;
	public float height;
	public float weight;
	public float result;
	
	
	
//	public BMICalciModel() {
//		super();
//	}
//	
//	
//	public BMICalciModel(int age, String gender, float height, float weight, float result) {
//		super();
//		this.age = age;
//		this.gender = gender;
//		this.height = height;
//		this.weight = weight;
//		this.result = result;
//	}


	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public float getHeight() {
		return height;
	}
	public void setHeight(float height) {
		this.height = height;
	}
	public float getWeight() {
		return weight;
	}
	public void setWeight(float weight) {
		this.weight = weight;
	}
	public float getResult() {
		return result;
	}
	public void setResult(float result) {
		this.result = result;
	}
	public float calci() {
		result = weight/(height/100*height/100);
		return fixedToTwo(result);
	}
	private float fixedToTwo(float num) {
		return Float.valueOf(String.format(Locale.getDefault(), "%.2f", num));
	}
	
	
}
