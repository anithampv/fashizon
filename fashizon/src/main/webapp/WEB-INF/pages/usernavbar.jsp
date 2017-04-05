
<nav class="navbar navbar-inverse navbar-fixed-top" > <!-- style="opacity:0.7" -->
  <div class="container-fluid">
   <div class="navbar-header" >
      <img class="img-circle" src="resources/images/g.gif" width="60" height="60">
      <a class="navbar-brand" href="#"><b>FASHIZON</b></a>
      </div>
      
    <ul class="nav navbar-nav">
<li class="dropdown">
     <a class="dropdown-toggle" data-toggle="dropdown" href="#"><c:url value="/resources/images/user/${userid}.jpg" var="url"></c:url><img class="img-circle" src="${url}" height="30" width="30"/> WELCOME ${username}<span class="caret"></span></a>
	     <ul class="dropdown-menu">
         <%--  <li><a href="reqEditProfilePage?uid=${userid}">EDIT PROFILE</a></li> --%>
           <li><a href="reqEditProfilePage" > EDIT PROFILE</a></li>
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
   <li class="dropdown"><a href="${url}"> CART <span class="caret"></span> <span class="glyphicon glyphicon-shopping-cart"></span> <span class="badge">${cartsize}</span></a>
       <ul class="dropdown-menu">
   <li><a href="#">CART-ITEMS</a></li>          
        </ul>
        </li>
     </ul>
     
      <ul class="nav navbar-nav navbar-right">
	<li><a href="home">HOME</a></li>
	<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">ABOUT US<span class="caret"></span></a>
	<ul class="dropdown-menu">
	<li><a href="#">ECONOMIC IMPACT</a></li>
	<li><a href="#">IN THE COMMUNITY</a></li>
	<li><a href="#">WORKING AT FASHIZON</a></li>
	<li><a href="#">OPPURTUNITIES</a></li>
	<li><a href="#">CONTACT US</a></li>
	</ul>
	</ul>

<!-- <ul class="nav navbar-nav navbar-right">
<li><a href="reqForSignupPage"><span class="glyphicon glyphicon-user"></span>SIGN UP</a></li>
<li><a href="reqForLoginPage"><span class="glyphicon glyphicon-heart-empty"></span> LOGIN</a></li>
</ul> -->

</div>
</nav>


