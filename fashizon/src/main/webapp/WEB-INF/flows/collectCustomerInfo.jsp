<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="../pages/links.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="resources/images/bb9.jpg">
<%@ include file ="../pages/usernavbar.jsp" %>
<br>
<div class="container-wrapper">
<div class="container">
<div class="page-header">
<!-- <h2>CUSTOMER</h2> -->

<br>
<p class="lead"><b>CUSTOMER DETAILS:</p>
</div>

<form:form commandName="order" class="form-horizontal">

<h3><b>BASIC INFORMATION:</h3>
	
 <div class="form-group">
<label for="name">FIRST NAME:</label>
<form:input path="cart.customer.custname" id="custname" style="background-color:transparent" />        <!--class="form-Control"  -->
</div>


<div class="form-group">
<label for="email">EMAIL-ID :</label>
<form:input path="cart.customer.custemailid" id="custemailid" style="background-color:transparent" />
</div>

<div class="form-group">
<label for="phone">CONTACT NUMBER:</label>
<form:input path="cart.customer.custmobileno" id="custmobileno" style="background-color:transparent" />
</div>

<br/>

<h3>BILLING ADDRESS:</h3>

 <div class="form-group">
<label for="billingStreet">STREET NAME:</label>
<form:textarea rows="6" cols="66" path="cart.customer.billingAddress.street" id="billingStreet" style="background-color:transparent" />
</div>


<div class="form-group">
<label for="billingApartmentNumber">HOUSE NO.   :</label>
<form:textarea rows="6" cols="70" path="cart.customer.billingAddress.houseno" id="billingHouseno" style="background-color:transparent"  />
</div>

<div class="form-group">
<label for="billingApartmentNumber">AREA  :</label>
<form:textarea rows="6" cols="80" path="cart.customer.billingAddress.area" id="billingArea" style="background-color:transparent"/>
</div>

<div class="form-group">
<label for="billingCity">CITY :</label>
<form:input path="cart.customer.billingAddress.city" id="billingCity" style="background-color:transparent" />
</div>

<div class="form-group">
<label for="billingState">STATE :</label>
<form:input path="cart.customer.billingAddress.state" id="billingState" style="background-color:transparent"  />
</div>

<div class="form-group">
<label for="billingCountry">COUNTRY :</label>
<form:input path="cart.customer.billingAddress.country" id="billingCountry" style="background-color:transparent" class="form-Control" />
</div>

<div class="form-group">
<label for="billingZip">ZIPCODE :</label>
<form:input path="cart.customer.billingAddress.pincode" id="billingPincode" style="background-color:transparent" class="form-Control" />
</div> 

<input type="hidden" name="_flowExecutionKey" />

<br/><br/>

<input type="submit" value="Next" class="btn btn-default" name="_eventId_customerInfoCollected" />

<button class="btn btn-default" name="_eventId_cancel">CANCEL</button>

</form:form>
</div>
</div>

<br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>