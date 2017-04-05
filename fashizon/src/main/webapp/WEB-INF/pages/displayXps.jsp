<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="links.jsp" %>
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


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
<body background="resources/images/l1.jpg">

<video autoplay loop muted poster="clothing.jpg" id="bgvid">
    <source src="resources/images/video4.mp4" type="video/mp4">
    </video>
    
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
  
  <div class="navbar-header">
      <a class="navbar-brand" href="#"><b>FASHIZON</b></a>
       <img class="img-circle" src="resources/images/g.gif" width="60" height="60">
    </div>
   
    <ul class="nav navbar-nav">

      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><img class="img-circle" src="resources/images/user/${userid}.jpg" height="30" width="30"/> WELCOME ${username}<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="#">Edit Profile</a></li>
          <li><a href="#">Change Password</a></li>
          <li><a href="j_spring_security_logout"">Logout</a></li>
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
	<li><a href="reqAddProdSuppForm">STATUS</a></li>
	</ul>
	</li> 
     </ul>
     
    <ul class="nav navbar-nav navbar-right">
    <li class="active"><a href="home">HOME</a></li>
     <li><a href="home">CONTACT-US</a></li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">ABOUT US<span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="#">ECONOMIC IMPACT</a></li>
<li><a href="#">IN THE COMMUNITY</a></li>
<li><a href="#">WORKING AT FASHIZON</a></li>
<li><a href="#">OPPURTUNITIES</a></li>
</ul>
  

    
      
 </ul>
  </div>
  
</nav>
<br><br><br>

<div class="container">
<table border ="1" class="table table-stripped fixed_headers" style="font-weight:bold" >
<h3><h align="left">PRODUCTS-SUPPLIERS-XMAP</h></h3>
<%-- ${xpsdata} --%>
<br>
<thead>
<tr style="background:rgba(60,60,90,1);color:#29f1f4;table-layout:fixed;">
<th style="text-align:center"><h4>PRODUCT-ID</h4></th>
<th style="text-align:center"><h4>SUPPLIER-ID</h4></th>
<th style="text-align:center"><h4>XPS-ID</h4></th>
<th style="text-align:center"><h4>PRICE</h4></th>
<th style="text-align:center"><h4>STOCK</h4></th>
<th style="text-align:center"><h4>IS-AVAILABLE</h4></th>
<th style="text-align:center"><h4>MANAGE</h4></th>
</thead>


<tbody>
<c:forEach var="xps" items="${xpsdata}">
<tr style="text-align:center;background:rgba(80,70,30,0.4)">
<td style="vertical-align: middle;font-weight:bold;color:#29f1f4"><img style="border-radius:11px" src="resources/images/products/${xps.productid}.jpg" height="200" width="280"/>${xps.productid}</td>
<td  style="vertical-align: middle;font-weight:bold;color:#29f1f4"><img style="border-radius:11px" src="resources/images/courosel/suppliers/${xps.supplierid}.jpg" height="200" width="260" >${xps.supplierid}</td>
 <td style="vertical-align: middle;font-weight:bold;color:yellow"><h4>${xps.psid}</h4></td>
<td style="vertical-align: middle;font-weight:bold;color:yellow"><h4>${xps.productsupplierprice}</h4></td>
<td style="vertical-align: middle;font-weight:bold;color:yellow"><h4>${xps.productsupplierstock}</h4></td>
<td style="vertical-align: middle;font-weight:bold;color:yellow"><h4>${xps.isproductsupplieravailable}</h4></td>
<td style="vertical-align: middle"><a href="reqeditxmap?psid=${xps.psid}"> <span class="glyphicon glyphicon-pencil btn btn-warning btn-large"></span>/ <a href="reqdeletexps?prds=${xps.psid}"> <span class="glyphicon glyphicon-trash btn btn-warning btn-large"></span></a></td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
<br><br><br><br><br><br>
<%@ include file="footer.jsp" %>
</body>

</html>