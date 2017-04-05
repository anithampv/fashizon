<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="../pages/links.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

<body background="resources/images/4.jpg">
<%@ include file ="../pages/usernavbar.jsp" %>
<br><br><br>
<!-- <video autoplay loop muted poster="clothing.jpg" id="bgvid">
    <source src="resources/images/video13.mp4" type="video/mp4">
    </video> -->
<br>
<!-- <div class="container-wrapper"> -->
<div class="container-fluid">
<section>
<!-- <div class="jumbotron"> -->
<div class="container-fluid">
<h3><b>THANK YOU FOR YOUR ORDER!</h3>

<h4 style="color:green"><b>YOUR ORDER WILL BE SHIPPED IN 3-4 BUSSINESS DAYS!</h4>
</div>
</div>
</section>
<br>
<section class="container">
<p><a href="reqDisplayProductsUser"  class="btn btn-default"><h2><b>OK</b></h2></a></p>
</section>
</div>

<br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="footer.jsp"%>
</body>
</html>