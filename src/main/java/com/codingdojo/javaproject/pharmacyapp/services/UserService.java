package com.codingdojo.javaproject.pharmacyapp.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.codingdojo.javaproject.pharmacyapp.models.User;
import com.codingdojo.javaproject.pharmacyapp.repositories.RoleRepository;
import com.codingdojo.javaproject.pharmacyapp.repositories.UserRepository;

@Service
public class UserService {
	
	
	@Autowired
	UserRepository userRepo;
	
	@Autowired
	RoleRepository roleRepo;
	
	@Autowired
	BCryptPasswordEncoder bCrypt;
	
	
	public UserService() {
		
	}

	
	public List<User> findAll(){
		return userRepo.findAll();
	}
	
//	CREATE: USER
	public void saveWithUserRole(User user) {
		user.setPassword(bCrypt.encode(user.getPassword()));
		user.setRoles(roleRepo.findByName("ROLE_USER"));
		userRepo.save(user);
	}
	
	
//	CREATE:ADMIN
	public void saveWithAdminRole(User user) {
		user.setPassword(bCrypt.encode(user.getPassword()));
		user.setRoles(roleRepo.findByName("ROLE_ADMIN"));
		userRepo.save(user);
	}
	
	
	
//	CREATE:PHARMACY
	public void saveWithPharmacyRole(User user) {
		user.setPassword(bCrypt.encode(user.getPassword()));
		user.setRoles(roleRepo.findByName("ROLE_PHARMACY"));
		userRepo.save(user);
	}
	
//	CREATE:PROVIDER
	public void saveWithProviderRole(User user) {
		user.setPassword(bCrypt.encode(user.getPassword()));
		user.setRoles(roleRepo.findByName("ROLE_PROVIDER"));
		userRepo.save(user);
	}
	
//	READ BY EMAIL
	public User findByEmail(String email) {
		return userRepo.findByEmail(email);
	}
	
	
	
	
	
}


