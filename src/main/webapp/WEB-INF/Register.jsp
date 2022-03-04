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
<link rel="stylesheet" type="text/css" href="/css/Login.css">
</head>
<body>
<div class="re">

	<div class="header">
		<h1>Someapp</h1>
	</div>
	
	
	
	<div class="form">
	 <h1>Register!</h1>
    
    <p><form:errors path="user.*"/></p>
    
    <form:form method="POST" action="/registration" modelAttribute="user">
       <p class="inputsection">
            <form:label path="firstName">First Name:</form:label>
            <form:input  class="inputbox"   path="firstName"/>
        </p>
        <p class="inputsection">
            <form:label path="lastName">Last Name:</form:label>
            <form:input   class="inputbox"  path="lastName"/>
        </p>
        <p class="inputsection">
            <form:label path="dob">Date of Birth:</form:label>
            <form:input  class="inputbox"   type="date" path="dob"/>
        </p>
        <p class="inputsection">
            <form:label path="email">Email:</form:label>
            <form:input   class="inputbox"  path="email"/>
        </p>
        <p class="inputsection">
            <form:label path="phoneNumber">Phone:</form:label>
            <form:input   class="inputbox"  path="phoneNumber"/>
        </p>
        
        <p class="inputsection">
            <form:label path="password">Password:</form:label>
            <form:password   class="inputbox"  path="password"/>
        </p>
        <p class="inputsection">
            <form:label path="passwordConfirmation">Password Confirmation:</form:label>
            <form:password   class="inputbox"  path="passwordConfirmation"/>
        </p>
        <input class="button"  type="submit" value="Register!"/>
    </form:form>
	<a class="button" href="/login">Return to login</a>
	<a class="button" href="/providerregistration">Healthcare Provider?</a>
	</div>


</div>







</body>
</html>