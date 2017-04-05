<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
  <%@ include file="links.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
.s1{
color: white;
}

 
 body { 
    background-size: contain;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    background-size: 100% 100%;  
    background-opacity:0.4;
    color;
   
} 
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="resources/images/p.jpg"/>


<nav class="navbar navbar-inverse navbar-fixed-top">
<div class="container">

<div class="navbar-header">
      <a class="navbar-brand" href="#"><b>FASHIZON</b></a>
    </div>

<ul class="nav navbar-nav">
<li class="active"><a href="home">HOME</a></li>
<li><a href="#">ABOUT US</a></li>
<li><a href="#">CONTACT US</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
<li><a href="reqForSignupPage"><span class="glyphicon glyphicon-user"></span>SIGN UP</a></li>
<li><a href="reqForLoginPage"><span class="glyphicon glyphicon-heart-empty"></span> LOGIN</a></li>
</ul>
</div>
</nav>

<br><br><br><br>

<h4 class="s1">LOGIN PAGE</h4><img src="resources/images/logo.jpg" width="60" height="50" align="top"/>
<br>

${message}
<br>
<hr>
<h3 class="s1">ENTER LOGIN DETAILS</h3>

<form:form commandName="userObject" action="reqLoginCheck">

<b><a class="s1">Enter User-ID</a><b> <form:input path="userid" placeholder="UserID"/>
<br>
<br>
<b><a class="s1">Enter Password</a><b><form:password path="password" placeholder="abcd"/>
<br>
<br>
<form:button class="btn btn-primary btn-lg"><a class="s1">LOGIN</a></form:button>

</form:form>


<style>
form {
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 20%;
    border-radius: 30%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
<body>

login form>
<br><br>
<form action="/action_page.php">
  <div class="imgcontainer">
    <img src="img_avatar2.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label><b class="s1">Username</b></label>
    <input path="userid" placeholder="Enter UserID" required>

    <label><b class="s1">Password</b></label>
    <input path="password" placeholder="Enter Password"  required>
        
    <button type="submit">Login</button>
    <input type="checkbox" checked="checked"> Remember me
  </div>
<hr>
  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>

</body>



</body>
</html> --%>

























 <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <%@ include file="links.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <%@ include file="links.jsp" %>
<title>Insert title here</title>
<style>

.s1{
color:black;
}

 
 body { 
    background-size: contain;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    background-size: 100% 100%;  
    background-opacity:0.4;
    color:black;
   
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
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
}




form {
    border: 3px transparent; /* solid #f1f1f1 */;
    height:600px;
    color:black;
}

input[type=text], input[type=password] {
    width: 50%;
    color:black;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color:black;
    padding: 12px 18px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 30%;
}


  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width:100%;
      height:600px;
      margin:;
  }
  .carousel-control.left, .carousel-control.right {
  background-image: none; opacity:0.6;
}
.carousel{
	margin-top:0;
}
.navbar {
    margin-bottom: 0;
    
}

.cancelbtn {
    width:auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align:left;
    margin: ;
}

img.avatar {
    width: 20%;
    border-radius: 15%;
}

.container {
    padding: 5px;
}

span.psw {
    float: right;
    padding-top: 10px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 80%;
    }

</style>
</head>

<body background="resources/images/bb9.jpg"/>


<nav class="navbar navbar-inverse navbar-fixed-top" style="background-color:black;border:0px">
<div class="container-fluid">

<div class="navbar-header">
      <a class="navbar-brand" href="#"><b>FASHIZON</b></a>
      <img class="img-circle" src="resources/images/g.gif" width="60" height="60">
    </div>

<ul class="nav navbar-nav">
<li><a href="home">HOME</a></li>
<li><a href="#">ABOUT US</a></li>
<li><a href="#">CONTACT US</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
<li><a href="reqForSignupPage"><span class="glyphicon glyphicon-user"></span>SIGN UP</a></li>
<li><a href="reqspringloginpage"><span class="glyphicon glyphicon-heart-empty"></span> SPRING LOGIN-PAGE</a></li>
<li><a href="reqForLoginPage"><span class="glyphicon glyphicon-heart-empty"></span> LOGIN</a></li>
</ul>
</div>
</nav>

<br><br><br>




