<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<html>
<head>
<title>currency converter</title>

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


<%@ page isELIgnored="false"%>
</head>

<body>

	<%@ include file="header.jsp"%>


	<!-- First Container -->
	<div class="container">
		<div>
			<h2 class="text-center">User List</h2>

			<div class="row">

				<div class="col-md-12">
				
				<c:if test="${not empty userlists}">
					
					<table class="table table-striped table-bordered">

						<thead>
							<tr>
								<th>No.</th>
								<th>Full Name</th>
								<th>User Name </th>
								<th>Password</th>
								<th>Actions</th>
							</tr>
						</thead>
						
						<tbody>
						
						<% int i=1; %>
						<c:forEach var="user" items="${userlists}">
						
							<tr>
								<td><%=i %></td>
								<td>${user.name}</td>
								<td>${user.userName}</td>
								<td>${user.password}</td>

								
								<td><a href="user_edit?id=${user.id}">Edit</a> &nbsp;&nbsp;&nbsp;
						<a href="user_delete?id=${user.id}">Delete</a></td>
								
							</tr>
							<% i++; %>
						</c:forEach>

						</tbody>
					</table>
					
					</c:if>
					
				</div>
			</div>
			
			<!--  End User Lists  -->

		</div>
	</div>


	<%@ include file="footer.jsp"%>
	</body>
	</html>