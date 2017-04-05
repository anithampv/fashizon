<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="links.jsp" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>

body{
background-size:contain;
background-repeat:no-repeat;
background-attachment:fixed;
background-size:100% 100%;
}

}
#boxshadow {
    position: relative;
    -moz-box-shadow: 1px 2px 4px rgba(0, 0, 0,0.5);
    -webkit-box-shadow: 1px 2px 4px rgba(0, 0, 0, .5);
    box-shadow: 10px 20px 10px rgba(0, 0, 0, .5);
    padding: 1px;
    /* background: white; */
}
#boxshadow img {
    width: 100%;
    border: 1px solid #8a4419;
    border-style: inset;
}


#boxshadow::after {
    content: '';
    position: absolute;
    z-index: -1; /* hide shadow behind image */
    -webkit-box-shadow: 0 15px 20px rgba(0, 0, 0, 0.3);
    -moz-box-shadow: 0 15px 20px rgba(0, 0, 0, 0.3);
    box-shadow: 0 15px 20px rgba(0, 0, 0, 0.3);                
    width: 70%; 
    left: 15%; /* one half of the remaining 30% */
    height: 100px;
    bottom: 0;
}
/* .zoom-effect-container {
    float: left;
    position: relative; 
    width: 300px;
    height: 300px;
    margin: 0 auto;
    overflow: hidden; 
}
 */
.image-card {
 
  top: 0;
  left: 0;
}

.image-card img {
  -webkit-transition: 0.3s ease;
  transition: 0.8s ease;
}

.zoom-effect-container:hover .image-card img {
  -webkit-transform: scale(0.1);
  transform: scale(0.9);
}

.s1{
color:yellow;
}

.s2{
color:black;
}
</style>
</head>
 <c:url value="/resources/images/p3.jpg" var="url"></c:url>
<body background="${url}" >

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
   
   <div class="navbar-header" >
   <c:url value="/resources/images/g.gif" var="url"></c:url>
      <img class="img-circle" src="${url}" width="60" height="60">
      <a class="navbar-brand" href="#"><b>FASHIZON</b></a>
      
    </div>
    <ul class="nav navbar-nav">

      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> <c:url value="/resources/images/user/${userid}.jpg" var="url"></c:url><img class="img-circle" src="${url}" height="30" width="30"/>WELCOME ${username}<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="#">EDIT-PROFILE</a></li>
          <li><a href="#">CHANGE PASSWORD</a></li>
           <c:url value="/j_spring_security_logout" var="url"></c:url>
          <li><a href="${url}">LOGOUT</a></li>
        </ul>
      </li>  
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">PRODUCTS<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqDisplayProductsUser">DISPLAY ALL PRODUCTS</a></li>
          <li><a href="#">DISPLAY WHISLIST</a></li>          
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
     </ul>
     
     
    <ul class="nav navbar-nav navbar-right">
    <li><a href="reqForLoginPage">CONTACT-US</a></li>
     <li><a href="reqForLoginPage">COUSTUMER-SERVICES</a></li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">ABOUT US<span class="caret"></span></a>
<ul class="dropdown-menu">
<li><a href="#">ECONOMIC IMPACT</a></li>
<li><a href="#">IN THE COMMUNITY</a></li>
<li><a href="#">WORKING AT FASHIZON</a></li>
<li><a href="#">OPPURTUNITIES</a></li>
     
    </ul>
    </li>
    </ul>
  </div>
</nav>

<br><br><br>
<%-- ${psdata} --%>
 <c:if test="${cartmessage!=null}">
    <div class="container">
    <br><br>
    <div col-sm-3></div>
    <div col-sm-6>
    <div class="alert alert-danger alert-dismissable fade in" > 
    <a href="#" class="close" data-dismiss="alert" aria-label="close">X</a>
   ${cartmessage}
    </div>
  </div>
  </div>
  </c:if>

 
 
<div class="container-fluid">
<div class="row" >

<c:forEach var="ps" items="${psdata}">
<div class="col-sm-3 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style= "background-color:transparent;border:3px solid green; border-radius:8px; padding:5px; border-style:none; text-align:center; font-size:18px;font-style:bold"> 
	<c:url value="/resources/images/products/${ps.productid}.jpg" var="url"></c:url>
	 <img id="boxshadow" src="${url}" style="width:450px; height:260px;" class="img-rounded"/>
		<b style="color:black"></b>
		 <b style="color:#00ffff">Name:${ps.productname}</b>
		 <br> 
		 <b style="color:#00ffff">Supplier : ${ps.suppliername}
		 <br>
		 <b style="color:#00ffff">Price:${ps.productsupplierprice}
		 </b><br>
		 <c:if test ="${ps.productsupplierstock >= 8}">
		 		<b><b style="color:#00ffff">Stock : ${ps.productsupplierstock}</b>
		  </c:if>  
		   <c:if test="${ps.productsupplierstock < 8}">
		 		<b style="color:yellow"><br>Out of stock</b>
		  </c:if>  
		   <c:if test="${ps.productsupplierstock >= 8}">
		 <br> 
		 <br>
		 
		 <a href="reqAllSuppProducts?pid=${ps.productid}"><b style="color:#33ff66">ALL SUPPLIERS</a></b>
		 
		  <c:url value="/reqAddItemToCart/${ps.psid}" var="url"></c:url>
		 <form action="${url}">
		  <select name="qty" class="s2" id="qty">
      	<option value="1">1</option>
      	<option value="2">2</option>
      	<option value="3">3</option>
      	<option value="4">4</option>
      	<option value="5">5</option>
      		
      	</select>
      	
		<button type="submit" class="btn btn-warning btn-large"> 
         <span class="glyphicon glyphicon-shopping-cart"></span> Add to cart
         </button>  
          
		  </form>
		 </c:if>
		 
		 	
		</div>
		</div>
		
</c:forEach>
		 
		
		 
		  <%-- <br>Stock : ${ps.productsupplierstock}  
		     <a href="reqAddCart"><span class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>		
		</div>
		</div>
		
</c:forEach> --%>


</div> <!--  row closing -->
</div> <!--  container closing -->
<br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>