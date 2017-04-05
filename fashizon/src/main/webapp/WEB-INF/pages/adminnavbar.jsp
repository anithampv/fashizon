<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="links.jsp" %>
<title>Insert title here</title>
</head>
<body>

<nav class="container navbar navbar-inverse  navbar-fixed-top" style="opacity:0.7;margin-bottom:0;">
  <div class="container-fluid">
  <div class="navbar-header">
 <img class="img-circle" src="resources/images/xx.jpg" width="60" height="60">
      <a class="navbar-brand" href="#"><b>FASHIZON</b></a>
      </div>
      
    <div style="style="vertical-align: middle">
    <ul class="nav navbar-nav" >

      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> <img class="img-circle" src="resources/images/user/${userid}.jpg" height="30" width="30"/> WELCOME ${username}<span class="caret"></span></a>
	     <ul class="dropdown-menu" style="vertical-align: middle">
          <li><a href="reqEditProfilePage">Edit Profile</a></li>
          <li><a href="#">Change Password</a></li>
          <li><a href="j_spring_security_logout">Logout</a></li>
        </ul>
      </li>  
  
      <li class="dropdown" ><a class="dropdown-toggle" data-toggle="dropdown" href="#" >Products<span class="caret" style="vertical-align: middle"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqDisplayProductsAdmin"><span class="glyphicon glyphicon-list"></span> Display All products</a></li>
         <!--  <li><a href="reqProductForm">Add Product</a></li>    -->
          
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModelAddProduct" style="color:black;background-color:transparent;border:0px;font-size:15px">
        <span class="glyphicon glyphicon-plus"></span>   Add Product</button>          
                 
        </ul>
      </li> 
      
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Suppliers<span class="caret"></span></a>
	    <ul class="dropdown-menu">
          <li><a href="reqDisplaySuppliers">Display All suppliers</a></li>
          <li><a href="reqAddSupplierForm">Add Supplier</a></li>          
        </ul>
      </li>  
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">ProductSupplier<span class="caret"></span></a>
	    <ul class="dropdown-menu">
            <li><a href="reqDisplayXps">Display All ProductSuppliers</a></li>
            <li><a href="reqAddProdSuppForm">Add ProductSupplier</a></li>          
        </ul>
      </li>  
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">USERS<span class="caret"></span></a>
    <ul class="dropdown-menu">
	<li><a href="reqDisplayXps">DISPLAY USERS-ROLE</a></li>
	<li><a href="reqAddProdSuppForm">STATUS</a></li>
	</ul>
	</li>
     
     
     </ul>
    
    <ul class="nav navbar-nav navbar-right">
    <li class="active"><a href="home">HOME</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">ABOUT US<span class="caret"></span></a>
      <ul class="dropdown-menu">
<li><a href="#">ECONOMIC IMPACT</a></li>
<li><a href="#">IN THE COMMUNITY</a></li>
<li><a href="#">WORKING AT FASHIZON</a></li>
<li><a href="#">OPPURTUNITIES</a></li>
<li><a href="#">CONTACT US</a></li>
</ul>
      
 </ul>
    </div>
  </div>
</nav>
<br><br>



</body>
</html>