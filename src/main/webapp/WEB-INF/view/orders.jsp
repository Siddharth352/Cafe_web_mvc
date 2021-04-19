<%@page import="java.awt.geom.Path2D"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.time.LocalDate" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill </title>
<style>
     <%@ include file="../resources/css/orders.css"%>
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body >
<%
try{
	String s = session.getAttribute("username").toString();

	if(s=="null"){
		response.sendRedirect("login");}

	 
}
catch(Exception  e){
	response.sendRedirect("home");
	
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
          <li><a href="/Sshop/shop.com/about">About</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/Sshop/shop.com/logout"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
      </ul>
    </div>
  </div>
</nav>





<% int Grandtotal = 0 ;%>

<div class = "heading">

<h2 align="center">Your order is placed and Here's the details</h2>
</div>


<div class = "down" align="center">

<div class="mid" align="center">


<table>




<tr>


<%if (!session.getAttribute("coffeno").equals(null)){%>
	 <td> Coffee Ordered : </td>  <td> <%=  session.getAttribute("coffeno")  %> </td>
	 
<td> &emsp;&emsp;&emsp;Price :</td>  <td> <%= Integer.parseInt((String)session.getAttribute("coffeno"))  * 7 %> $ </td>
	<% session.removeAttribute("coffeno"); %>
<%}%> 
</tr>

<tr>
<%if( !session.getAttribute("Latteno").equals(null)){%>
	<td>Latte Ordered :</td>  <td> <%=  session.getAttribute("Latteno")  %> </td>
	<td> &emsp;&emsp;&emsp;Price : </td>  <td> <%= Integer.parseInt((String) session.getAttribute("Latteno") )* 10 %> $ </td>
	<% session.removeAttribute("Latteno"); %>
<%}%>
</tr>

<tr>
<%if( !session.getAttribute("Cappucinono").equals(null)){%>
	<td>Cappucino Ordered :</td>  <td> <%=  session.getAttribute("Cappucinono")  %> </td>
	<td>&emsp;&emsp;&emsp; Price : </td>  <td> <%=Integer.parseInt((String)session.getAttribute("Cappucinono")) * 11 %> $ </td>
	<% session.removeAttribute("Cappucinono"); %>
<%}%>

</tr>

<tr>
<%if(!session.getAttribute("Mochano").equals(null)){%>
	<td> Mocha Ordered : </td>  <td><%=  session.getAttribute("Mochano")  %> </td>
	<td>&emsp;&emsp;&emsp; Price : </td>  <td> <%= Integer.parseInt((String) session.getAttribute("Mochano")) * 9 %> $ </td>
	<% session.removeAttribute("Mochano"); %>
<%}%>
</tr>

<tr>

<%if( !session.getAttribute("Espressono").equals(null)){%>
	<td>	Espresso Ordered : </td>  <td> <%=  session.getAttribute("Espressono")  %> </td>
	<td>&emsp;&emsp;&emsp; Price :</td>  <td> <%= Integer.parseInt((String) session.getAttribute("Espressono")) * 12 %> $ </td>
	<% session.removeAttribute("Espressono"); %>
<%}%>

</tr>

<tr>
<%if(!session.getAttribute("Cortono").equals(null)){%>
	<td> Corto Ordered : </td>  <td> <%=  session.getAttribute("Cortono")  %> </td>
		<td>&emsp;&emsp;&emsp; Price : </td>  <td> <%= Integer.parseInt((String) session.getAttribute("Cortono") )* 10 %> $ </td>
	<% session.removeAttribute("Cortono"); %>
<%}%>
</tr>
<tr>
 <td> Total Bill </td>  <td>  = </td> <td> </td>  <td> <%= session.getAttribute("grandtotal")  %> $</td>
 <% session.removeAttribute("grandtotal"); %>
 </tr>


</table>
 <p>Your Order has has been placed , Please pay the required amount When delivery boy bring your order </p>
 <p>Thanku ...have a nice day.. </p>
 <p>Teams Cheers Cafe</p>
  

</div>


</div>
 <div align="center">
 <form action="userRecord" method = "post">
<button type="submit" value="view your record">view your record</button>
</form>
 
 </div>

 

</body>
</html>