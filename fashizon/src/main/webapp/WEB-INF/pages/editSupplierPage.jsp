<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="links.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body  background="resources/images/pb.jpg">
<nav class="navbar navbar-inverse navbar-fixed-top">
<div class="container-fluid" style="background-color:black">

 <div class="navbar-header" >
      <img class="img-circle" src="resources/images/g.gif" width="60" height="60">
      <a class="navbar-brand" href="#"><b>FASHIZON</b></a>
      
    </div>

<ul class="nav navbar-nav">
<li><a href="home">HOME</a></li>
<li><a href="#">ABOUT US</a></li>
<li><a href="#">CONTACT US</a></li>
</ul>

<ul class="nav navbar-nav navbar-right">
<li><a href="reqForSignupPage"><span class="glyphicon glyphicon-user"></span>SIGN UP</a></li>
<li><a href="reqForLoginPage"><span class="glyphicon glyphicon-heart-empty"></span> LOGIN</a></li>
</ul>


</div>
</nav>
<br><br><br><br><br>

<h4><b><h align="center">EDIT SUPPLIERS</h></b></h4>
<br>
<form:form action="reqEditSupplierToDb" commandName="supplierObj" enctype="multipart/form-data" method="POST">

<h4><b>SUPPLIER ID:</h4><form:hidden path="supplierid"/>
<br><h4><b>SUPPLIER NAME:</h4><form:input path="suppliername"/>

<h4><b>SUPPLIER DESC:</h4><form:input path="supplierdesc"/>


<h3>Is Available:</h3>
<br>   
TRUE<form:radiobutton path="issupplieravailable" value="true" />         
FALSE<form:radiobutton path="issupplieravailable" value="false" />
<br>
<br>
<b></>SELECT IMAGE :</b> <form:input type="file" path="imagefile"/>
<br>
<form:button class="btn btn-primary btn-lg">EDIT-SUPPLIER</form:button>


</form:form>

<br><br>
<%@ include file="footer.jsp" %>

</body>
</html>