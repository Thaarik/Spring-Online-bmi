<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Titillium+Web">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<script src="https://kit.fontawesome.com/fc3420a326.js"
	crossorigin="anonymous"></script>
<style media="screen">
body {
	margin: 0;
	padding: auto;
	text-align: center;
	font-family: 'Poppins', sans-serif;
	background-image: linear-gradient(90deg, #b134eb, #5efff7);
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
					href="/login">Login</a>
				<a class="nav-item nav-link" href="/register">Register</a>
				
					 <a class="nav-item nav-link" href="#contact">Contact</a>
			</div>
		</div>
	</nav>
	<div class="card bg-dark text-white">
			<img src="/static/bg4.jpeg" class="card-img" alt="..." style="opacity: 0.6;">
			<div class="card-img-overlay">
				<h1 class="card-title">You are successfully logged-out!</h1>
		<h2>Please visit us soon to maintain your body fit!</h2>
		</div>
		</div>
		  <div id="footer" ><a name="contact"></a>
        <h4>We are happy to get feedback from you!</h4>
        <h4>Please reach us out!</h4>
        <h5>Contact:+91-xxxxxxxxxx</h5>
        <h5>Email: xyz@gmail.com</h5>
        
    </div>
</body>
</html>