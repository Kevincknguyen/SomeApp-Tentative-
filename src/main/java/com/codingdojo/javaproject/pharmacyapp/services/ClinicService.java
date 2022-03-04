package com.codingdojo.javaproject.pharmacyapp.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.javaproject.pharmacyapp.models.Clinic;
import com.codingdojo.javaproject.pharmacyapp.repositories.ClinicRepository;


@Service
public class ClinicService {
	
	@Autowired
	ClinicRepository clinicRepo;
	
	
	
	public ClinicService() {
		
	}
	
//	READ ALL CLINIC
	public List<Clinic> findAll(){
		return clinicRepo.findAll();
	}
	
//	READ ONE BY ID
	public Clinic findOneById(Long id) {
		Optional<Clinic> isClinic=clinicRepo.findById(id);
		if (isClinic.isEmpty()) {
			return null;
		}
		else return isClinic.get();
	}
	
//	CREATE CLINIC
	public void saveClinic(Clinic clinic) {
		clinicRepo.save(clinic);
	}
	
}
