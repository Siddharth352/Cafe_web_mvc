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
<body>


<%


 String driver = "com.mysql.cj.jdbc.Driver";
 String url = "jdbc:sqlserver://127.0.0.1/testDB";
 String username = "grocery_shop";
 String password = "";
 
 Connection con;
 
 Class.forName(driver);
	
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery_shop","root","");
 Statement stmt = con.createStatement();
 


		  
 String s1 = "Select * from customer_detail WHERE username = '" + request.getAttribute("username")+"' AND passw = '"+request.getAttribute("password")+"'";	 
 
 ResultSet rs = stmt.executeQuery(s1);

 
if(!rs.next()){
	
	
	response.sendRedirect("signup"); 
}
else{
	
	session.setAttribute("username", request.getAttribute("username"));
	session.setAttribute("passw", request.getAttribute("password"));
	response.sendRedirect("Menu"); 
}
 

 

%>

<% con.close();%>



</body>
</html>