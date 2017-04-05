
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ include file="links.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="resources/images/background/bg${imagenum}.jpg">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
  
  <div class="navbar-header">
      <a class="navbar-brand" href="#"><b>FASHIZON</b></a>
       <img class="img-circle" src="resources/images/g.gif" width="60" height="60">
    </div>
   
    <ul class="nav navbar-nav">
   <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><img class="img-circle" src="resources/images/user/${userid}.jpg" height="30" width="30"/>WELCOME ${username}<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="#">Edit Profile</a></li>
          <li><a href="#">Change Password</a></li>
          <li><a href="j_spring_security_logout">Logout</a></li>
        </ul>
      </li>  
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">PRODUCTS<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="">Display All products</a></li>
          <li><a href="reqProductForm">Add Product</a></li>          
        </ul>
      </li>  
     
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">SUPPLIERS<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="#">Display All suppliers</a></li>
          <li><a href="#">Add Supplier</a></li>          
        </ul>
      </li>  
     
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">PRODUCT SUPPLIER<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="#">Display All ProductSuppliers</a></li>
          <li><a href="#">Add ProductSupplier</a></li>          
        </ul>
      </li>  
     
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">USERS<span class="caret"></span></a>
    <ul class="dropdown-menu">
	<li><a href="reqDisplayUsers">DISPLAY USERS-ROLE</a></li>
	<li><a href="reqAddProdSuppForm">STATUS</a></li>
	</ul>
	</li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="reqForSignupPage">About Us</a></li>
      <li><a href="reqForLoginPage">  Contact Us</a></li>
    </ul>
  </div>
</nav>
<h3>ADD SUPPLIER</h3>
<br>
<form:form action="addSupplierToDB" commandName="supplierObject" enctype="multipart/form-data" method="POST">

<br><b>SUPPLIER  Name</b> : <form:input path="suppliername"/>
<br>

<br><b>SUPPLIER Desc</b> : <form:input path="supplierdesc"/>

<br>
<b>IS SUPPLIER AVAILAVBLE</b>  :   
<b>True</b> <form:radiobutton path="issupplieravailable" value="true" />         
<b>False</b><form:radiobutton path="issupplieravailable" value="false" />
<br>
<br>
<b>Select Image</b> : <form:input type="file" path="imagefile"/>
<br>
<form:button class="btn btn-primary btn-lg">ADD SUPPLIER</form:button>



</form:form>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>