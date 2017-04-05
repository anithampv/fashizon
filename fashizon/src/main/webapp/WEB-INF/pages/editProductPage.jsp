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

<div class="navbar-header">
      <a class="navbar-brand" href="#"><b>FASHIZON</b></a>
       <img class="img-circle" src="resources/images/g.gif" width="60" height="60">
    </div>


<div class="navbar-header" >
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><img class="img-circle" src="resources/images/user/${userid}.jpg" height="30" width="30"/>WELCOME ${username}<span class="caret"></span></a>
      <ul class="dropdown-menu">
          <li><a href="#">Edit Profile</a></li>
          <li><a href="#">Change Password</a></li>
          <li><a href="j_spring_security_logout">Logout</a></li>
        </ul>
      </li>  
      
    </div>
    
    

<ul class="nav navbar-nav">
<li><a href="home">HOME</a></li>
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">ABOUT US<span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="#">ECONOMIC IMPACT</a></li>
<li><a href="#">IN THE COMMUNITY</a></li>
<li><a href="#">WORKING AT FASHIZON</a></li>
<li><a href="#">OPPURTUNITIES</a></li>
<li><a href="#">CONTACT-US</a></li>
</ul>
<li><a href="#">CONTACT US</a></li>
</ul>



</div>
</nav>
<br><br><br><br><br>

<h4><b><h align="center">EDIT PRODUCT</h></b></h4>
<br>
<form:form action="reqEditProductToDb" commandName="productObj" enctype="multipart/form-data" method="POST">

<h4><b>PRODUCT ID:</h4><form:hidden path="productid"/>
<br><h4><b>PRODUCT NAME:</h4><form:input path="productname"/>

<h4><b>PRODUCT DESC:</h4><form:input path="productdesc"/>


<h3>Is Available:</h3>
<br>   
TRUE<form:radiobutton path="isproductavailable" value="true" />         
FALSE<form:radiobutton path="isproductavailable" value="false" />
<br>
<br>
<b></>SELECT IMAGE :</b> <form:input type="file" path="imagefile"/>
<br>
<form:button class="btn btn-primary btn-lg">EDIT-PRODUCT</form:button>


</form:form>

<br><br>
<%@ include file="footer.jsp" %>
</body>
</html>