package com.codingdojo.javaproject.pharmacyapp.controllers;

import java.security.Principal;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.javaproject.pharmacyapp.models.Clinic;
import com.codingdojo.javaproject.pharmacyapp.models.Message;
import com.codingdojo.javaproject.pharmacyapp.models.Provider;
import com.codingdojo.javaproject.pharmacyapp.models.User;
import com.codingdojo.javaproject.pharmacyapp.services.ClinicService;
import com.codingdojo.javaproject.pharmacyapp.services.UserService;

@Controller
public class ViewController {
	
	
	
	@Autowired
	UserService userService;
	
	@Autowired
	ClinicService clinicService;
	
//	LOGIN AND REGISTRATION VIEWS
//	LOGIN VIEW
	@RequestMapping("/login")
	public String login(@RequestParam(value="error",required=false) String error,
			@RequestParam(value="logout",required=false) String logout,Model model) {
		if (error!=null) {
			model.addAttribute("errorMessage","Invalid Credentials, Please try again");
		}
		if (logout !=null) {
			model.addAttribute("logoutMessage","Logout successful");
		}
		System.out.println(userService.findAll().isEmpty());
		return "Login.jsp";
	}
	
//	REGISTRATION VIEW
	@RequestMapping("/registration")
	public String register(@ModelAttribute("user") User user) {
		return "Register.jsp";
	}
	
//	PROVIDER REGISTER VIEW
	@RequestMapping("/providerregistration")
	public String providerRegister(@ModelAttribute("provider") Provider provider) {
		return "ProviderRegister.jsp";
	}
	
	
	
	
//	USER DASHBOARD VIEW
	@RequestMapping(value= {"/","home"})
	public String home(Principal principal,Model model) {
		
		
		String email=principal.getName();
		model.addAttribute("currentUser",userService.findByEmail(email));
		System.out.println(userService.findByEmail(email).getRoles().get(0).getId());
		return "Dashboard.jsp";
		
	}
	
	

//	USER AND PROVIDER CLINIC VIEW
	@RequestMapping("/clinics")
	public String user_allClinics(@ModelAttribute("clinic") Clinic clinic, 
			Principal principal,
			Model model) {
		
		String email=principal.getName();
		model.addAttribute("allClinics", clinicService.findAll());
		model.addAttribute("currentUser",userService.findByEmail(email));
		model.addAttribute("clinic",clinic);
		System.out.println(clinic);
		return "User_AllClinics.jsp";
		
	}
	
	
//	USER AND PROVIDER MESSAGE VIEW
	@RequestMapping("/messages")
	public String user_Messages(@ModelAttribute("message") Message message,Principal principal,
			Model model) {
		String email=principal.getName();
		model.addAttribute("currentUser",userService.findByEmail(email));
//		model,addAttribute("allMessages"),messageService.findbyperson essentially
		return "User_AllMessages.jsp";
	}

	
	
	
	
	
	
	
	
	
	
//	CLINIC PAGE
	@RequestMapping("/clinic/{id}")
	public String clinic(@PathVariable("id") Long id,Principal principal, Model model) {
		String email=principal.getName();
		model.addAttribute("currentUser",userService.findByEmail(email));
		
		if (clinicService.findOneById(id)==null) {
			return "redirect:/";
		}
		model.addAttribute("thisClinic",clinicService.findOneById(id));
		return "Clinic.jsp";
	}
	
//	CLINIC ALL PATIENTS
	@RequestMapping("/clinic/{id}/patients")
	public String clinicPatients(@PathVariable("id") Long id,Principal principal, Model model) {
		String email=principal.getName();
		model.addAttribute("currentUser",userService.findByEmail(email));
		
		return "ClinicPatients.jsp";
	}
	
//	CLINIC Individual patient
	@RequestMapping("/clinic/{id}/patients/{patient_id}")
	public String clinicPatients(@PathVariable("id") Long id,
			@PathVariable("patient_id") Long patient_id,
			Principal principal, 
			Model model) {
		String email=principal.getName();
		model.addAttribute("currentUser",userService.findByEmail(email));
		
		return "ThisClinicPatient.jsp";
	}
	
//	CLINIC Individual Chart/Appointment
	@RequestMapping("/clinic/{id}/patients/{patient_id}/chart/{chart_id}")
	public String clinicPatients(@PathVariable("id") Long id,
			@PathVariable("patient_id") Long patient_id,
			@PathVariable("chart_id") Long chart_id,
			Principal principal, 
			Model model) {
		String email=principal.getName();
		model.addAttribute("currentUser",userService.findByEmail(email));
		
		return "ThisChart.jsp";
	}
	
	
//	CLINIC ALL MESSAGES
	@RequestMapping("/clinic/{id}/messages")
	public String clinicMessages(@PathVariable("id") Long id,
			Principal principal, 
			Model model) {
		String email=principal.getName();
		model.addAttribute("currentUser",userService.findByEmail(email));
		
		return "ClinicMessages.jsp";
	}
	
	
	
	
	
//	ADMIN VIEWS
//	ADD NEW CLINIC
	@RequestMapping("/admin/newclinic")
	public String newClinic(@ModelAttribute("clinic") Clinic clinic,
			Principal principal,
			Model model) {
		
		String email=principal.getName();
		model.addAttribute("currentUser",userService.findByEmail(email));
		return "Admin_NewClinic.jsp";
	}
}
