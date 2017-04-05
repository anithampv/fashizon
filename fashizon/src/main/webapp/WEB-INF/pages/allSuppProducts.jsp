<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="links.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>

$(document).ready(function(){
	var searchCondition='${searchCondition}';
	$('.table').DataTable({
		"lengthMenu" : [[5,10,15,-1],[5,10,15,"All"]],
		"oSearch":{"sSearch":searchCondition}		
	})	
});

</script>
<style>

body { 
    background-size: contain;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    background-size: 100% 100%;    
}

</style>
</head><ul class="nav navbar-nav">

<body background="resources/images/pb.jpg">

<nav class="navbar navbar-inverse navbar-fixed-top">
<div class="container-fluid">

<div class="navbar-header">
      <a class="navbar-brand" href="#"><b>FASHIZON</b></a>
       <img class="img-circle" src="resources/images/g.gif" width="60" height="60">
    </div>
    
 <ul class="nav navbar-nav">
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><img class="img-circle" src="resources/images/user/${userid}.jpg" height="30" width="30"/>WELCOME ${username}<span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="#">EDIT PROFILE</a></li>
<li><a href="#">CHANGE PASSWORD</a></li>
<li><a href="j_spring_security_logout">LOG-OUT</a></li>
</ul>
</li>
</ul> 
      
  <ul class="nav navbar-nav">
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


<ul class="nav navbar-nav navbar-right">
<li><a href="reqForSignupPage"><span class="glyphicon glyphicon-user"></span>SIGN UP</a></li>
<li><a href="reqForLoginPage"><span class="glyphicon glyphicon-heart-empty"></span> LOGIN</a></li>
</ul>


</div>
</nav>
<br><br><br><br>

<div class="container style="style="background:rgba(60,60,90,0)">
<div class="row">
<div class="col-sm-2" style="background-color:transparent; border-style:none" ></div>
<div class="col-sm-5"  style="background-color:transparent; border-style:none;word-wrap: break-word;background:rgba(60,60,90,0);color:black">

<img src="resources/images/products/${prdid}.jpg" height="200" width="200"/><b> ${prdname}
</div>
<div class="col-sm-3"  style="background:rgba(60,60,90,0);color:yellow; border-style:none;vertical-align:middle;word-wrap: break-word" >
<b style="font-size:20px; font-style:bold">
${productname}</b> </div>
<div class="col-sm-2" style="background-color:transparent; border-style:none" ></div>

</div>

<div class="container">
<table border ="0" class="table table-stripped fixed_headers" style="font-weight:bold"  >
<thead>
<tr style="background:rgba(60,60,90,1);color:yellow;table-layout: fixed;">
<th  style="text-align:center">SUPPLIER-NAME</th>
<th  style="text-align:center">IMAGE</th>
<th  style="text-align:center">PRODUCT-SUPPLIER PRICE</th>
<th style="text-align:center">PRODUCT-SUPPLIER STOCK</th>
<th style="text-align:center">ADD TO-CART</th>
</tr>
</thead>

<tbody>
<c:forEach var="prd" items="${allsupp}">
<tr style="text-align:center;background:rgba(90,90,30,0.7)">

<%-- ${prd.productname}   ${prd.suppliername}  ${prd.productsupplierprice}  ${prd.productsupplierstock} --%>

<td style="vertical-align: middle;font-weight:bold;color:yellow">${prd.suppliername}</td>

<td><img src="resources/images/courosel/suppliers/${supplierid}.jpg" height="200" width="200"/></td>

<td style="vertical-align: middle;font-weight:bold;color:yellow">${prd.productsupplierprice}</td>
<c:if test="${prd.productsupplierstock >= 8}">

<td style="vertical-align: middle;font-weight:bold;color:yellow"> ${prd.productsupplierstock}</td>
</c:if>
<c:if test="${prd.productsupplierstock < 8}">

<td style="vertical-align: middle;font-weight:bold;color:yellow">Out of Stock</td>
</c:if>
<c:if test="${prd.productsupplierstock >= 8}">
 <td>
  <form action="reqAddItemToCart/${prd.psid}">
		  <select name="qty" id="qty"  style="color:red">
      	<option value="1" style="color:red">1</option>
      	<option value="2" style="color:red">2</option>
      	<option value="3" style="color:red">3</option>
      	<option value="4" style="color:red">4</option>
      	<option value="5" style="color:red">5</option>
      		
      	</select>
		<button type="submit" class="btn btn-warning btn-large" ng-click="addItemToCart()"> 
         <span class="glyphicon glyphicon-shopping-cart"></span>Add to cart
         </button>  
		  </form>
 </td>
 </c:if>
 
 <c:if test="${prd.productsupplierstock < 8}">
 <td style="font-weight:bold;color:yellow">WILLBE AVAILABLE SOON</td>
 </c:if>
 


</tr>
</c:forEach>
</tbody>


</table>
</div>
</div>
<br><br>
<%@ include file="footer.jsp" %>
</body>
</html>