<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
</head>
<style media="screen">
   *{
	box-sizing: border-box;
	padding: 0;
	margin: 0;
}

html, body{
	height: 100%;
}

body{
	width: 100%;
	height: 100%;
	padding: 0;
	margin: 0;
	background: linear-gradient(to left top, #0045d6, #00a9f6);
	font-family: 'Poppins', sans-serif;

}

header{
	width: 100%;
	height: 13vh;
	display: flex;
	justify-content: center;
	align-items: center;
	background:linear-gradient(120deg,#eb34c3,#4334eb);
}

.title{
	color:aliceblue;
}

.content{
	height: 60vh;
	width: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	color: #fff;
	font-size: 3rem;
	text-transform: uppercase;
}

.btn{
	padding: 0.8rem 1.7rem;
	background-color: #fff;
	border: none;
	outline: none;
	cursor: pointer;
	border-radius: 4px;
	font-family: 'Poppins', sans-serif;
	font-size: 1.2rem;
	font-weight: 700;
}

.start{
	color: #1f3;
}
.stop{
	color: #E00;
}

#continue, .stop, #start{
	display: none;
}


#seconds{
	width: 250px;
	background: none;
	outline: none;
	border: none;
	border-bottom: 4px solid #fff;
	padding: 1rem;
	font-size: 2rem;
	color: white;
}

#seconds::placeholder{
	color: #ddd;
}
</style>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a href="#" class="navbar-brand"><img src="/static/Companylogo1.png"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
		  <span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
		  <div class="navbar-nav">
			<!--  <a class="nav-item nav-link active" href="/resultpage">Home <span class="sr-only">(current)</span></a>-->
			<a class="nav-item nav-link" href="/logout">Logout</a>
			<!--  <a class="nav-item nav-link" href="/register">New</a>-->
			<a class="nav-item nav-link" href="/timer">Timer</a>
			<a class="nav-item nav-link" href="/caloriecounter">Calorie Counter</a>
		  </div>
		</div>
      </nav>
    <header>
    	<h1 class="title">Use this instant timer for your workout! </h1>
    </header>
    <div class="content">
    	<div class="counter"></div>
    	<input id="seconds" type="number" placeholder="Seconds...">
    	<div class="buttons">
    		<button class="btn start" id="start" value="1" onclick="check(this)">Start</button>
    		<button class="btn start" id="continue" value="1" onclick="check(this)">Continue</button>
    		<button class="btn stop" id="stop" value="0" onclick="check(this)">Stop</button>
    		<button class="btn start" id="submit" onclick="subm()">Submit</button>
    	</div>
    	</div>
<script type="text/javascript">
const counter = document.querySelector('.counter');
const btn = document.querySelector('.buttons');
const secondsInput = document.getElementById('seconds');

var seconds;
var minuts;
var remseconds;
var toCount;

function subm(){
    display("submit", "start");
    seconds = Number(secondsInput.value);
    secondsInput.style.display = "none";
    counting();
}

function display(first, second){
	document.getElementById(first).style.display = "none";
	document.getElementById(second).style.display = "block";
}

function check(stat){
	toCount = stat.value;
	if(stat.id == "start"){
		display("start", "stop");
	}
	else if(stat.id == "stop"){
		display("stop", "continue");
	}
	else{
		display('continue', "stop");
	}
}

function count(){
	if(seconds > 0){
       if(toCount == true){
            seconds--;
            remseconds = seconds % 60;
            minuts = Math.floor(seconds / 60);

            if(remseconds < 10){
       	        remseconds = "0" + remseconds;
            }

            if(minuts < 10){
       	        minuts = "0" + minuts;
            }

            counter.innerHTML = minuts + " : " + remseconds;
       }
	}
	else{
		counter.innerHTML = "Done!";
		btn.style.opacity = '0';
	}
}

function counting(){
	remseconds = seconds % 60;
minuts = Math.floor(seconds / 60);

if(remseconds < 10){
    remseconds = "0" + remseconds;
}

if(minuts < 10){
    minuts = "0" + minuts;
}

counter.innerHTML = minuts + " : " + remseconds;
   setInterval(count, 1000);
}
</script></body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>