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
<body >

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
		
		<td><%= rs.getInt(1) %>&emsp;&emsp;&emsp;</td>
		<td><%= rs.getString(2) %>&emsp;&emsp;&emsp;</td>
		<td><%= rs.getString(3) %></td>
		
		</tr>
		
	
		<%} ;%>
		
		
		
		
		
	
	
		</table>
	
	<% con.close(); %> 
	
	<h2>Enter order...</h2>
	
	
	<form name="coffenumber" method="get" action="orders">
	
	<table>
	
	<tr>
	<td><label>  Coffee Number </label> </td>
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
       <label> Latte </label> </td>
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
       <label> Cappucino</label> </td>
       
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
		<td>
       <label> Mocha</label> </td>
       
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
       <label> Espresso</label> </td>
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
       <label> Corto</label> </td>
       
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