package com.codingdojo.javaproject.pharmacyapp.controllers;

import java.util.Map.Entry;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.codingdojo.javaproject.pharmacyapp.models.Clinic;
import com.codingdojo.javaproject.pharmacyapp.models.Provider;
import com.codingdojo.javaproject.pharmacyapp.models.User;
import com.codingdojo.javaproject.pharmacyapp.services.ClinicService;
import com.codingdojo.javaproject.pharmacyapp.services.UserService;
import com.codingdojo.javaproject.pharmacyapp.validator.UserValidator;

@Controller
public class MethodController {
	
	@Autowired
	UserService userService;
	
	
	@Autowired
	ClinicService clinicService;
	
	@Autowired
	UserValidator userValidator;
	
//	REGISTER USER
   @PostMapping("/registration")
    public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model, HttpSession session) {
	   userValidator.validate(user, result);
        if (result.hasErrors()) {
            return "Register.jsp";
        }
        
        if (userService.findAll().isEmpty()==true) {
        	userService.saveWithAdminRole(user);
        }
        else {
        	userService.saveWithUserRole(user);
        }
        return "redirect:/login";
    }
   
   
//   REGISTER PROVIDER
   @PostMapping("/providerregistration")
   public String providerRegistration(@Valid @ModelAttribute("provider") Provider provider, BindingResult result, Model model, HttpSession session) {
	   userValidator.validate(provider, result);
       if (result.hasErrors()) {
           return "ProviderRegister.jsp";
       }
       userService.saveWithProviderRole(provider);
       return "redirect:/login";
   }
   
   
//   CREATE CLINIC
   @PostMapping("/admin/newclinic")
   public String newClinic(@Valid @ModelAttribute("clinic") Clinic clinic,
		   BindingResult result,
		   Model model, HttpSession session,
		   @RequestParam(value="sunday") String sunday,
		   @RequestParam(value="monday") String monday,
		   @RequestParam(value="tuesday") String tuesday,
		   @RequestParam(value="wednesday") String wednesday,
		   @RequestParam(value="thursday") String thursday,
		   @RequestParam(value="friday") String friday,
		   @RequestParam(value="saturday") String saturday

		   ) {
	   
	   System.out.println("testing");
	   if (result.hasErrors()) {
		   System.out.println("error");
           return "Admin_NewClinic.jsp";
       }
	   System.out.println(clinic);
	   System.out.println(clinic.getName());
	   System.out.println(clinic.getAbout());
	   System.out.println(clinic.getPhoneNumber());
	   System.out.println(clinic.getStreetAddress());
	   System.out.println(sunday);
	   clinic.putHours("sunday", sunday);
	   clinic.putHours("monday", monday);
	   clinic.putHours("tuesday", tuesday);
	   clinic.putHours("wednesday", wednesday);
	   clinic.putHours("thursday", thursday);
	   clinic.putHours("friday", friday);
	   clinic.putHours("saturday", saturday);
	   for (Entry<String, String> day : clinic.getHours().entrySet()) {
		   System.out.println(day.getKey());
		   System.out.println(day.getValue());
	   }
	   System.out.println(clinic.getHours());
	   clinicService.saveClinic(clinic);
	   return "redirect:/clinics";
   }
   

}
