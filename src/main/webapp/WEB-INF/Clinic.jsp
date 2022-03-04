<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isErrorPage="true" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/BodyNav.css">
<link rel="stylesheet" type="text/css" href="/css/Clinic.css">
</head>
<body>

<div class="body">
	<div class="navbar">
		<div class="actions">
			<a href="/">Home</a>
			<a href="">Test</a>
			<a href="">Test</a>
			<a href="">Test</a>
				<a href="/clinics">My Clinics</a>
			
		</div>
		<div>
		<c:out value="${currentUser.firstName }"></c:out>
		
		<c:out value="${currentUser.getRoles().get(0).getId() }"></c:out>
		</div>
		<div class="usersection">
			<div class="test">
				<img class="usernavpic" src="https://placekeanu.com/350/500/y" alt=""> 
				<div class="usernavaction">
					<div>
						<form id="logoutForm" method="POST" action="/logout">
				        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				        <input type="submit" value="Logout!" />
						</form>
					</div>
					<div>Settings</div>
					<div>Profile</div>
					<div>Contact Us</div>
				</div>
			</div>
		</div>
	</div>
	<div class="main">
		
		
		
		
		
		
		
		<div class="thisBar">
			<img src="https://placekeanu.com/350/500/y" alt="Test"></img>
			
			<div class="thisInfo">
			
				<div>
					<h1>Clinic Name: <c:out value="${thisClinic.name }"></c:out></h1>
					<h3>Location: 
						<c:out value="${thisClinic.streetAddress }"></c:out>
			    		<c:out value="${thisClinic.city }"></c:out>
			    		<c:out value="${thisClinic.zip }"></c:out>
			    		<c:out value="${thisClinic.state }"></c:out>
			    	</h3>
					<h3>Phone number:<c:out value="${thisClinic.phoneNumber }"></c:out></h3>
					<p><c:out value="${currentUser.firstName }"></c:out></p>
				</div>
				<div>
						<h1>About</h1>
					<p>Generic statement about clinic: <c:out value="${thisClinic.about }"></c:out></p>
					<c:forEach var="hour" items="${thisClinic.hours }">
				    	<p><strong><c:out value="${hour.key}"></c:out></strong> <c:out value="${hour.value}"></c:out></p>
				    </c:forEach>
				</div>
			
			</div>
			
		</div>
	
	
		<div class="pageContent">
			<div>
				<div class="contentHeader">
					<h1>Chain Find all providers at this clinic, find each of messages referencing this location, sort by time</h1>
				</div>
				<div class="container">
						<div class="entry">Entry</div>
					<div class="entry">Entry</div>
					<div class="entry">Entry</div>
					<div class="entry">Entry</div>
					<div class="entry">Entry</div>
				</div>
				
				<a href="/clinic/2/messages">
					<div class="redirect" >
					
					<h1>View All Clinic Messages</h1>
					</div>
				</a>
			</div>
			<div>
				<div class="contentHeader">
					<h1>Chain Find all providers at this clinic, find each of appts, sort by time</h1>
				</div>
				<div class="container">
						<div class="entry">Entry</div>
					<div class="entry">Entry</div>
					<div class="entry">Entry</div>
					<div class="entry">Entry</div>
					<div class="entry">Entry</div>
				</div>
				
				<a href="/clinic/2/appointments">
				<div class="redirect" >
				
				<h1>View All Clinic Appointments</h1>
				</div>
				</a>
			</div>
		</div>
		
		
	
	
	
	
	
	</div>
</div>
</body>
</html>