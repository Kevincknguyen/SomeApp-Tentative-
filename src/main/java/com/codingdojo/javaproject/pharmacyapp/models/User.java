package com.codingdojo.javaproject.pharmacyapp.models;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;


@Entity
@Table(name="users")
public class User {
	 
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Long id;

	 @NotEmpty(message="Please provide a valid first name")
	 private String firstName;
	 
	 @NotEmpty(message="Please provide a valid last name")
	 private String lastName;
	 
	 @NotEmpty(message="Please provide a valid email")
	 @Email(message="Please provide a valid email")
	 private String email;
	 
	 @NotEmpty(message="Please provide a valid phone")
	 private String phoneNumber;
	 
	 @NotNull(message="Please Provide a Date of Birth")
	 @Past(message="Please Provide a VALID Date of Birth")
	 @DateTimeFormat(pattern="yyyy-MM-dd")
	 private Date dob;
	 
	 @NotEmpty(message="Please provide a password")
	 @Size(min=8,max=200, message="Password must be minimum 8 characters")
	 private String password;
	 
	 
	 @Transient
	 private String passwordConfirmation;
	 
	 @Column(updatable=false)
	 private Date createdAt;
	 private Date updatedAt;
	 
	 @ManyToMany(fetch = FetchType.EAGER)
	 @JoinTable(
	     name = "users_roles", 
	     joinColumns = @JoinColumn(name = "user_id"), 
	     inverseJoinColumns = @JoinColumn(name = "role_id"))
	 private List<Role> roles;
	 
	 @OneToMany(mappedBy="sender",fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	    private List<Message> sentMessages;
	    
    @OneToMany(mappedBy="recipient",fetch=FetchType.LAZY,cascade=CascadeType.ALL)
    private List<Message> receivedMessages;
	 
 public User() {
 }
 
 @PrePersist
 protected void onCreate(){
     this.createdAt = new Date();
 }
 @PreUpdate
 protected void onUpdate(){
     this.updatedAt = new Date();
 } 
 
	 
	public String getFirstName() {
		return firstName;
	}
		 
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

		public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	public Long getId() {
	     return id;
	 }
	public void setId(Long id) {
	     this.id = id;
	 }
	
	public String getPassword() {
	     return password;
	 }
	public void setPassword(String password) {
	     this.password = password;
	 }
	public String getPasswordConfirmation() {
	     return passwordConfirmation;
	 }
	public void setPasswordConfirmation(String passwordConfirmation) {
	     this.passwordConfirmation = passwordConfirmation;
	 }
	public Date getCreatedAt() {
	     return createdAt;
	 }
	public void setCreatedAt(Date createdAt) {
	     this.createdAt = createdAt;
	 }
	public Date getUpdatedAt() {
	     return updatedAt;
	 }
	public void setUpdatedAt(Date updatedAt) {
	     this.updatedAt = updatedAt;
	 }
	public List<Role> getRoles() {
	     return roles;
	 }
	public void setRoles(List<Role> roles) {
	     this.roles = roles;
	 }

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public List<Message> getSentMessages() {
		return sentMessages;
	}

	public void setSentMessages(List<Message> sentMessages) {
		this.sentMessages = sentMessages;
	}

	public List<Message> getReceivedMessages() {
		return receivedMessages;
	}

	public void setReceivedMessages(List<Message> receivedtMessages) {
		this.receivedMessages = receivedtMessages;
	}
	 
	
}


