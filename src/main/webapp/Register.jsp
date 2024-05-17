<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style>
.container {
  margin:auto;
  margin-top: 5%;
  width: 300px;
  height: 500px;
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
.container p a{
  color: red;
  float: right;
  padding-top: 16px;
  text-decoration: none;
}
.container p a:hover{
  text-decoration: underline;
}
</style>
</head>
<body> 
	<div class="container">
        <h2>Register</h2>
        <form action="registerServlet" method="post">
          <input type="text" name="pname" placeholder="Name" required>
          <br>
          <input type="text" name="email" placeholder="Email" required>
          <br>
          <input type="text" name="phone" placeholder="Phone" required>
          <br>
          <input type="text" name="usname" placeholder="Username" required>
          <br>
          <input type="password" name="psw" placeholder="Password" required>
          <br>
          <br>
          <button type="submit">Register</button>
          <p><a href="Login.jsp">Already have an account?</a></p>
        </form>
      </div>
</body>
</html>