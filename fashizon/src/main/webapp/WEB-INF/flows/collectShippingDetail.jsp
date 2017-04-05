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
<!-- <div class="container-wrapper"> -->
<div class="container">
<div class="page-header">
<!-- <h2>CUSTOMER</h2> -->
<br>

<p class="lead"><b>CUSTOMER DETAILS:</p>
</div>

<form:form commandName="order" class="form-horizontal">

<h4><b>SHIPPING ADDRESS:</h4>

<div class="form-group">
<label for="shippingApartmentNumber">HOUSE NO.  :</label>
<form:textarea rows="6" cols="70"  path="cart.customer.shippingAddress.houseno" id="shippingHouseNumber" style="background-color:transparent"/>
</div>

<div class="form-group">  
<label for="shippingStreet"> STREET NAME: </label> 
<form:textarea rows="6" cols="69" path="cart.customer.shippingAddress.street" id="shippingStreet" style="background-color:transparent" />
</div>

<div class="form-group">
<label for="shippingStreet">AREA  :</label>
<form:textarea rows="6" cols="80" path="cart.customer.shippingAddress.area" id="shippingArea" style="background-color:transparent"/>
</div>


<div class="form-group">
<label for="shippingCity">CITY :</label>
<form:input path="cart.customer.shippingAddress.city" id="shippingCity" style="background-color:transparent" />
</div>

<div class="form-group">
<label for="shippingState">STATE :</label>
<form:input path="cart.customer.shippingAddress.state" id="shippingState" style="background-color:transparent" />
</div>

<div class="form-group">
<label for="shippingCountry">COUNTRY :</label>
<form:input path="cart.customer.shippingAddress.country" id="shippingCountry" style="background-color:transparent"/>
</div>

<div class="form-group">
<label for="shippingZip">ZIPCODE :</label>
<form:input path="cart.customer.shippingAddress.pincode" id="shippingPincode" style="background-color:transparent"/>
</div>

<input type="hidden" name="_flowExecutionKey" />

<br/><br/>

<button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">BACK</button>

<input type="submit" value="Next" class="btn btn-default" name="_eventId_shippingDetailCollected" />

<button class="btn btn-default" name="_eventId_cancel">CANCEL</button>

</form:form>
</div>
</div>

<br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>