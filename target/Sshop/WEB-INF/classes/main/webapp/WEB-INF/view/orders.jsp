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
<title>Insert title here</title>

</head>
<body >

<h1 align="center">Your order is placed and Here's the details</h1>

<% int Grandtotal = 0 ;%>




<div align="center">



<table>

<tr>


<%if (!request.getAttribute("coffeno").equals(null)){%>
	<td>Coffee Ordered : </td>  <td> <%=  request.getAttribute("coffeno")  %> </td>
	 <%  Grandtotal+= Integer.parseInt((String)request.getAttribute("coffeno"))  * 7; %>
	
	<td> &emsp;&emsp;&emsp;Price :</td>  <td> <%= Integer.parseInt((String)request.getAttribute("coffeno"))  * 7 %> $ </td>
	
<%}%>
</tr>

<tr>
<%if( !request.getAttribute("Latteno").equals(null)){%>
	<td>Latte Ordered :</td>  <td> <%=  request.getAttribute("Latteno")  %> </td>
	<%  Grandtotal+= Integer.parseInt((String) request.getAttribute("Latteno") )* 10; %>
	<td> &emsp;&emsp;&emsp;Price : </td>  <td> <%= Integer.parseInt((String) request.getAttribute("Latteno") )* 10 %> $ </td>
<%}%>
</tr>

<tr>
<%if( !request.getAttribute("Cappucinono").equals(null)){%>
	<td>Cappucino Ordered :</td>  <td> <%=  request.getAttribute("Cappucinono")  %> </td>
	<%  Grandtotal+= Integer.parseInt((String) request.getAttribute("Cappucinono") )* 11; %>
	<td>&emsp;&emsp;&emsp; Price : </td>  <td> <%=Integer.parseInt((String)request.getAttribute("Cappucinono")) * 11 %> $ </td>
<%}%>

</tr>

<tr>
<%if(!request.getAttribute("Mochano").equals(null)){%>
	<td> Mocha Ordered : </td>  <td><%=  request.getAttribute("Mochano")  %> </td>
	<%  Grandtotal+= Integer.parseInt((String) request.getAttribute("Mochano") )* 9; %>
	<td>&emsp;&emsp;&emsp; Price : </td>  <td> <%= Integer.parseInt((String) request.getAttribute("Mochano")) * 9 %> $ </td>
<%}%>
</tr>

<tr>

<%if( !request.getAttribute("Espressono").equals(null)){%>
	<td>	Espresso Ordered : </td>  <td> <%=  request.getAttribute("Espressono")  %> </td>
	<%  Grandtotal+= Integer.parseInt((String) request.getAttribute("Espressono") )* 12; %>
	<td>&emsp;&emsp;&emsp; Price :</td>  <td> <%= Integer.parseInt((String) request.getAttribute("Espressono")) * 12 %> $ </td>
<%}%>

</tr>

<tr>
<%if(!request.getAttribute("Cortono").equals(null)){%>
	<td> Corto Ordered : </td>  <td> <%=  request.getAttribute("Cortono")  %> </td>
	<%  Grandtotal+= Integer.parseInt((String) request.getAttribute("Cortono") )* 10; %>
	<td>&emsp;&emsp;&emsp; Price : </td>  <td> <%= Integer.parseInt((String) request.getAttribute("Cortono") )* 10 %> $ </td>
<%}%>
</tr>
<tr>
 <td> Total Bill </td>  <td>  = </td> <td> </td>  <td> <%= Grandtotal  %> $</td>
 </tr>


</table>
 <h2>Your Order has has been placed , Please pay the required amount When delivery boy bring your order </h2>
 <h2>Thanku ...have a nice day.. </h2>
 <h3>Teams Cheers Cafe</h3>
 


</div>
 

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
 

		  
 String s1 = "INSERT INTO  record (username,passw,dat,coffe,Latte,Cappucino,Mocha,	Espresso,Corto,totalbill) VALUES ('" + session.getAttribute("username")+"' , '"+session.getAttribute("passw")+"' , '"+java.time.LocalDate.now().toString()+"','"+request.getAttribute("coffeno")+"','"+request.getAttribute("Latteno")+ "','"+request.getAttribute("Cappucinono")+ "','"+request.getAttribute("Mochano")+ "','"+request.getAttribute("Espressono")+ "','"+request.getAttribute("Cortono")+ "','"+ String.valueOf(Grandtotal)  +"')";
 


stmt.executeUpdate(s1); 

 
%>

<% con.close();%>

<form action="userRecord" method = "post">
<button type="submit" value="view your record">view your record</button>
</form>

</body>
</html>