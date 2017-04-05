<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file="links.jsp" %>
</head>
<body>
<%@ include file="usernavbar.jsp" %>
<br><br><br><br>

<div class="container" style="background-color:#16fced; opacity:0.4; color:black">
 
<form:form  class="form-horizontal" commandName="userObject" method="POST" action="reqEditProfileToDb" enctype="multipart/form-data" >

<form:hidden path="userid"/>

	<div class="form-group"> <label for="password">USER NAME: </label> <form:input path="username" style="background-color:transparent;font-weight:bold"/> </div>
   
   <div class="form-group"> <label for="password">ENTER PASSWORD: </label> <form:input path="password" style="background-color:transparent;font-weight:bold"/> </div>

   <div class="form-group"> <label for="mobileno">ENTER MOBILE NO.: </label><form:input path="mobileno" style="background-color:transparent;font-weight:bold"/> </div>

   <div class="form-group"> <label for="emailid">ENTER EMAIL-ID.: </label> <form:input path="emailid" style="background-color:transparent;font-weight:bold"/> </div>

   <div class="form-group"><label for="address">ENTER ADDRESS: </label>	<form:input path="address" style="background-color:transparent;font-weight:bold"/> </div>

   <div class="form-group"> <label for="city">ENTER CITY: </label> <form:input path="city" style="background-color:transparent;font-weight:bold"/> </div>
   
   <div class="form-group"><label for="state">ENTER STATE: </label>	<form:input path="state" style="background-color:transparent;font-weight:bold"/> </div>

	<b>Select Image</b> : <form:input type="file" path="imagefile"/>
	<br>
<br> <form:button class="btn btn-primary active">EDIT PROFILE</form:button>

</form:form>


  
</div>


<br>
<%@ include file="footer.jsp" %>

</body>
</html>