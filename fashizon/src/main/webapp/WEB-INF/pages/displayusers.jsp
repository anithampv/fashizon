<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="links.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
 body { 
    background-size: contain;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    background-size: 100% 100%;  
    background-opacity:0.4;
    color;
   
} 
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
    -webkit-transform: translateX(-70%) translateY(-70%);
    transform: translateX(-50%) translateY(-50%);
    background: url(clothing.jpg) no-repeat;
    background-size: cover; 
}

</style>
</head>

<body background="resources/images/a5.jpg">
<video autoplay loop muted poster="clothing.jpg" id="bgvid">
    <source src="resources/images/video.mp4" type="video/mp4">
    </video>

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
  
  
  <div class="navbar-header" >
      <img class="img-circle" src="resources/images/g.gif" width="60" height="60">
      <a class="navbar-brand" href="#"><b>FASHIZON</b></a>
      </div>
   
    <ul class="nav navbar-nav">

      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><img class="img-circle" src="resources/images/user/${userid}.jpg" height="30" width="30"/>WELCOME ${username}<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="#">YOUR WHISLIST</a></li>
          <li><a href="j_spring_security_logout">Logout</a></li>
        </ul>
      </li>  
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">PRODUCTS<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqDisplayProductsAdmin">Display All products</a></li>
          <li><a href="reqProductForm">Add Product</a></li>          
        </ul>
      </li>  
     
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">SUPPLIERS<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqDisplaySupplierAdmin">Display All suppliers</a></li>
          <li><a href="reqSupplierForm">Add Supplier</a></li>          
        </ul>
      </li>  
     
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">PRODUCT SUPPLIER<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqDisplayXps">Display All ProductSuppliers</a></li>
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
<li class="active"><a href="home">HOME</a></li>
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
 <br><br><br>
 DISPLAY USERS
 <br>
 <div class="container">
 <table border ="0" class="table table-stripped fixed_headers " style="font-weight:bold ">
<thead>
<tr style="background:rgba(60,60,90,1);color:yellow;table-layout: fixed;">
<th style="text-align:center">User Id</th>
<th style="text-align:center">Enabled Status</th>
<th style="text-align:center">Action</th>
</tr>
</thead>

<tbody>
<c:forEach var="user" items="${userdata}">
<tr style="text-align:center;background:rgba(90,90,30,0.7)">
<td style= "vertical-align: middle;font-weight:bold;color:yellow">${user.userid}</td>
<td style="align:center"> 
 	<c:if test="${user.enabled ==true}"><b style="color:yellow "><br>Enabled</b></c:if>
    <c:if test="${user.enabled ==false}"><b style="color:yellow"><br>Disabled</b></c:if>
</td>

<td style="align:center"> 
 	<c:if test="${user.enabled ==true}">
		 		<a href="reqDisableUser?uid=${user.userid}" style="color:white"><br>Disable</a>
	 </c:if>
<c:if test="${user.enabled ==false}">
		 		<a href="reqEnableUser?uid=${user.userid}" style="color:yellow">Enable</a>
	 </c:if>
</td>


</tr>
</c:forEach>
</tbody>


</table>
 </div>


</body>
</html>