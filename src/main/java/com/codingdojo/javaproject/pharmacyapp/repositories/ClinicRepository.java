package com.codingdojo.javaproject.pharmacyapp.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.codingdojo.javaproject.pharmacyapp.models.Clinic;


public interface ClinicRepository extends CrudRepository<Clinic, Long> {
	
	List<Clinic> findAll();
	
	
}