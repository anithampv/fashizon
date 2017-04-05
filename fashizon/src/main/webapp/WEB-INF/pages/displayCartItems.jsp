<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="links.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
var app = angular.module('myApp', []);

function MyController($scope, $http) {

	  $scope.sortType     = 'name'; // set the default sort type
	  $scope.sortReverse  = false;  // set the default sort order
	  $scope.searchDeviceName   = '';     // set the default search/filter term

        $scope.getCartItems = function() {
                $http({
                        method : 'GET',
                        url : 'getCartItemsData?cartid=${cartid}'
                }).success(function(data, status, headers, config) {
                        $scope.cartitems = data; alert(data);
                }).error(function(data, status, headers, config) {
                        
                });

        };
};

</script>





</head>

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
.s1{
color:white;
}
</style>
</head>

<body background="resources/images/a5.jpg">
<video autoplay loop muted poster="clothing.jpg" id="bgvid">
    <source src="resources/images/video11.mp4" type="video/mp4">
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
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">ORDERS<span class="caret"></span></a>
	     <ul class="dropdown-menu">
	     <c:url value="/reqDisplayOrderHistory?uid=${userid}" var="url"></c:url>
          <li><a href="${url}">ORDER HISTORY</a></li>
          </ul>
          </li>
     
       <c:url value="/reqDisplayCart" var="url"></c:url>
   <li class="dropdown"><a  href="${url}"> CART <span class="caret"></span> <span class="glyphicon glyphicon-shopping-cart"></span> <span class="badge">${cartsize}</span></a>
    <ul class="dropdown-menu">
   <li><a href="#">CART-ITEMS</a></li>          
        </ul>
        </li>
     
    <!--  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">SUPPLIERS<span class="caret"></span></a>
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
      </li>   -->
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">USERS<span class="caret"></span></a>
    <ul class="dropdown-menu">
	<li><a href="reqDisplayUsers">DISPLAY USERS-ROLE</a></li>
	<li><a href="#">STATUS</a></li>
	</ul>
	</li>
      
    </ul>
    
       
     <ul class="nav navbar-nav navbar-right">
<li class="active"><a href="home">HOME</a></li>
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> ABOUT US<span class="caret"> </span></a>
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
 
 <div class="container">
<div class="row" align="left">

 <div class="col-md-2" style=" background-color:transparent; border:none"> 
<c:url value="/reqClearCart/${customerid}" var="url"></c:url>
<a href="${url}" style="color:yellow;" class="btn btn-warning btn-large">CLEAR CART</a>
</div>
 
<div class="col-md-6" style=" background-color:transparent; border:none"></div>

 <div class="col-md-4" align="right" style=" background-color:transparent; border:none"> 
  <c:if test="${cartsize==0}">
  <h4 style="color:pink"><b>NO ITEMS IN CART</h4>
  </c:if>
  <c:if test="${cartsize>=1}">
 <h3 class="s1"><b>ORDER TOTAL : ${grandtotal}</h3>
 <c:url value="/order/${customer.cart.cartid}" var="url"></c:url>
 <a href="${url}" style="color:yellow" class="btn btn-warning btn-large">CHECK OUT</a>
 </c:if>
 <%-- <br>
 <c:url value="/checkout?cartId=${customerid}" var="url"></c:url>
 <a href="${url}" style="color:yellow" class="btn btn-warning btn-large">CHECK OUT</a> --%>
 </div>
 
 

 </div>
 

 </div>
 
 <div class ="container">
 
 	<table border ="0" class="table table-stripped fixed_headers" style="font-weight:bold"  >
<thead>
<tr style="background:rgba(0,100,0,0.9);color:#38e5f4;table-layout: fixed;">
<th style="text-align:center">PRODUCT</th>
<th style="text-align:center">SUPPLIER</th>
<th style="text-align:center">QUANTITY</th>
<th style="text-align:center">PRICE</th>
<th style="text-align:center">ITEMS TOTAL</th>
<th style="text-align:center">OPTIONS</th>
</tr>
</thead>

<tbody>
<c:forEach var="cartitem" items="${cartitems}">
<tr style="text-align:center;background:rgba(0,0,0,0.3)">

<td style="vertical-align: middle;font-weight:bold;color:yellow">
<img style="border-radius:12px" src="resources/images/products/${cartitem.xmap_product_supplier.productid}.jpg" height="150" width="180" /></td>

<td style="vertical-align: middle;font-weight:bold;color:yellow">
<img style="border-radius:15px" src="resources/images/courosel/suppliers/${cartitem.xmap_product_supplier.supplierid}.jpg" height="150" width="180" /></td>

<td style="vertical-align: middle;font-weight:bold;color:yellow">${cartitem.quantity}</td>
<td style="vertical-align: middle;font-weight:bold;color:yellow">${cartitem.xmap_product_supplier.productsupplierprice}</td>
<td style="vertical-align: middle;font-weight:bold;color:yellow">${cartitem.itemstotal}</td>
<td style="vertical-align: middle;"> 
 <c:url value="/reqDeleteCartItem/${cartitem.cartitemid}" var="url"></c:url>
<a href="${url}" style="color:yellow;font-weight:bold" class="btn btn-warning btn-large">DELETE</a>

</td>

</tr>
</c:forEach>
</tbody>


</table>
 
 
 
 </div>

<br><br>
</body>
 
 
 
 

</body>
</html>