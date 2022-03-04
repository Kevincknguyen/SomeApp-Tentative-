package com.codingdojo.javaproject.pharmacyapp.models;

import java.util.HashMap;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name="clinics")
public class Clinic {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	
	@NotEmpty(message="Please provide a valid clinic name")
	 private String name;
	
	@NotEmpty(message="Please provide a description of clinic")
	 private String about;
	
	 private HashMap<String,String> hours;
	
	
	@NotEmpty(message="Please provide a valid street")
	 private String streetAddress;

	@NotEmpty(message="Please provide a valid city")
	 private String city;
	
	@NotEmpty(message="Please provide a valid stater")
	 private String state;
	
	@NotEmpty(message="Please provide a valid zip")
	 private String zip;
	
	@NotEmpty(message="Please provide a valid phone number")
	 private String phoneNumber;
	
	
	
	
	
	
	
	
	public Clinic () {
		this.hours=new HashMap<String,String>();
	}



	public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getAbout() {
		return about;
	}



	public void setAbout(String about) {
		this.about = about;
	}



	public HashMap<String, String> getHours() {
		return hours;
	}



	public void setHours(HashMap<String, String> hours) {
		this.hours = hours;
	}


	public void putHours(String key, String value) {
		
		this.hours.put(key, value);
		System.out.println("success");
	}
	
	
	public String getStreetAddress() {
		return streetAddress;
	}



	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
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



	public String getZip() {
		return zip;
	}



	public void setZip(String zip) {
		this.zip = zip;
	}



	public String getPhoneNumber() {
		return phoneNumber;
	}



	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	
	
	
}
