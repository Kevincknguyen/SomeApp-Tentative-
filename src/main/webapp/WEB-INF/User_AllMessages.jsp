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
<link rel="stylesheet" type="text/css" href="/css/User_AllMessages.css">
</head>
<body>
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
	
	
	
	<div class="sidebar">
		<div>
			<button>Inbox</button>
		</div>
		<div>
			<button>Sent Messages</button>
		</div>
		<div>
			<button onClick="myFunction(1,2)">Send New Messages</button>
		</div>
	</div>
	
	
	<div class="messageList">
		<div onclick="message(this)" class="entry">
			<div>
			<img class="entryImg" src="https://placekeanu.com/350/500/y" alt="">
			</div>
				<div class="entryContent">
					<div style="display:flex;justify-content:space-between;">
				<h2>Title of the Message</h2>
				<h2>Created at Date time</h2>
			</div>
			<div><h4>From Whoever in Question</h4></div>
			<div>First characters of message</div>
				<div>Very</div>
				<div>Important</div>
				<div>Message</div>
				<div>Please</div>
				<div>Continue</div>
				<div>to</div>
				<div>Readd</div>
		</div>
		</div>
			<div onclick="message(this)" class="entry">
			<div>
			<img class="entryImg" src="https://placekeanu.com/350/500/y" alt="">
			</div>
				<div class="entryContent">
					<div style="display:flex;justify-content:space-between;">
				<h2>Title of the Message</h2>
				<h2>Created at Date time</h2>
			</div>
			<div><h4>From Whoever in Question</h4></div>
			<div>First characters of message</div>
				<div>Very</div>
				<div>Important</div>
				<div>Message</div>
				<div>Please</div>
				<div>Continue</div>
				<div>to</div>
				<div>Readd</div>
		</div>
		</div>
		<div onclick="message(this)" class="entry">
			<div>
			<img class="entryImg" src="https://placekeanu.com/350/500/y" alt="">
			</div>
				<div class="entryContent">
					<div style="display:flex;justify-content:space-between;">
				<h2>Title of the Message</h2>
				<h2>Created at Date time</h2>
			</div>
			<div><h4>From Whoever in Question</h4></div>
			<div>First characters of message</div>
				<div>Very</div>
				<div>Important</div>
				<div>Message</div>
				<div>Please</div>
				<div>Continue</div>
				<div>to</div>
				<div>Readd</div>
		</div>
		</div>
			<div onclick="message(this)" class="entry">
			<div>
			<img class="entryImg" src="https://placekeanu.com/350/500/y" alt="">
			</div>
				<div class="entryContent">
					<div style="display:flex;justify-content:space-between;">
				<h2>Title of the Message</h2>
				<h2>Created at Date time</h2>
			</div>
			<div><h4>From Whoever in Question</h4></div>
			<div>First characters of message</div>
				<div>Very</div>
				<div>Important</div>
				<div>Message</div>
				<div>Please</div>
				<div>Continue</div>
				<div>to</div>
				<div>Readd</div>
		</div>
		</div>
		<div onclick="message(this)" class="entry">
			<div>
			<img class="entryImg" src="https://placekeanu.com/350/500/y" alt="">
			</div>
				<div class="entryContent">
					<div style="display:flex;justify-content:space-between;">
				<h2>Title of the Message</h2>
				<h2>Created at Date time</h2>
			</div>
			<div><h4>From Whoever in Question</h4></div>
			<div>First characters of message</div>
				<div>Very</div>
				<div>Important</div>
				<div>Message</div>
				<div>Please</div>
				<div>Continue</div>
				<div>to</div>
				<div>Readd</div>
		</div>
		</div>
			<div onclick="message(this)" class="entry">
			<div>
			<img class="entryImg" src="https://placekeanu.com/350/500/y" alt="">
			</div>
				<div class="entryContent">
					<div style="display:flex;justify-content:space-between;">
				<h2>Title of the Message</h2>
				<h2>Created at Date time</h2>
			</div>
			<div><h4>From Whoever in Question</h4></div>
			<div>First characters of message</div>
				<div>Very</div>
				<div>Important</div>
				<div>Message</div>
				<div>Please</div>
				<div>Continue</div>
				<div>to</div>
				<div>Readd</div>
		</div>
		</div>
		
		
	</div>
	
	
	
	
	
	
	
	</div>
	
	
	
<div class="modal" id="myModal">
		<div id="modal-content">
			
		<p><form:errors path="message.*"/></p>
    
    <form:form method="POST" action="/registration" modelAttribute="message">
        <p class="inputsection">
            <form:label path="recipient">Recipient:</form:label>
            <form:input   class="inputbox"  path="recipient"/>
        </p>
       <p class="inputsection">
            <form:label path="message">Message:</form:label>
            <form:textarea  rows="5" cols="50" class="inputbox"   path="message"/>
        </p>
       
        <input class="button"  type="submit" value="Send Message"/>
    </form:form>
		
		
		
			<!-- <h1>Either pass private variables through html to javascript</h1>
			<h1>Convert class to json that is accessible then pass]</h1>
			<h1>On loop create modals that only respond to their respective buttons</h1> -->
		</div>
	</div>

<script src="/js/Modal.js"></script>
</body>
</html>