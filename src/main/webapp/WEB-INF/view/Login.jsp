<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="java.awt.geom.Path2D"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cheer's cafe</title>

<style>
     <%@ include file="../resources/css/login.css"%>
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body >
<%
try{
	String s = session.getAttribute("username").toString();
	if(s!="null"){
		response.sendRedirect("Menu");}
	
}
catch(Exception  e){
	int a=1;
}
 

%>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Cheer's Cafe</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li ><a href="/Sshop/shop.com/home">Home</a></li>
        
        <li><a href="/Sshop/shop.com/Menu">Menu</a></li>
        <li><a href="/Sshop/shop.com/userRecord">Record</a></li>
          <li ><a href="/Sshop/shop.com/about">About</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/Sshop/shop.com/signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li class="active"><a href="/Sshop/shop.com/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>


<div align="center">
<h1>Login : Enter your Details</h1>



<form action="verify" method="GET" >


<table>

<tr>
 <td>Username : </td> <td> <input type="text" name="username" > </td>
</tr>

<tr>
<td> Password: </td> <td> <input type="password" name="password"  /> </td>
</tr>
</table>
 <button type="submit" value="ok" >Submit</button>
</form>



</div>





</body>
</html>