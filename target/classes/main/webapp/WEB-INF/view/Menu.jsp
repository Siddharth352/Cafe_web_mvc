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
     <%@ include file="../resources/css/menu.css"%>
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  
<script >
function mess(){
	alert("Bill generated on next page and don't reload that.");
}

</script>  
</head>
<body >
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
        
        <li class="active"><a href="/Sshop/shop.com/Menu">Menu</a></li>
        <li><a href="/Sshop/shop.com/userRecord">Record</a></li>
          <li><a href="/Sshop/shop.com/about">About</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/Sshop/shop.com/logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
              </ul>
    </div>
  </div>
</nav>




<%
try{
	String s = session.getAttribute("username").toString();
	if(s=="null"){
		response.sendRedirect("login");
	}
}
catch(Exception  e){
	response.sendRedirect("login");
}
 

%>

<h1 align="center"> Here's your Drinks </h1>

<%
 String driver = "com.mysql.cj.jdbc.Driver";
 String url = "jdbc:sqlserver://127.0.0.1/testDB";
 String username = "grocery_shop";
 String password = "";
 
 Connection con;
 
 Class.forName(driver);
	
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery_shop","root","");
 Statement stmt = con.createStatement();
 ResultSet rs = stmt.executeQuery("Select * from menu");

%>
	
	
	<div align="center">
	
	
	<table>
	<td> <h3>Srno.&emsp;&emsp;&emsp;</h3> </td>
	<td> <h3> Drinks &emsp;&emsp;&emsp;</h3></td>
	<td> <h3>Price(in $)</h3> </td>
	
	
	
	<% 
	
	
	while (rs.next()) {
		
		
		
		%>
		
		
		<tr>
		
		 <td> <h3><%= rs.getInt(1) %>  &emsp;&emsp;&emsp; </h3></td>
		<td> <h3><%= rs.getString(2) %> &emsp;&emsp;&emsp; </h3></td>
		<td> <h3> <%= rs.getString(3) %></h3></td>
		
		</tr>
		
	
		<%} ;%>
		
		
		
		
		
	
	
		</table>
	
	<% con.close(); %> 
	
	<h2>Enter order...</h2>
	
	
	<form name="coffenumber" method="post" action="addingorder" onsubmit="mess()">
	
	<table>
	
	<tr>
	<td> <h3><label>  Coffee Number </label> </h3>  </td>
     <td>  <select name="coffeno">
     		
       	   <option>0</option>
           <option>1</option>
           <option>2</option>   
           <option>3</option>
           <option>4</option>
       </select>
       </td>
      </tr>
      
      <tr>
      <td>
       <h3><label>  Latte </label> </h3>  </td>
       <td>
       <select name="Latteno">
       		<option>0</option>
           <option>1</option>
           <option>2</option>   
           <option>3</option>
           <option>4</option>
       </select>
       </td>
      </tr>
      
      <tr>
      <td>
        <h3><label> Cappucino</label> </h3>   </td>
       
       <td>
       <select name="Cappucinono">
       		<option>0</option>
           <option>1</option>
           <option>2</option>   
           <option>3</option>
           <option>4</option>
       </select>
       </td>
       
		</tr>
		
		<tr>
		<td> <h3>
       <label> Mocha</label> </td>
       </h3>
       <td>
       <select name="Mochano">
    	   <option>0</option>
           <option>1</option>
           <option>2</option>   
           <option>3</option>
           <option>4</option>
       </select>
       </td>
       </tr>
       
       <tr>
       <td>
       <h3>
       <label> Espresso</label> </td>
       </h3>
       <td>
       <select name="Espressono">
       		<option>0</option>
           <option>1</option>
           <option>2</option>   
           <option>3</option>
           <option>4</option>
       </select>
       </td>
		</tr>
		
		<tr>
		<td>
		<h3>
       <label> Corto</label> </td>
       </h3>
       <td>
       <select name="Cortono">
       		<option>0</option>
           <option>1</option>
           <option>2</option>   
           <option>3</option>
           <option>4</option>
       </select>
		</td>
	</tr>
	</table>
	
	
	
	   
       
     <input type="submit" name="submit" value="Order now"/>
    </form>
	
     
		
</div>





</body>
</html>