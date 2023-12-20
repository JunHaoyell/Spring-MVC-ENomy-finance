<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

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
<link href="/SpringMVC_Enomy_Finance/css/mystyle.css" rel="stylesheet" />

<%@ page isELIgnored="false"%>

</head>
<body>
<%@ include file="header.jsp"%>
	<div class="container-fluid">

		



		<div class="row text-center">

			<h3>Converter Module</h3>
			
			<br><br>

			<form:form action="converter" method="post">
            <label>From Currency:</label><br>
            <select name="fromCurrency">
                <option value="USD">American Dollars (USD)</option>
                <option value="GBP">Pounds Sterling (GBP)</option>
                <option value="EUR">Euro (EUR)</option>
                <option value="BRL">Brazilian Real (BRL)</option>
                <option value="JPY">Japanese Yen (JPY)</option>
                <option value="TRY">Turkish Lira (TRY)</option>
            </select>
            <br><br><br>
            <label>To Currency:</label><br>
            <select name="toCurrency">
                <option value="USD">American Dollars (USD)</option>
                <option value="GBP">Pounds Sterling (GBP)</option>
                <option value="EUR">Euro (EUR)</option>
                <option value="BRL">Brazilian Real (BRL)</option>
                <option value="JPY">Japanese Yen (JPY)</option>
                <option value="TRY">Turkish Lira (TRY)</option>
            </select>
            <br><br><br>
            <label>Amount:</label><br>
            <input type="text" name="amount" placeholder="Add Your Amount">
            <br><br>
            <input type="submit" id="submit" value="Convert">
        </form:form>

        <c:if test="${not empty error}">
            <p style="color: red">${error}</p>
        </c:if>

        <c:if test="${not empty result1}">
            <h1>Result:</h1>
            <h1>${result1}</h1>
            <h3>${fee}</h3> 
        </c:if>

    </div>
<br><br><br>
    <%@ include file="footer.jsp" %>

</div>
</body>
</html>