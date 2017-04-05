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
    background-opacity:0.2;
    color:white;
   
} 

.s1{
color:black;
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
.zoom-effect-container {
    /* float: left;
    position: relative; 
    width: 300px;
    height: 300px;
    margin: 0 auto;
    overflow: hidden;  */
}
 
.image-card {
 
  top: 0;
  left: 0;
}

.image-card img {
  -webkit-transition: 0.3s ease;
  transition: 0.8s ease;
}

.zoom-effect-container:hover .image-card img {
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
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
<body background="resources/images/p3.jpg">

<video autoplay loop muted poster="clothing.jpg" id="bgvid">
   <c:url value="/resources/images/video12.mp4" var="url"></c:url>
    <source src="${url}" type="video/mp4">
    </video> 
<%@include file="usernavbar.jsp" %>

<br><br><br>

<h3 class="s1">LOGIN SUCCESS USER</h3>
<br>

<div class="container-fluid">/
<div class="row" >

<c:forEach var="ps" items="${psdata}"> 
<div class="col-sm-2 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style= "background-color:transparent;border:3px solid green; border-radius:8px; padding:5px; border-style:none; text-align:center; font-size:18px;font-style:bold"> 
		 <img id="boxshadow" src="resources/images/products/${ps.productid}.jpg" style ="width:500px; height:250px;" class="img-rounded"/>
		<b style="color:black">
		 <br>Name:${ps.productname}
		 <br>Supplier:${ps.suppliername}
		 <br>Price:${ps.productsupplierprice}
		 </b>
</div>
</div>
</c:forEach>
</div>
</div>


<!-- <img src="resources/images/img11.jpg" width="150" height="150" align="left"/> -->
<br>
<br><br><br><br><br><br><br><br><br><br>

<%@ include file="footer.jsp" %>
</body>
</html>