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
					<h1><c:out value="${currentUser.firstName }"></c:out> <c:out value="${currentUser.lastName }"></c:out></h1>
					<h3><c:out value="${currentUser.email }"></c:out></h3>
					<h3>Date of birth</h3>
					<h3>Phone number</h3>
					<p><c:out value="${currentUser.firstName }"></c:out></p>
				</div>
				<div>
						
					<p>Maybe turn this area into a carousel</p>
					<p>Or turn this into current rx info, overflow active</p>
					<p>Or swap with appointment</p>
				</div>
			
			</div>
			
		</div>
	
	
		<div class="pageContent">
			<div>
				<div class="contentHeader">
					<h1>Messages</h1>
				</div>
				<div class="container">
					<div class="entry" onclick="myFunction('${currentUser.email}','${currentUser.firstName}')">
						<img class="entryImg" src="https://placekeanu.com/350/500/y" alt="">
						<div class="entryContent">
							<div style="display:flex;justify-content:space-between;">
								<h2>Title of the Message</h2>
								<h2>Created at Date time</h2>
							</div>
							<div><h4>From Whoever in Question</h4></div>
							<div>First characters of message for whatever fits on the line without overflow</div>
						</div>
					</div>
					<div class="entry" onclick="myFunction('${currentUser.email}','${currentUser.firstName}')">
						<img class="entryImg" src="https://placekeanu.com/350/500/y" alt="">
						<div class="entryContent">
							<div style="display:flex;justify-content:space-between;">
								<h2>Title of the Message</h2>
								<h2>Created at Date time</h2>
							</div>
							<div><h4>From Whoever in Question</h4></div>
							<div>First characters of message for whatever fits on the line without overflow</div>
						</div>
					</div>
					<div class="entry" onclick="myFunction('${currentUser.email}','${currentUser.firstName}')">
						<img class="entryImg" src="https://placekeanu.com/350/500/y" alt="">
						<div class="entryContent">
							<div style="display:flex;justify-content:space-between;">
								<h2>Title of the Message</h2>
								<h2>Created at Date time</h2>
							</div>
							<div><h4>From Whoever in Question</h4></div>
							<div>First characters of message for whatever fits on the line without overflow</div>
						</div>
					</div>
					<div class="entry" onclick="myFunction('${currentUser.email}','${currentUser.firstName}')">
						<img class="entryImg" src="https://placekeanu.com/350/500/y" alt="">
						<div class="entryContent">
							<div style="display:flex;justify-content:space-between;">
								<h2>Title of the Message</h2>
								<h2>Created at Date time</h2>
							</div>
							<div><h4>From Whoever in Question</h4></div>
							<div>First characters of message for whatever fits on the line without overflow</div>
						</div>
					</div>
					<div class="entry" onclick="myFunction('${currentUser.email}','${currentUser.firstName}')">
						<img class="entryImg" src="https://placekeanu.com/350/500/y" alt="">
						<div class="entryContent">
							<div style="display:flex;justify-content:space-between;">
								<h2>Title of the Message</h2>
								<h2>Created at Date time</h2>
							</div>
							<div><h4>From Whoever in Question</h4></div>
							<div>First characters of message for whatever fits on the line without overflow</div>
						</div>
					</div>
				</div>
				
				<a href="/messages">
					<div class="redirect" >
					
					<h1>View All My Messages</h1>
					</div>
				</a>
			</div>
			<div>
				<div class="contentHeader">
					<h1>Upcoming Appointments</h1>
				</div>
				<div class="container">
					<div class="entry">
						<img class="entryImg" src="https://placekeanu.com/350/500/y" alt="">
						<div class="entryContent">
							<div style="display:flex;justify-content:space-between;">
								<h2>Name of Appointment doctor</h2>
								<h2>Specialty</h2>
							</div>
							<div style="display:flex;justify-content:space-between;">
								<h4>12:00 pm Monday November 11,2022</h4>
								<h4>11111 example, example,CA,92557</h4>
							</div>
						</div>
					</div>
					<div class="entry">
						<img class="entryImg" src="https://placekeanu.com/350/500/y" alt="">
						<div class="entryContent">
							<div style="display:flex;justify-content:space-between;">
								<h2>Name of Appointment doctor</h2>
								<h2>Specialty</h2>
							</div>
							<div style="display:flex;justify-content:space-between;">
								<h4>Time/Date</h4>
								<h4>11111 example, example,CA,92557</h4>
							</div>
						</div>
					</div>
					<div class="entry">
						<img class="entryImg" src="https://placekeanu.com/350/500/y" alt="">
						<div class="entryContent">
							<div style="display:flex;justify-content:space-between;">
								<h2>Name of Appointment doctor</h2>
								<h2>Specialty</h2>
							</div>
							<div style="display:flex;justify-content:space-between;">
								<h4>Time/Date</h4>
								<h4>11111 example, example,CA,92557</h4>
							</div>
						</div>
					</div>
					<div class="entry">
						<img class="entryImg" src="https://placekeanu.com/350/500/y" alt="">
						<div class="entryContent">
							<div style="display:flex;justify-content:space-between;">
								<h2>Name of Appointment doctor</h2>
								<h2>Specialty</h2>
							</div>
							<div style="display:flex;justify-content:space-between;">
								<h4>Time/Date</h4>
								<h4>11111 example, example,CA,92557</h4>
							</div>
						</div>
					</div>
					<div class="entry">
						<img class="entryImg" src="https://placekeanu.com/350/500/y" alt="">
						<div class="entryContent">
							<div style="display:flex;justify-content:space-between;">
								<h2>Name of Appointment doctor</h2>
								<h2>Specialty</h2>
							</div>
							<div style="display:flex;justify-content:space-between;">
								<h4>Time/Date</h4>
								<h4>11111 example, example,CA,92557</h4>
							</div>
						</div>
					</div>
				</div>
				
				<a href="/clinic/2/appointments">
				<div class="redirect" >
				
				<h1>View All My Appointments</h1>
				</div>
				</a>
			</div>
		</div>
		
	</div>
	
	
	
	
	<div class="modal" id="myModal">
		<div id="modal-content">
			<h1>Message Title</h1>
			<h3>From Dr. Blank</h3>
			<p>Message</p>
		
		
		
		
			<!-- <h1>Either pass private variables through html to javascript</h1>
			<h1>Convert class to json that is accessible then pass]</h1>
			<h1>On loop create modals that only respond to their respective buttons</h1> -->
		</div>
	</div>
	
	
	
</div>




<script src="/js/Modal.js"></script>
</body>
</html>