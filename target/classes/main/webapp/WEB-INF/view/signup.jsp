<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cheer's Cafe</title>
<style>
     <%@ include file="../resources/css/signup.css"%>
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"></head>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body >
<%
try{
	String s = session.getAttribute("username").toString();
	if(s!="null"){
		response.sendRedirect("Menu");
		
	}
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
        <li class="active"><a href="/Sshop/shop.com/signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="/Sshop/shop.com/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<form action="adding_data" method="post">

<div align="center">

<h1>Signup: Enter your details</h1>

<table>

<tr>

<td> <h3> <label>Gmail</label> </h3> </td>
<td> <input type="email" name = "emial" maxlength="26"></td>

</tr>

<tr>

<td> <h3><label >Password</label> </h3> </td>
<td> <input type="password" name = "password" maxlength="8"> </td>
</tr>

<tr>

<td> <h3><label>Username</label></h3> </td>
<td> <input type="text" name = "username" maxlength="26"></td>

</tr>

<tr>

<td>  <h3><label>  Address</label></h3></td>
<td> <input type="text" name = "address" maxlength="100"></td>

</tr>
<tr>

<td> <h3><label>Mobile No.</label></h3> </td>
<td> <input type="text" name = "mobileno" maxlength="10"></td>

</tr>


<br>



</table>

<button type="submit" >Submit</button>
</div>



</form>





</body>
</html>