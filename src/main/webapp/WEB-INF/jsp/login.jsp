<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<script src="webjars/jquery/3.1.0/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login jsp</title>
</head>
<body>
	<div class="container">
	<div align="center" id="loginHeadline">
		<h3>Welcome, please login to your account</h3>
		</div>
		<br> <br>
		<div align="center">
			<form:form method="POST"
				action="/SimpleBankLoanCalculator/login.html" modelAttribute="user">

				<div class="form-group">

					<form:label path="username" class="control-label col-sm-2"
						for="username">Username:</form:label>

					<div class="col-sm-6">
						<form:input path="username" required="required"
							placeholder="Enter username" name="username" class="form-control"
							id="username" />
					</div>
				</div>
				<br>
				<br>
				<div class="form-group">
					<form:label path="password" class="control-label col-sm-2"
						for="password">Password:</form:label>
					<div class="col-sm-6">
						<form:password path="password" required="required"
							placeholder="Enter password" class="form-control" id="password"
							name="password" />
					</div>
				</div>
				<br>
				<br>
				<div>
					<div class="col-sm-offset-2 col-sm-10" align="left" >
						<button type="submit" class="btn btn-default">Login</button>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>