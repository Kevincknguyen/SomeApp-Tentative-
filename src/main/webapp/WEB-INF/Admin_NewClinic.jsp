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
</head>
<body>


<div class="form">
	 <h1>Register Clinic</h1>
    
    <p><form:errors path="clinic.*"/></p>
    
    <form:form method="POST" action="/admin/newclinic" modelAttribute="clinic">
       <p class="inputsection">
            <form:label path="name">Name:</form:label>
            <form:input  class="inputbox"   path="name"/>
        </p>
        <p class="inputsection">
            <form:label path="about">about</form:label>
            <form:input   class="inputbox"  path="about"/>
        </p>
        <p class="inputsection">
            <form:label path="streetAddress">streetAddress</form:label>
            <form:input   class="inputbox"  path="streetAddress"/>
        </p>
        <p class="inputsection">
            <form:label path="city">city</form:label>
            <form:input   class="inputbox"  path="city"/>
        </p>
        <p class="inputsection">
            <form:label path="state">state</form:label>
            <form:input   class="inputbox"  path="state"/>
        </p>
        <p class="inputsection">
            <form:label path="zip">zip</form:label>
            <form:input   class="inputbox"  path="zip"/>
        </p>
        <p class="inputsection">
            <form:label path="phoneNumber">Phone:</form:label>
            <form:input   class="inputbox"  path="phoneNumber"/>
        </p>
        <p>
        S<input type="text" name="sunday"/>
        M<input type="text" name="monday"/>
        T<input type="text" name="tuesday"/>
        W<input type="text" name="wednesday"/>
        R<input type="text" name="thursday"/>
        F<input type="text" name="friday"/>
        S<input type="text" name="saturday"/>
        </p>
       
        <input class="button"  type="submit" value="Register!"/>
    </form:form>
	
	</div>





</body>
</html>