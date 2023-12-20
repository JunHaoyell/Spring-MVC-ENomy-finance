<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

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

<%@ page isELIgnored="false"%>
<head>
<title>Save and Invest Plan</title>

<style type="text/css">
nav>div a.nav-item.nav-link, nav>div a.nav-item.nav-link.active {
	border: none;
	padding: 18px 25px;
	color: #fff;
	background: #272e38;
	border-radius: 0;
}

.tab-content {
	background: #fdfdfd;
	line-height: 25px;
	border: 1px solid #ddd;
	border-top: 5px solid #e74c3c;
	border-bottom: 5px solid #e74c3c;
	padding: 30px 25px;
}

nav>div a.nav-item.nav-link:hover, nav>div a.nav-item.nav-link:focus {
	border: none;
	background: #e74c3c;
	color: #fff;
	border-radius: 0;
	transition: background 0.20s linear;
}
</style>
</head>
<body>

	<div class="container-fluid">

		<%@ include file="header.jsp"%>

</div>
	<div class="container">
		<div class="row">

			<h3 class="text-center">Save and Investment Plan</h3>
			<br />
			
			<div class="row">
			
			<div class="col-xs-6 ">
			
			<form:form action="save_invest_plan" method="post">
			
				<label>Year: </label>
				<select name="year">
					<option value="1">1 Year Plan</option>
					<option value="2">2 Year Plan</option>
					<option value="3">3 Year Plan</option>
					<option value="4">4 Year Plan</option>
					<option value="5">5 Year Plan</option>
					<option value="6">6 Year Plan</option>
					<option value="7">7 Year Plan</option>
					<option value="8">8 Year Plan</option>
					<option value="9">9 Year Plan</option>
					<option value="10">10 Year Plan</option>
					
					
				</select>
				<br>
				
				<label>Investment Type: </label>
				<select name="investment_type">
					<option value="1">Basic Savings Plan</option>
					<option value="2">Savings Plan Plus</option>
					<option value="3">Managed Stock Investments</option>
				</select>
				
				<br>
				
				
				<label>Monthly Amount To Be Invested: </label>
				<input type="text" name="month_amount" placeholder="Enter Monthly Amount" disabled="true">
				<br>
				
				<input type="submit" id="submit" value="Calculate">
			</form:form>
			
			</div>
			
			<div class="col-xs-6">
			
			<c:if test="${not empty invest_result}">
			
			<h3> Investment Results For ${year} Year:</h3>
			
			
			
			<p> Predicted returns for ${year} year: ${min_predict_returns}% to ${max_predict_returns}%. </p>
			<p> Estimated tax: ${taxes}%. </p>
			<p> RBSX group fees per month: ${fees}%.</p>
							
			</c:if>
			
			</div>

	
		
		</div>
		</div>
		
		
		<br/><br/>

			<!--  Add Tab  -->

			<div class="row">
				<div class="col-xs-12 ">
					<nav>
					<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
						<a class="nav-item nav-link active" id="nav-home-tab"
							data-toggle="tab" href="#nav-home" role="tab"
							aria-controls="nav-home" aria-selected="true">Basic Savings
							Plan</a> <a class="nav-item nav-link" id="nav-profile-tab"
							data-toggle="tab" href="#nav-profile" role="tab"
							aria-controls="nav-profile" aria-selected="false">Savings
							Plan Plus</a> <a class="nav-item nav-link" id="nav-contact-tab"
							data-toggle="tab" href="#nav-contact" role="tab"
							aria-controls="nav-contact" aria-selected="false">Managed
							Stock Investments</a>

					</div>
					</nav>
					<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
						<div class="tab-pane active" id="nav-home"
							role="tabpanel" aria-labelledby="nav-home-tab">

							<p>Maximum investment per year: 20 000 </p>
							<p>Minimum monthly investment: 50 </p>
							<p> Minimum initial investment lump sum: N/A</p>
							<p> Predicted returns per year: 1.2% to 2.4%. </p>
							<p> Estimated tax: 0%. </p>
							<p> RBSX group fees per month: 0.25%.</p>
						</div>
						<div class="tab-pane fade" id="nav-profile" role="tabpanel"
							aria-labelledby="nav-profile-tab">
							
									<p>Maximum investment per year: 30 000 </p>
							<p>Minimum monthly investment: 50 </p>
							<p> Minimum initial investment lump sum: 300</p>
							<p> Predicted returns per year: 3% to 5.5% </p>
							<p> Estimated tax:  10% on profits above 12 000. </p>
							<p> RBSX group fees per month: 0.3%.</p>
							
							
							</div>
						<div class="tab-pane fade" id="nav-contact" role="tabpanel"
							aria-labelledby="nav-contact-tab">
							
									<p>Maximum investment per year: Unlimited </p>
							<p>Minimum monthly investment: 150 </p>
							<p> Minimum initial investment lump sum: 1000</p>
							<p> Predicted returns per year: 4% to 23%.
							 </p>
							<p> Estimated tax: 
							10% on profits above 12 000
							20% on profits above 40 000.
							 </p>
							<p> RBSX group fees per month: 1.3%.</p>
							
							</div>

					</div>

				</div>
			</div>
		</div>
	</div>


	<!--  End  -->




	</div>


	<%@ include file="footer.jsp"%>


	</div>
</body>
</html>