<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User details</title>

<style>
	body {
	margin-top: 5%;
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

.user-profile {
    max-width: 400px;
    background-color: #fff;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
}

.user-info {
    margin: 10px 0;
}

label {
    display: block;
    font-weight: bold;
    color: #333;
}

p {
    color: #777;
}

.edit-button {
    background-color: #007BFF;
    color: #fff;
    border: none;
    padding: 10px 20px;
    margin-top: 20px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.edit-button:hover {
    background-color: #0056b3;
}
.delete-button {
    background-color: red;
    color: #fff;
    border: none;
    padding: 10px 20px;
    margin-top: 20px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}
.delete-button:hover {
    background-color: dark-red;	
</style>
</head>
<body>
	<c:choose>
        <c:when test="${empty userDet}">
            <p>No user details available.</p>
        </c:when>
        <c:otherwise>
        <c:forEach var="User" items="${userDet}">
        
        <c:set var="id" value="${User.id}"/>
        <c:set var="name" value="${User.name}"/>
        <c:set var="email" value="${User.email}"/>
		<c:set var="phone" value="${User.phone}"/> 
		<c:set var="username" value="${User.uname}"/>
		<c:set var="psw" value="${User.psw}"/>
		       
            <div class="user-profile">
        <h1>User Account Details</h1>
        <div class="user-info">
            <label for="username">Username:</label>
            <p id="username">${User.uname}</p>
        </div>
        <div class="user-info">
            <label for="fullname">Full Name:</label>
            <p id="fullname">${User.name}</p>
        </div>
        <div class="user-info">
            <label for="email">Email:</label>
            <p id="email">${User.email}</p>
        </div>
        <div class="user-info">
            <label for="phone">Phone:</label>
            <p id="phone">${User.phone}</p>
        </div>
        
        <c:url value="updateprof.jsp" var="userupdate">
        	<c:param name="id" value="${User.id}"/>
        	<c:param name="name" value="${User.name}"/>
        	<c:param name="email" value="${User.email}"/>
        	<c:param name="phone" value="${User.phone}"/>
        	<c:param name="username" value="${User.uname}"/>
        	<c:param name="psw" value="${User.psw}"/>
        </c:url>
        
        <a href="${userupdate}">
        <button class="edit-button" name="update" value="updateData">Edit Profile</button>
        </a>
        <br>
        <c:url value="delete.jsp" var="userdelete">
        	<c:param name="id" value="${User.id}"/>
        	<c:param name="name" value="${User.name}"/>
        	<c:param name="email" value="${User.email}"/>
        	<c:param name="phone" value="${User.phone}"/>
        	<c:param name="username" value="${User.uname}"/>
        	<c:param name="psw" value="${User.psw}"/>
        </c:url>
        <a href="${userdelete}">
        <button class="delete-button" name="update" value="deleteData">Delete Profile</button>
        </a>
        
    </div>
    </c:forEach>
        </c:otherwise>
    </c:choose>
</body>
</html>