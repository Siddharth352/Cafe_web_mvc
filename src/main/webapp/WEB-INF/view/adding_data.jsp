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
<title>Insert title here</title>
</head>
<body >

<%


 String driver = "com.mysql.cj.jdbc.Driver";
 String url = "jdbc:sqlserver://127.0.0.1/testDB";
 String username = "grocery_shop";
 String password = "";
 
 Connection con;
 
 Class.forName(driver);
	
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery_shop","root","");
 Statement stmt = con.createStatement();
 


		  
 String s1 = "INSERT INTO  customer_detail VALUES ('" + request.getAttribute("username")+"' , '"+request.getAttribute("password")+"' , '"+request.getAttribute("email")+"','"+request.getAttribute("address")+"','"+request.getAttribute("mobileno")+  "')";	 


 stmt.executeUpdate(s1);
 con.close();

 response.sendRedirect("login"); 


 

%>





</body>
</html>