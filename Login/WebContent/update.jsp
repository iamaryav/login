<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Details</title>
</head>
<body>
	
	<%

		// this code for disabling access to previous pages after logout
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // Supports in http 1.1
	
		response.setHeader("pragma", "no-cache");// Http 1.0
	
		response.setHeader("Expires", "0"); // works on proxy servers
		
		if(session.getAttribute("username")==null){
			
			response.sendRedirect("login.jsp");
		}	
	
	%>
	
	<%

	String url = "jdbc:mysql://localhost:3306/login";
	String username = "root";
	String password = "";
	String driver = "com.mysql.jdbc.Driver";
	String sql = "SELECT * FROM user WHERE username = ?";
	String uname = session.getAttribute("username").toString();
	
	try{
		System.out.println("in start of try block");

		Class.forName(driver);
		System.out.println("jdbc driver successfully loaded");

		Connection con = DriverManager.getConnection(url, username, password);
		System.out.println("Connection established");
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, uname);
		ResultSet rs = st.executeQuery();
		rs.next();
		String unames = rs.getString("username");
		String pass = rs.getString("password");
		String emp = rs.getString("employer");
		String add = rs.getString("address");
				
		//System.out.println(unames+" "+pass+" "+emp+" "+add);
				
		%>
		
				
		<div align="center">
		<h1>Update Details</h1></h1><br>
	
		<form action="Update" method="post">
			<label>Username</label><input type="text" name="uname" value="<%= unames %>" readonly/><br /><br/>
			<label>Password </label><input type="password" name="pass" value="<%= pass %>" /><br/><br/>
			<label>Employer </label><input type="text" name="emp" value="<%= emp %>" /><br /><br/>
			<label>Address</label>&nbsp;<textarea name="address" rows="2" cols="25" ><%= add %></textarea><br /><br/>
			<input type="submit" value="Update" />
		</form>

		
</div>
		
<%
	}
	catch(Exception e){
		
		e.printStackTrace();
		System.out.println("Connection not established");

	}

	%>
	
	
	
</body>
</html>