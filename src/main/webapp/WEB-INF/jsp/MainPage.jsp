<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns:th="http://www.thymeleaf.org">
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="<c:url value="/resources/js/externalJavaScript.js" />"></script>

<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<script src="webjars/jquery/3.1.0/jquery.min.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="main.css">
<style type="text/css">
div.absolute {
	font-family: sans-serif;
	font-style: italic;
	font-size: 150%;
	position: absolute;
	top: 300px;
	right: 150px;
	width: 400px;
	height: 300px;
}

.form-control {
	width: 25%;
}
</style>
<title>Main Page jsp :)</title>
</head>
<body>
	<div class="container">
		<div align="center">
			<h1>Welcome to Simple bank loan calculator, ${username}</h1>
		</div>
		<br> <br>

		<div id="deleteDiv" align="right">
			<form:form method="POST"
				action="/SimpleBankLoanCalculator/MainPage.html"
				modelAttribute="user">
				<form:label path="username">Username:</form:label>
				<form:input path="username" />
				<br>
				<br>
				<div class="btn">
					<button type="submit" class="btn btn-default"
						value="Delete account">Delete account</button>
				</div>
			</form:form>
		</div>
		<br> <br>
		<div align="left">
			<form>
				<div id="InterestRateDiv" class="form-group">
					<label for="InterestRateList">Select interest rate:</label> <select
						class="form-control" id="InterestRateList">

						<option value="0.01">1%</option>
						<option value="0.02">2%</option>
						<option value="0.03">3%</option>
						<option value="0.04">4%</option>
						<option value="0.05">5%</option>
						<option value="0.06">6%</option>
						<option value="0.07">7%</option>
						<option value="0.08">8%</option>
						<option value="0.09">9%</option>
						<option value="0.10">10%</option>


					</select>
				</div>
			</form>
			<br> <br>
			<div id="AmmountDiv" class="form-group">
				<label for="AmmountList">Select ammount of assets(EUR)</label> <select
					id="AmmountList" class="form-control">

					<option value="1000">1000</option>
					<option value="2000">2000</option>
					<option value="3000">3000</option>
					<option value="4000">4000</option>
					<option value="5000">5000</option>
					<option value="6000">6000</option>
					<option value="7000">7000</option>
					<option value="8000">8000</option>
					<option value="9000">9000</option>
					<option value="10000">10000</option>

				</select>
			</div>

			<br> <br>
			<div id="Months" class="form-group">
				<label for="MonthsList">Select time period(months):</label> <select
					id="MonthsList" class="form-control">

					<option value="6">6 mesecnih rata</option>
					<option value="12">12 mesecnih rata</option>
					<option value="18">18 mesecnih rata</option>
					<option value="24">24 mesecnih rata</option>
					<option value="30">30 mesecnih rata</option>
					<option value="36">36 mesecnih rata</option>
					<option value="48">48 mesecnih rata</option>
					<option value="60">60 mesecnih rata</option>


				</select>
			</div>
		</div>
		<br> <br>

		<div class="btn">
			<button type="button" class="btn btn-success" onclick="myFunction()">Calculate</button>
		</div>
		<script src="/resources/externalJavaScript.js"></script>


		<div class="absolute" id="p1"></div>
	</div>

	<a href="<c:url value="/login.html" />">Logout</a>
</body>
</html>