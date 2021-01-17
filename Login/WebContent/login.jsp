<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	
	<div align="center">
		<h2>Login here</h2>
		<form action="Login" method="post">
			<label>Username</label><input type="text" name="uname" /><br /><br/>
			<label>Password </label><input type="password" name="pass" /><br/><br/>
			<a href="register.jsp">Register</a>&nbsp; &nbsp; &nbsp; &nbsp;<input type="submit" value="login" />
		</form>
	</div>

</body>
</html>