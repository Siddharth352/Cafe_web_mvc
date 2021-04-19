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
<title>cheers cafe</title>



</head>
<body >



<div align="center">
<h1>Login : Enter your Details</h1>



<form action="verify" method="GET" onsubmit="">


<table>

<tr>
 <td>Email : </td> <td> <input type="text" name="username" > </td>
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