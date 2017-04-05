<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="links.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<h3><b>ADD PRODUCT</h3>
<br>

<form:form action="addProductToDB" commandName="productObject" enctype="multipart/form-data" method="POST">
<br>
<br><b>PRODUCT NAME :<form:input path="productname"/>
<form:errors path="productname" cssStyle="color:red"></form:errors>
<br>
<br><b>PRODUCT DESC</b> :<form:textarea path="productdesc" rows="4" cols="50"/>

<br>
<b >IS-AVAILABLE</b>  :   
<b >TRUE</b> <form:radiobutton path="isproductavailable" value="true" />         
<b >FALSE</b><form:radiobutton path="isproductavailable" value="false" />
<br>
<br>
<b >SELECT IMAGE</b> : <form:input type="file" path="imagefile"/>
<br>
<form:button class="btn btn-primary btn-lg"><b>ADD PRODUCT </form:button>


</form:form>

<br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

<%@ include file="footer.jsp" %>
</body>
</html>


