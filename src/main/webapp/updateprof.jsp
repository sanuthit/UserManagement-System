<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.container {
  margin:auto;
  margin-top: 5%;
  width: 300px;
  height: 650px;
  border: 1px solid #000000;
  background-color: #f2f2f2;
}
.container{
  padding: 16px;
  background-color: white;
}
.container h2{
  color: darkblue;
  text-align: center;
}
.container button {
  background-color: blue;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;

}
.container button:hover {
  background-color: darkblue;
}
.container input{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
</style>
</head>
<body>
	
	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String usname = request.getParameter("username");
		String psw = request.getParameter("psw");
	%>
	
	<div class="container">
        <h2>Update Profile</h2>
        <form action="updateservlet" method="post">
        <label>User ID:</label><br>
          <input type="text" name="id" value="<%=id%>" readonly>
          <br>
        <label>Name:</label><br>
          <input type="text" name="pname" value="<%=name%>" required>
          <br>
          <label>Email:</label><br>
          <input type="text" name="email" value="<%=email%>" required>
          <br>
          <label>Phone number:</label><br>
          <input type="text" name="phone" value="<%=phone%>" required>
          <br>
          <label>Username:</label><br>
          <input type="text" name="usname" value="<%=usname%>" required>
          <br>
          <label>Password:</label><br>
          <input type="password" name="psw" value="<%=psw%>" required>
          <br>
          <br>
          <button type="submit">Update</button>
        </form>
      </div>
</body>
</html>