<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2>Register here</h2>
		<form action="Register" method="post">
			<label>Username</label><input type="text" name="uname" /><br /><br/>
			<label>Password </label><input type="password" name="pass" /><br/><br/>
			<label>Employer</label><input type="text" name="emp" /><br /><br/>
			<label>Address</label>&nbsp;<textarea name="address" rows="2" cols="25"></textarea><br /><br/>
			<input type="submit" value="Register" />
		</form>
	</div>
</body>
</html>