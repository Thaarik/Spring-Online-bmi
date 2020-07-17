<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta http-equiv="Pragma" content="no-cache">
            <meta http-equiv="Cache-Control" content="no-cache">
            <meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
            <meta charset="ISO-8859-1">
            <title>OnlineFitness</title>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        </head>
        <style media="screen">
                body {
                margin: 0;
                padding: auto;
                text-align: center;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background-image: linear-gradient(120deg, #b134eb, #5efff7);
                min-height: 160vh;
            }
            
            .form-group div {
                margin: auto;
            }
            
            #button {
                font-family: inherit;
                margin-top: 10px;
                border: none;
                color: #ffff;
                background-image: linear-gradient(60deg, #eb8334, #fcff5e);
                width: 150px;
                padding: 10px;
                border-radius: 30px;
                outline: none;
                cursor: pointer;
            }
            
            #button:hover {
                box-shadow: 1px 1px 10px #341f97;
        </style>

        <body>
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
                        <!--  <a class="nav-item nav-link" href="/timer">Timer</a>-->
                        <!-- <a class="nav-item nav-link" href="#">Calorie Counter</a> -->
                    </div>
                </div>
            </nav>


            <c:choose>
                <c:when test="${mode=='MODE_REGISTER' }">
                    <div class="container text-center">
                        <h2 style: "font-weight: bolder;"> Registration</h2>
                        <hr>
                        <form class="form-horizontal" method="POST" action="save-user">
                            <input type="hidden" name="id" value="${user.id }" />
                            <div class="form-group">
                                <label class="control-label col-md-3"><h3 style:"font-weight: bolder;">Username</h3></label>
                                <div class="col-12">
                                    <input type="text" class="form-control" name="username" value="${user.username }" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3"><h3 style:"font-weight: bolder;">First Name</h3></label>
                                <div class="col-12">
                                    <input type="text" class="form-control" name="firstname" value="${user.firstname }" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3"><h3 style:"font-weight: bolder;">Last Name</h3></label>
                                <div class="col-12">
                                    <input type="text" class="form-control" name="lastname" value="${user.lastname }" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3"><h3 style="font-weight: bolder;">Age </h3></label>
                                <div class="col-12">
                                    <input type="text" class="form-control" name="age" value="${user.age }" required/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3"><h3 style="font-weight: bolder;">Gender</h3> </label>
                                <div class="col-6">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="gender" id="male" value="Male" required>
                                        <label class="form-check-label" for="Male"><h3 style="font-weight: bolder;">Male</h3></label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="gender" id="Female" value="Female" required>
                                        <label class="form-check-label" for="Female"><h3 style="font-weight: bolder;">Female</h3></label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3"><h3 style="font-weight: bolder;">Password</h3></label>
                                <div class="col-12">
                                    <input type="password" class="form-control" name="password" value="${user.password }" required/>
                                </div>
                            </div>
                            <div class="form-group ">
                                <input type="submit" class="btn btn-primary" value="Register" id="button" />
                            </div>
                        </form>
                    </div>



                </c:when>


                <c:when test="${mode=='MODE_LOGIN' }">
                    <div class="container text-center">
                        <h2 style="font-weight: bolder;">User Login</h2>
                        <hr>
                        <form class="form-horizontal" method="POST" action="/login-user">
                            <c:if test="${not empty error }">
                                <div class="alert alert-danger">
                                    <c:out value="${error }"></c:out>
                                </div>
                            </c:if>
                            <div class="form-group">
                                <label class="control-label col-md-3"><h3 style="font-weight: bolder;">Username</h3></label>
                                <div class="col-md-7">
                                    <input type="text" class="form-control" name="username" value="${user.username }" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3"><h3 style="font-weight: bolder;">Password</h3></label>
                                <div class="col-md-7">
                                    <input type="password" class="form-control" name="password" value="${user.password }" />
                                </div>
                            </div>
                            <div class="form-group ">
                                <input type="submit" class="btn btn-primary" value="Login" id="button" />
                            </div>
                        </form>
                    </div>
                </c:when>
            </c:choose>
        </body>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        </html>