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
<link href="/SpringMVC_Enomy_Finance/css/mystyle.css" rel="stylesheet" />

<%@ page isELIgnored="false" %>

<!-- Access the Static Resources  using spring Url 
<spring:url value="/css/mystyle.css" var="myCss" />
<link href="${myCss}" rel="stylesheet" /> -->


<!-- 
<spring:url value="/js/custom.js" var="myJS" />
<script src="${myJS}"></script>
-->
<style>
  .bgImg {
  background-image: url("https://cdn.wallpapersafari.com/62/54/8Agb1H.png");
  background-repeat: no-repeat;
  background-position: left;
  background-attachment: scroll;

}
</style>
</head>

<body class="bgImg">

	<!-- Test My JS -->
	<!-- <input type="button" class="button" onclick="sayHello();" value="Click me!">  -->

	<!-- First Container -->
	<div class="container-fluid">
	
	
	<%@ include file="header.jsp"%>
	
		
	
		<div class="row" >

			<div class="col-md-8"></div>

			<div class="col-md-4">

				<h3 class="text-center">Login  Here ! </h3>
				<c:if test="${error_string != null}">

					<div class="alert alert-danger">
						${error_string}
					</div>

				</c:if>

				<c:url var="post_url" value="/login" />
				<form action="${post_url}" method="post">

					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />

					<div class="form-group">

						<label for="username">User Name:</label> <input type="text"
							name="username" id="username" value="" class="form-control"></input>
					</div>

					<div class="form-group">
						<label for="password">Password:</label> <input type="password"
							name="password" id="password" value="" class="form-control"></input>
					</div>

					<input type="submit" name="Login" value="Login"
						class="btn btn-primary"></input>
				</form>
			</div>




		</div>
		
		<br/><br/><br/><br/><br/>
		<%@ include file="footer.jsp"%>
		

	</div>



</body>
</html>
