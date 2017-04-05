<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="links.jsp" %>

<title>Insert title here</title>
<style>

video#bgvid { 
    position: fixed;
    top: 50%;
    left: 50%;
    min-width: 100%;
    min-height: 100%;
    width: auto;
    height: auto;
    z-index: -100;
    -ms-transform: translateX(-50%) translateY(-50%);
    -moz-transform: translateX(-50%) translateY(-50%);
    -webkit-transform: translateX(-50%) translateY(-50%);
    transform: translateX(-50%) translateY(-50%);
    background: url(clothing.jpg) no-repeat;
    background-size: cover; 
}


  </style>

</head>
<body background="resources/images/bb7.jpg"/>

<video autoplay loop muted poster="clothing.jpg" id="bgvid">
  <c:url value="/resources/images/bgvideo/video4.mp4" var="url"></c:url>
    <source src="${url}" type="video/mp4">
    </video>
    
<nav class="navbar navbar-inverse navbar-fixed-top">
<div class="container-fluid">

<div class="navbar-header">
 <img class="img-circle" src="resources/images/g.gif" width="60" height="60">
      <a class="navbar-brand" href="#"><b>FASHIZON</b></a>
    </div>
    
    <ul class="nav navbar-nav">
    
    <li class="dropdown" > <a class="dropdown-toggle" data-toggle="dropdown" href="#">
   <c:url value="/resources/images/user/ADM00002.jpg" var="url"></c:url> <img class="img-circle" src="${url}" height="30" width="30"/> WELCOME  ADMIN ${username}<span class="caret"></span></a>
        <ul class="dropdown-menu">
   <li><a href="reqEditProfilePage?uid=${userid}">EDIT PROFILE</a></li>
      <li><a href="#">CHANGE PASSWORD</a></li>
     <li><a href="j_spring_security_logout">LOG OUT</a></li>
   </ul>
  </li>

<!-- <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">PRODUCTS<span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="reqDisplayProductsAdmin">Display All PRODUCTS</a></li>
<li><a href="reqProductForm">Add PRODUCTS</a></li>
</ul>
</li> -->

<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">PRODUCTS<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqDisplayProductsAdmin"><span class="glyphicon glyphicon-list"></span> Display All products</a></li>
          <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModelAddProduct" style="color:black;background-color:transparent;border:0px;font-size:15px">
           <li><a href="reqProductForm"><span class="glyphicon glyphicon-plus"></span>Add Product</a></li>
        </button>
        </ul>
        </li>          
       
  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">SUPPLIERS<span class="caret"></span></a>
    <ul class="dropdown-menu">
	<li><a href="reqDisplaySupplierAdmin">Display All SUPPLIERS</a></li>
	<li><a href="reqSupplierForm">ADD SUPPLIERS</a></li>
	</ul>
	</li>

   <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">PRODUCTS SUPPLIERS<span class="caret"></span></a>
	<ul class="dropdown-menu">
	<li><a href="reqDisplayXps">Display All Suppliers</a></li>
	<li><a href="reqAddProdSuppForm">Add ProductSupplier</a></li>
	</ul>
	</li>


<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">USERS<span class="caret"></span></a>
    <ul class="dropdown-menu">
	<li><a href="reqDisplayUsers">DISPLAY USERS-ROLE</a></li>
	<li><a href="#">STATUS</a></li>
	</ul>
	</li>

</ul>


  <ul class="nav navbar-nav navbar-right">
	<li><a href="home">HOME</a></li>
	<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> ABOUT US<span class="caret"></span></a>
	<ul class="dropdown-menu">
	<li><a href="#">ECONOMIC IMPACT</a></li>
	<li><a href="#">IN THE COMMUNITY</a></li>
	<li><a href="#">WORKING AT FASHIZON</a></li>
	<li><a href="#">OPPURTUNITIES</a></li>
	<li><a href="#">CONTACT-US</a></li>
	</ul>
	</li>
	</ul>
	
	
	</div>

</nav> 
<br>


<br><br>
<hr>
<h3><b>LOGIN SUCCESS ADMIN</b></h3> <!-- <img src="resources/images/Admin.png" width="90" height="90" align="left"/> -->
<br><h1>${userid}</h1>
<br>
<br>
<br>
<br>
<br>
<br><br><br><br><br><br><br><br><br><br><br><br><br>

<%@ include file="footer.jsp" %>
</body>
</html>