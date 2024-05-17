<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
.lcontainer {
margin:auto;
margin-top: 5%;
width: 300px;
height: 450px;
border: 1px solid #000000;
background-color: #f2f2f2;
margin-bottom: 20%;
}
.lcontainer{
padding: 16px;
background-color: white;
}
.lcontainer h1{
color: darkblue;
text-align: center;
}
.lcontainer button {
background-color: blue;
color: white;
padding: 14px 20px;
margin: 8px 0;
border: none;
cursor: pointer;
width: 100%;

}
.lcontainer button:hover {
background-color: darkblue;
}
.lcontainer input{
width: 100%;
padding: 12px 20px;
margin: 8px 0;
display: inline-block;
border: 1px solid #ccc;
box-sizing: border-box;
}

.submit button{
background-color: blue;
color: white;
padding: 14px 20px;
margin: 8px 0;
border: none;
cursor: pointer;
width: 20%;
margin-bottom: 20%;
margin-left: 40%;
}
.submit button a{
text-decoration: bold;
color: white;
}
.submit button:hover{
background-color: darkblue;
}
.lcontainer p a{
  color: red;
  float: right;
  padding-top: 16px;
  text-decoration: none;
}
.lcontainer p a:hover{
  text-decoration: underline;
}
    </style>
</head>
<body>
	  <form method="post" action="LoginServlet" class="lcontainer">
        <br>
        <h1>Login</h1>
        <br>
        <br>
        <label>User Name:</label><br>
        <input type="text" name="username" id="username">
        <br>
        <br>
        <label>Password:</label><br>
        <input type="password" name="password" id="password">
        <br>
        <br>
        <button type="submit" name="submit" id="submit">Login</button>
        <br>
        <p><a href="Register.jsp">Don't have an account?</a></p>
        <br>
    </form>
</body>
</html>