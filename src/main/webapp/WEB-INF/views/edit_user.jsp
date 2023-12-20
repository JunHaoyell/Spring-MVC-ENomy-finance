<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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

<title>Enomy Finance Apps </title>
</head>
<body>
	<div class="container">
	
		<%@ include file="header.jsp"%>
		
		
		<h2>Edit User Page</h2>
		<form:form action="user_save" method="post" modelAttribute="user">
			<table border="0" cellpadding="5">
				<tr>
					<td>ID: </td>
					<td>${user.id}
						<form:hidden path="id"/>
					</td>
				</tr>			
				<tr>
					<td>Name: </td>
					<td><form:input path="name" disabled="true"/></td>
				</tr>
				<tr>
					<td>User Name: </td>
					<td><form:input path="userName" disabled="true"/></td>
				</tr>	
				<tr>
					<td>Password: </td>
					<td><form:input path="password" disabled="true"/></td>
				</tr>

				<tr>
					<td colspan="2"><input type="submit" value="Update" disabled="true"></td>
				</tr>						
			</table>
		</form:form>
		
			<%@ include file="footer.jsp"%>
		
	</div>
</body>
</html>