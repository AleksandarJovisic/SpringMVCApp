<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<script src="webjars/jquery/3.1.0/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>welcome to registration jsp :)</title>
</head>
<body>
	<div class="container" align="center">
		<h3>Welcome to registration jsp :)</h3>
		<br> <br>
		<form:form method="POST"
			action="/SimpleBankLoanCalculator/Registration.html"
			modelAttribute="user">
			<table class="table table-striped" >
				<tr>
					<td><form:label path="name" class="control-label col-sm-3" for="name" >Name:</form:label></td>
					<td><form:input path="name"  placeholder="Enter your name" name="name" class="form-control"
							id="name"  /></td>
				</tr>
				<tr>
					<td><form:label path="surname" class="control-label col-sm-3" for="surname">Surname:</form:label></td>
					<td><form:input path="surname"  placeholder="Enter your surname" name="surname" class="form-control"
							id="surname" /></td>
				</tr>
				<tr>
					<td><form:label path="city" class="control-label col-sm-3" for="city">City:</form:label></td>
					<td><form:input path="city" placeholder="Enter your city" name="city" class="form-control"
							id="city"/></td>
				</tr>
				<tr>
					<td><form:label path="state" class="control-label col-sm-3" for="state">State:</form:label></td>
					<td><form:input path="state" placeholder="Enter your state" name="state" class="form-control"
							id="state"/></td>
				</tr>
				<tr>
					<td><form:label path="username" class="control-label col-sm-3" for="username">Username:</form:label></td>
					<td><form:input path="username" required="required"  placeholder="Enter your username" name="username" 
					class="form-control"	id="username" /></td>
				</tr>
				<tr>
					<td><form:label path="password" class="control-label col-sm-3" for="password">Password:</form:label></td>
					<td><form:password path="password" required="required" placeholder="Enter your password" name="password" 
					class="form-control"	id="password" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<button type="submit" class="btn btn-default">Register</button>
					</td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>