<div class="container-fluid" align="left">
  <br>
  <div class="col-sm-6"> 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators" >
      <li data-target="#myCarousel" data-slide-to="0" class="active" ></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
       <li data-target="#myCarousel" data-slide-to="5"></li>
        <li data-target="#myCarousel" data-slide-to="6"></li>
    </ol>
    

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/courosel/0a.jpg" alt="LIVERY WESTERN DRESS" width="200px" height="200px">
         <div class="carousel-caption">
          <h3>TRADITIONAL WEAR</h3>
        </div>
      </div>
      

      <div class="item">
        <img src="resources/images/courosel/a4.jpg" alt="TRENDY-ETHINIC WEAR" width="200px" height="200px">
        <div class="carousel-caption">
        <h3>ETHINIC-DRESSES</h3>
          <p>LIVERY ETHINIC-WEAR DRESSES FOR TRENDING OUTLOOK.</p>
        </div>
      </div>
    
      <div class="item">
        <img src="resources/images/courosel/n1.jpg" alt="FASHIONLINE BLACK-DRESS" width="200px" height="200px">
        <div class="carousel-caption">
        <h3>WESTERN DRESSES</h3>
          <p>LIVERY WESTERN DRESSES FOR TRENDING OUTLOOK.</p>
        </div>
      </div>

      <div class="item">
        <img src="resources/images/courosel/bg1.jpg" alt="COCKTAIL-RED GORGEOUS OUTLOOK" width="200px" height="200px">
        <div class="carousel-caption">
        <h3>COKTAIL-RED GOGEOUS OUTLOOKS</h3>
          <p>FRANCLO-WESTERN DRESSES.</p>
        </div>
      </div>
      
      <div class="item">
        <img src="resources/images/courosel/d5.jpg" alt="FABULOUS WEDDING-DRESSES" width="200px" height="200px">
        <div class="carousel-caption">
        <h3>WEDDING OUTFIT DRESSES</h3>
          <p>WEDDING-WEAR DRESSES FOR SPECIAL OCCASIONS.</p>
        </div>
      </div>
      
      <div class="item">
        <img src="resources/images/courosel/5.jpg" alt="FABULOUS WEDDING-DRESSES" width="200px" height="200px">
        <div class="carousel-caption">
        <h3>WEDDING OUTFIT DRESSES</h3>
          <p>WEDDING-WEAR DRESSES FOR SPECIAL OCCASIONS.</p>
        </div>
      </div>
      
      <div class="item">
        <img src="resources/images/courosel/o4.jpg" alt="FABULOUS WEDDING-DRESSES" width="200px" height="200px">
        <div class="carousel-caption">
        <h3>WEDDING OUTFIT DRESSES</h3>
          <p>WEDDING-WEAR DRESSES FOR SPECIAL OCCASIONS.</p>
        </div>
      </div>
      
      
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev" >
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next" >
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<br>


<!--login-form  -->
  ${message}
  
	<div class="col-sm-6" style="background:rgba(20,0,0,0.1)">
 
  <h2 class="s1"><b>LOGIN FORM</b></h2>
  <form:form commandName="userObject" action="reqLoginCheck">
  <br>
    <img src="resources/images/lo.png" alt="Avatar" class="avatar">
    <br>
    <br>

   <label><h4 class="s1"><b>USER-ID<b></h4></label>
    <form:input placeholder="Enter Username"  path="userid" required="required"/>
    <br>
    <br>

    <label><h4 class="s1"><b>PASSWORD</b></h4></label>
    <form:input type="password" placeholder="Enter Password" path="password" required="required"/>
        <br>
        <br>
        <br>
        <br><br><br><br>
    <form:button type="submit">LOGIN</form:button>
    <%-- <form:input type="checkbox" checked="checked"/> <h3 class="s1">Remember Me</h3> --%>
  
    <form:button type="button" class="cancelbtn">Cancel</form:button>
  
    <span class="psw">Forgot <a href="#">password?</a></span>
 

</form:form>
</div>
</div>

<br><br><br><br>

<%--for thumnail --%>
<div class="container-fluid">


  <div class="col-sm-12">
<div class="row" >

		 
<div class="col-sm-2 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style= "background-color:transparent;border:3px solid green; border-radius:8px; padding:5px; border-style:none; text-align:center; font-size:18px;font-style:bold"> 
		 <img id="boxshadow" src="resources/images/courosel/d8.jpg" style = "width:500px; height:200px;" class="img-rounded"/>
		 <h4 class="s1">WESTERN-DRESS</h4>
		</div>
		</div>
	
	<div class="col-sm-2 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style= "background-color:transparent;border:3px solid green; border-radius:8px; padding:5px;height:200; border-style: none;"> 
		 <img id="boxshadow" src="resources/images/courosel/8.jpg" style="width:500px; height:200px;" class="img-rounded"/>
	     <h4 class="s1"> RED-DRESS</h4>
		</div>
		</div>
		
		<div class="col-sm-2 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style= "background-color:transparent; border:3px solid green; border-radius:8px; padding:5px;height:200; border-style: none;"> 
		 <img  id="boxshadow" src="resources/images/courosel/1.jpg" style="width:500px; height:200px;"/>
	
		 <h4 class="s1">WEDDING WEAR</h4>
		</div>
		</div>
		
		<div class="col-sm-2 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style= "background-color:transparent;border:3px solid green; border-radius:8px; padding:5px;height:200; border-style: none;"> 
		 <img  id="boxshadow" src="resources/images/courosel/n.jpg" style="width:500px; height:200px;"/>
	
		 <h4 class="s1"> FLORAL-DRESS</h4>
		</div>
		</div>
		
		<div class="col-sm-2 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style= "background-color:transparent;border:3px solid green; border-radius:8px; padding:5px; height:200;border-style: none;"> 
		 <img  id="boxshadow" src="resources/images/courosel/d3.jpg" style="width:500px; height:200px;"/>
		
		 <h4 class="s1"> BLACK-DRESS</h4>
		</div>
		</div>

<div class="col-sm-2 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style="background-color:transparent;border:3px solid green; border-radius:8px; padding:5px;height:200; border-style: none;"> 
		 <img  id="boxshadow" src="resources/images/courosel/d1.jpg" style="width:500px; height:200px;"/>
		<h4 class="s1"> WESTERN-DRESS</h4>
		</div>
		</div>


</div>
</div>
</div>
<br><br>
<hr>
<%@ include file="footer.jsp" %>

</body>
</html>
