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
<title>Insert title here</title>


</head>
<body>

<h1 align="center">Here is Record of your orders made till today</h1>


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
	
 	
	<div align="center">
	
	
	<table>
	<td> <h3>sr no.&emsp;&emsp;&emsp;</h3> </td>
	<td> <h3>Date&emsp;&emsp;&emsp;</h3> </td>
	<td> <h3> coffee no &emsp;&emsp;&emsp;</h3></td>
	<td> <h3> Latte no</h3> </td>
	<td> <h3> Cappucino no. &emsp;&emsp;&emsp;</h3> </td>
	<td> <h3>Mocha no.&emsp;&emsp;&emsp;</h3> </td>
	<td> <h3>Espresso no.&emsp;&emsp;&emsp;</h3> </td>
	<td> <h3>Corto no.&emsp;&emsp;&emsp;</h3> </td>
	<td> <h3>totalbill no.</h3> </td>
	
	
	
	
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



</body>
</html>