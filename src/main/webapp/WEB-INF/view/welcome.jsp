<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<style media="screen">
	 body{
    margin: 0;
    padding:auto;
    text-align: center;
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-image:linear-gradient(120deg,#b134eb,#5efff7);
    min-height : 160vh;
    } 

	 .metric{
        width:500px;
        position: absolute;
        top: 70%;
        left: 50%;
        background-color:#ffff;
        transform: translate(-50%,-50%);
        padding: 30px;
        border-radius: 10px;
        box-shadow: 1px 1px 20px #ee5253;
    } 
    h1{
        font-size: 30px;
        font-weight: 600;
    }
    .text{
        text-align: center;
        margin:auto;
        font-size: 20px;
        font-style: inherit;
        font-weight: bolder;

    }
    .text-gender{
        text-align:center;
        margin:auto;
        font-size: 20px;
        font-style: inherit;
    }
    #age, #gender, #height, #weight{
        color:aqua;
        text-align: left;
        font-size: 20px;
        font-weight: 200;
        outline: none;
        border: none;
        background: none;
        border-bottom: 1px solid #341f97;
        width: 200px;
    }
    #male,#female{
        outline: none;
        border: none;
        background: none;
    }
    #age:focus, #gender:focus, #height:focus, #weight:focus{
        border-bottom: 2px solid #341f97;
        width: 300px;
        transition: 0.5s;
    }
    #male:focus,#female:focus{
        font-weight: bold;
        transition: 0.5s;
    }
    #button{
        font-family: inherit;
        margin-top: 10px;
        border: none;
        color:#ffff;
        background-image:  linear-gradient(60deg,#eb8334,#fcff5e);
        width: 150px;
        padding: 10px;
        border-radius: 30px;
        outline: none;
        cursor: pointer;
    }
    #button:hover{
        box-shadow: 1px 1px 10px #341f97;
    } 
  
</style>
<script type="text/javascript">
    function BMI(){
        var h =document.getElementById("height").value;
        var w = document.getElementById("weight").value;
        var bmi = w/(h/100*h/100);
        var bmio=(bmi.toFixed(2));
        document.getElementById('result').innerHTML = " Your BMI is "+ bmio+". Login/Signup our page to get health tips as per your BMI.";
    }
</script>
<body>
    <!-- <div role="navigation">
		<nav class="navbar navbar-light" style="background-color: #e3f2fd;">
 
			<a href="#" class="navbar-brand"><img src="Companylogo1.png"></a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="#">Login</a></li>
					<li><a href="#">New Registration</a></li>
					<li><a href="#">All Users</a></li>
				</ul>
			</div>
		 
        </nav>
	</div> -->
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a href="#" class="navbar-brand"><img src="/static/Companylogo1.png"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
		  <span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
		  <div class="navbar-nav">
			<a class="nav-item nav-link active" href="/welcome">Home <span class="sr-only">(current)</span></a>
			<a class="nav-item nav-link" href="/login">Login</a>
			<a class="nav-item nav-link" href="/register">Register</a>
			<!-- <a class="nav-item nav-link" href="/timer">Timer</a>
			<a class="nav-item nav-link" href="#">Calorie Counter</a> -->
		</div>
		
	  </nav>
	  
	   <h1 style="font-weight: bolder;">WELCOME T0 FITNESS AND NUTRITION!!!</h1>
	  <h1 style="font-weight: bolder;">Enter your correct height(cm) and weight(kg) to find your BMI value</h1>
	<c:choose>
      <c:when test="${mode=='MODE_HOME' }">
	
	  <div class="container">
        <div class="metric">
            <h1>BMI Calculation</h1>
            <p class = "text" >AGE: </p>

            <input type="number" id="age" min="2" max="100" required><br>
            <p class = "text" >GENDER: </p><br>
            <label for="male" class = "text-gender" >MALE</label>
            <input type = "radio" id ="male" name="gender" required>
            <label for="female" class = "text-gender" >FEMALE</label>
            <input type = "radio" id ="female" name="gender" required>
            <p class="text">HEIGHT(cm): </p>
            <input type = "number" id ="height" required>
            <p class = "text">WEIGHT(kg): </p>
            <input type = "number" id ="weight" required>
            <br>
            <p id="result"></p>
            <button id="button" onClick="BMI()">Result</button>
            
        </div> 
</div>
</c:when>
</c:choose>

    
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>