<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="../pages/links.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="resources/images/bb9.jpg">
<%@ include file ="../pages/usernavbar.jsp" %>
<br>
<!-- <div class="container-wrapper"> -->
<div class="container-fluid">
<div class="page-header">
<!-- <h1>ORDER</h1> -->
<br>
<p class="lead"><b>ORDER CONFORMATION</p>
</div>

<div class="container-fluid">

<div class="row">

<form:form commandName="order" class="form-horizontal">

<div class="col-xs-5 col-sm-1 col-md-7 col-xs-offset-0 col-sm-offset-0 col-md-offset-0">

<div class="txt-center">
<h1>RECEIPT</h1>

</div>

<div class="row">
<div class="col-xs-7 col-sm-5 col-md-6">
<address>
<strong>SHIPPING ADDRESS</strong><br/>
${order.cart.customer.shippingAddress.street}
<br/>
${order.cart.customer.shippingAddress.city}, ${order.cart.customer.shippingAddress.state}
<br/>
${order.cart.customer.shippingAddress.country}, ${order.cart.customer.shippingAddress.pincode}
</address>
</div>
<div class="col-xs-3 col-sm-2 col-md-4 text-top">
<h4><b>SHIPPING DATE: <fmt:formatDate type="date" value="${now}" /></h4>
</div>
</div>

<div class="row">
<div class="col-xs-6 col-sm-6 col-md-6">
<address>
<strong>BILLING ADDRESS</strong><br/>
${order.cart.customer.billingAddress.street}
<br/>
${order.cart.customer.billingAddress.city}, ${order.cart.customer.billingAddress.state}
<br/>
${order.cart.customer.billingAddress.country}, ${order.cart.customer.billingAddress.pincode}
</address>
</div>
</div>

<div class="row">
<table class="table table-hover">
<thead>
<tr>
<td><b>PRODUCTS</td>
<td><b>SUPPLIERS</td>
<td><b>QUANTITY</td>
<td class="text-center"><b>PRICE</td>
<td class="text-center"><b>TOTAL</td>
</tr>
</thead>
<tbody>
<c:set var="grandTotal" value="0.0"></c:set>
<c:forEach var="cartItem" items="${order.cart.cartItems}">
<tr>
<c:url value="/resources/images/products/${cartItem.xmap_product_supplier.productid}.jpg" var="url"></c:url>
<td class="col-md-5"><img src="${url}" width="140" height="120" style="border-radius:5px"/>   </td>

<td class="col-md-5"><c:url value="/resources/images/courosel/suppliers/${cartItem.xmap_product_supplier.supplierid}.jpg" var="url"></c:url>
   <img src="${url}" width="140" height="120" style="border-radius:5px"/> 
</td>
<%-- <td class="col-md-9"><em>${cartItem.xmap_product_supplier.productid}</em></td> --%>
<td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
<td class="col-md-1" style="text-align: center">${cartItem.xmap_product_supplier.productsupplierprice}</td>
<td class="col-md-1" style="text-align: center">${cartItem.itemstotal}</td>
<c:set var="grandTotal" value="${grandTotal + cartItem.itemstotal}"></c:set>
</tr>
</c:forEach>

<tr>
<td></td>
<td></td>
<br><br>
<td class="text-left">
<h4><strong>GRAND TOTAL:</strong></h4>
</td>
<br><br>
<td class="text-center text-danger">
<h4><strong>Rs.${grandTotal}</strong></h4>
</td>
</tr>

</tbody>
</table>
</div>


<input type="hidden" name="_flowExecutionKey" />

<br/><br/>

<button class="btn btn-default" name="_eventId_backToCollectShippingDetail">BACK</button>

<input type="submit" value="Submit Order" class="btn btn-default" name="_eventId_orderConfirmed" />

<button class="btn btn-default" name="_eventId_cancel">CANCEL</button>
</div>

</form:form>
</div>
</div>
</div>
<br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>