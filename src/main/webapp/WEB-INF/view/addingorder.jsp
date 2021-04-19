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
<%
 if (session.getAttribute("username").equals(null) | session.getAttribute("username").equals(null) ){
	 response.sendRedirect("login");
 }

%>
<body>
 <%

 String d1 = java.time.LocalDate.now().toString();

 
 String driver = "com.mysql.cj.jdbc.Driver";
 String url = "jdbc:sqlserver://127.0.0.1/testDB";
 String username = "grocery_shop";
 String password = "";
 
 Connection con;
 
 Class.forName(driver);
	
 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery_shop","root","");
 Statement stmt = con.createStatement();
 
 	  
 String s1 = "INSERT INTO  record (username,passw,dat,coffe,Latte,Cappucino,Mocha,	Espresso,Corto,totalbill) VALUES ('" + session.getAttribute("username")+"' , '"+session.getAttribute("passw")+"' , '"+java.time.LocalDate.now().toString()+"','"+request.getAttribute("coffeno")+"','"+request.getAttribute("Latteno")+ "','"+request.getAttribute("Cappucinono")+ "','"+request.getAttribute("Mochano")+ "','"+request.getAttribute("Espressono")+ "','"+request.getAttribute("Cortono")+ "','"+ request.getAttribute("grandtotal")  +"')";
 
 session.setAttribute("coffeno", request.getAttribute("coffeno"));
 session.setAttribute("Latteno", request.getAttribute("Latteno"));
 session.setAttribute("Cappucinono", request.getAttribute("Cappucinono"));
 session.setAttribute("Mochano", request.getAttribute("Mochano"));
 session.setAttribute("Espressono", request.getAttribute("Espressono"));
 session.setAttribute("Cortono", request.getAttribute("Cortono"));
 session.setAttribute("grandtotal", request.getAttribute("grandtotal")); 
 


stmt.executeUpdate(s1); 
con.close();  

 response.sendRedirect("orders");
 
%>




</body>
</html>