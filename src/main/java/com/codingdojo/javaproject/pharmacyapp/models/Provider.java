package com.codingdojo.javaproject.pharmacyapp.models;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name="providers")
public class Provider extends User{
	
	@NotEmpty(message="Please provide your valid health care provider license number")
	private String licenseNumber;
	
	
	public Provider() {
		
	}


	public String getLicenseNumber() {
		return licenseNumber;
	}


	public void setLicenseNumber(String licenseNumber) {
		this.licenseNumber = licenseNumber;
	}
	
	
	
	
	
	
	
	
	
	
	
}	
