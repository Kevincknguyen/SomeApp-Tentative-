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
		<c:if test="${logoutMessage!=null}">
		<c:out value="${logoutMessage}"></c:out>
		</c:if>
	    <h1>Sign in</h1>
	    
	    <c:if test="${errorMessage!=null}">
		<c:out value="${errorMessage}"></c:out>
		</c:if>
		
	    <form method="POST" action="/login">
	        <p class="inputsection">
	            <label for="username">Email address</label><br/>
	            <input type="text" class="inputbox" id="email" name="username"/><br/>
	            <input type="checkbox" name="saveUser" value="true">
	            <label for="saveUser"> Remember me</label><br>
	        </p>
	        <p class="inputsection">
	            <label for="password">Password</label><br/>
	            <input type="password" class="inputbox" id="password" name="password"/><br/>
	            <span onclick="myFunction()">Show password</span>
	        </p>
	        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	      
	        <input class="button" type="submit" value="Login!"/>
	    </form>
	    <p><a href="">Forget Username?</a>||<a href="">Forget Password?</a></p>
	    <a class="button" href="/registration">Create an account</a>
	
	</div>
</div>	



	<script>
	function myFunction() {
	  alert("Show password later");
	}
	</script>	
</body>
</html>