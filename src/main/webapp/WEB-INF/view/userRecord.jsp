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
<title>Cheer's Cafe</title>
<style>
     <%@ include file="../resources/css/record.css"%>
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"></head>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


</head>
<body> 
<%
try{
	String s = session.getAttribute("username").toString();
	
}catch(Exception e){
	response.sendRedirect("login");
}



%>

<div class="outer" align="center">
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
        <li class="active"><a href="/Sshop/shop.com/userRecord">Record</a></li>
          <li ><a href="/Sshop/shop.com/about">About</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/Sshop/shop.com/logout"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
      </ul>
    </div>
  </div>
</nav>
<h1 align="center">Here is Record Of Your Orders Made Till Today</h1>


<%
 String driver = "com.mysql.cj.jdbc.Driver";
 String url = "jdbc:sqlserver://127.0.0.1/testDB";
 String username = "grocery_shop";
 String password = "";
 
 Connection con;
 
 Class.forName(driver);
	
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery_shop","root","");
 Statement stmt = con.createStatement();
 ResultSet rs = stmt.executeQuery("Select * from record WHERE username = '"+ session.getAttribute("username")+"'");
 

%>

	
 	
	<div class="middle" align="center">
	
	
	
	
	<table>
	<td> <p>sr no.&emsp;&emsp;&emsp;</p> </td>
	<td> <p>Date&emsp;&emsp;&emsp;</p> </td>
	<td> <p> coffee no &emsp;&emsp;&emsp;</p></td>
	<td> <p> Latte no</p> </td>
	<td> <p> Cappucino no. &emsp;&emsp;&emsp;</p> </td>
	<td> <p>Mocha no.&emsp;&emsp;&emsp;</p> </td>
	<td> <p>Espresso no.&emsp;&emsp;&emsp;</p> </td>
	<td> <p>Corto no.&emsp;&emsp;&emsp;</p> </td>
	<td> <p>totalbill no.</p> </td>
	
	
	
	
	<% 
	
	int count=0;
	while (rs.next()) {
		
		
		
		%>
		
		
		<tr>
		<td><%= count+1 %> &emsp;&emsp;&emsp;</td>             
		
		<td><%= rs.getString(4) %>&emsp;&emsp;&emsp;</td>
		<td><%= rs.getString(5) %>&emsp;&emsp;&emsp;</td>
		<td><%= rs.getString(6) %>&emsp;&emsp;&emsp;</td>
		<td><%= rs.getString(7) %>&emsp;&emsp;&emsp;</td>
		<td><%= rs.getString(8) %>&emsp;&emsp;&emsp;</td>
		<td><%= rs.getString(9) %>&emsp;&emsp;&emsp;</td>
		<td><%= rs.getString(10) %>&emsp;&emsp;&emsp;</td>
		<td><%= rs.getString(11) %></td>
		
		</tr>
		
	
		<%
		
		count+=1;
	} ;%>
		
		
		
		
		
	
	
		</table>
	
	<% con.close(); %> 

</div>
</div>
</body>
</html>