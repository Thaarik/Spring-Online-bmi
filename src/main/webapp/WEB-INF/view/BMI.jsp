
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<style media="screen">
body {
	margin: 0;
	padding: auto;
	text-align: center;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-image: linear-gradient(120deg, #b134eb, #5efff7);
	min-height: 120vh;
}

.metric {
	width: 500px;
	position: absolute;
	top: 80%;
	left: 50%;
	background-color: #ffff;
	transform: translate(-50%, -50%);
	padding: 30px;
	border-radius: 10px;
	box-shadow: 1px 1px 20px #ee5253;
}

h1 {
	font-size: 30px;
	font-weight: 600;
}

.text {
	text-align: center;
	
	font-size: 20px;
	font-style: inherit;
	font-weight: bolder;
}

.text-gender {
	text-align: center;
	
	font-size: 20px;
	font-style: inherit;
}

#age, #gender, #height, #weight {
	color: black;
	text-align: left;
	font-size: 20px;
	font-weight: 200;
	outline: none;
	border: none;
	background: none;
	border-bottom: 1px solid #341f97;
	width: 200px;
}

#male, #female {
	outline: none;
	border: none;
	background: none;
}

#age:focus, #gender:focus, #height:focus, #weight:focus {
	border-bottom: 2px solid #341f97;
	width: 300px;
	transition: 0.5s;
}

#male:focus, #female:focus {
	font-weight: bold;
	transition: 0.5s;
}

#button {
	font-family: inherit;
	margin-top: 10px;
	border: none;
	color: black;
	background-image: linear-gradient(60deg, #eb8334, #fcff5e);
	width: 150px;
	padding: 10px;
	border-radius: 30px;
	outline: none;
	cursor: pointer;
}

#button:hover {
	box-shadow: 1px 1px 10px #341f97;
}

.footer {
	position: absolute;
	bottom: -420px;
	background-color: #ddd;
	width: 100%;
	font-style: inherit;
	font-family: sans-serif;
	font-weight: bolder;
}
</style>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a href="#" class="navbar-brand"><img
			src="/static/Companylogo1.png"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link active" href="/welcome">Home <span
					class="sr-only">(current)</span></a> <a class="nav-item nav-link"
					href="/logout">Log Out</a>
				<!--  <a class="nav-item nav-link" href="/register">New</a>-->
				<a class="nav-item nav-link" href="/timer">Timer</a> <a
					class="nav-item nav-link" href="/caloriecounter">Calorie
					Counter</a>
			</div>
		</div>
	</nav>
	<br>
	<h1>Please enter your height and weight to know your BMI value and
		work-out tips</h1>
	<c:choose>
		<c:when test="${mode=='MODE_LOGGED' }">
		
			<div class="container">
				<div class="metric">
					<h1>BMI Calculation</h1>
					<br>
					<form:form method="get" modelAttribute="bmicalc" action="/resultpage">
						<form:label path="age" class="text">Age :</form:label><br/>
						<form:input path="age" type="number" id="age" min="2" max="100" />
						<br>
						<form:label path="gender" class="text">GENDER: </form:label>
						<br>
						<form:label path="gender" class="text-gender">MALE</form:label>
						<form:radiobutton path="gender" id="male" name="gender" />
						<form:label path="gender" class="text-gender">FEMALE</form:label>
						<form:radiobutton path="gender" id="female" name="gender" /><br/>
						<form:label class="text" path="height">HEIGHT(cm): </form:label><br/>
						<form:input path="height" type="number" id="height" min="100" max="250"/><br/>
						<form:label class="text" path="weight">WEIGHT(kg): </form:label><br/>
						<form:input path="weight" type="number" id="weight" min="0" max="300"/> 
							
						<br>


						<form:button id="button" type="submit" value="Calculate">Result</form:button>
					</form:form>
				</div>
			</div>
		</c:when>
	</c:choose>

</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</html>
