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
</head>
<body>
<div class="body">


	<div class="navbar">
		<div><c:out value="${currentUser.firstName }"></c:out></div>
		<div><c:out value="${currentUser.firstName }"></c:out></div>
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
					<div>awd</div>
					<div>awd</div>
					
				</div>
			</div>
			
		</div>
	
	</div>
	















</div>
</body>
</html>