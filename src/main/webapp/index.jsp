<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<!--  Enable Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title> HOME </title>

<style>
#logo{
width: 200px;
height: 150px;
}
</style>
</head>

<body >
<nav class="navbar navbar-expand-md navbar-light mynav">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			
<div class="collapse navbar-collapse" id="myNavbar">
<img id="logo" alt="Logo" src=".\images\logo.png">
	<h1 style="font-family: cursive;"><span style="color:darkblue;"><b>Enomy Finances</b></span></h1>

		</div>
	</div>
	</div>
</nav>
<div class="container-fluid">

  <div class="row">
    <div class="col-lg-6 p-3 bg-danger text-black">
    <div class="mt-4 p-5 text-black text-center rounded">
    <h1><span style="color:darkblue;"><b>Currency Conversion</b></span></h1> 
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat..</p> 
  </div>
    </div>
    <div class="col-lg-6 p-3 bg-primary text-black">
    <div class="mt-4 p-5 text-black text-center rounded">
    <h1><span style="color:gold;"><b>Savings and Investment plans</b></span></h1> 
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat..</p> 
  </div>
    </div>
  </div>
  <br/><br/>
<a type="button" class="btn btn-success btn-lg" href="login">Login to the system !</a>


</div>

</body>
</html>
