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
<link rel="stylesheet" type="text/css" href="/css/User_AllClinics.css">
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
	
	
	
		
		<div>
		<h1>Add clinics to your list (dropdown for now, search bar later..admin add providers?)</h1>
		<form action="/clinics">
			<select name="cars" id="cars">
				<c:forEach var="singleClinic" items="${allClinics}">
			    <option value="${singleClinic.id }"><c:out value="${singleClinic.name }"></c:out></option>
			
				</c:forEach>
		 	 </select>
		  			<br><br>
	 		  <input type="submit" value="Submit">
		</form>
			<div class="allEntry">
			<c:forEach var="singleClinic" items="${allClinics}">
			    <div class="entry">
				    <div>
				    	<c:out value="${singleClinic.name }"></c:out>
				    	<p>
				    		<c:out value="${singleClinic.streetAddress }"></c:out>
				    		<c:out value="${singleClinic.city }"></c:out>
				    		<c:out value="${singleClinic.zip }"></c:out>
				    		<c:out value="${singleClinic.state }"></c:out>
				    	</p>
					    <c:forEach var="hour" items="${singleClinic.hours }">
					    	<p><strong><c:out value="${hour.key}"></c:out></strong> <c:out value="${hour.value}"></c:out></p>
					    
					    </c:forEach>
				    </div>
				    <div>
				    	<a href="/clinic/${singleClinic.id }">Go to page</a>
				    </div>
			    </div>
			
				</c:forEach>
			</div>
		</div>
	
	
		<div>
			<h1>My List of Clinics</h1>
		
			<div class="allEntry">
			
				<div class="entry">
					<c:choose>
						<c:when test="${currentUser.getRoles().get(0).getId()==3 }">
							This user is a Provider
							<button>Enter clinic</button>
							<button>Request clinic add you to roster</button>
						</c:when>
						<c:otherwise>
							This user is Not provider
							<button>Add clinic to my list of contacts</button>
							<button>View clinic info</button>
						</c:otherwise>
					</c:choose>
				</div>
				
				<div class="entry">awd</div>
				<div class="entry">awd</div>
				<div class="entry">awd</div>
				<div class="entry">awd</div>
				<div class="entry">awd</div>
				<div class="entry">awd</div>
				<div class="entry">awd</div>
				<div class="entry">awd</div>
				<div class="entry">awd</div>
				<div class="entry">awd</div>
				<div class="entry">awd</div>
				<div class="entry">awd</div>
				<div class="entry">awd</div>
				<div class="entry">awd</div>
				<div class="entry">awd</div>
			
			</div>
		</div>
	
	
	
	
	</div>




</div>
</body>
</html>