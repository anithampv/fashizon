<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="links.jsp" %>
<title>Insert title here</title>

<style>
 
body{
background-size:contain;
background-repeat:no-repeat;
background-attachment:fixed;
background-size:100% 100%;
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
    height:500px;
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
      height:600px ;
      margin:;
  }
  .carousel-control.left, .carousel-control.right {
  background-image: none; opacity:0.3;
}
.carousel{
	margin-top:0;
}
.navbar {
    margin-bottom: 0;
    
}
 
/*  body { 
    background-size: contain;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center;
    background-size: 100% 100%;  
    background-opacity:0.2;
    color:white;
   
} 
  */

.s1{
color: white;
background-opacity:0.4;

}
.s2{
color:black;
}
.s3{
background-opacity:0.3;
}
.s4{
color:red;
}
.s5{
color:green;
}
</style>
</head>

<body background="resources/images/bb9.jpg">

<nav class="navbar navbar-inverse navbar-fixed-top">
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
<li><a href="reqForLoginPage"><span class="glyphicon glyphicon-heart-empty"></span> LOGIN</a></li>
</ul>
</div>
</nav>

<br><br><br>

<div class="container-fluid" align="left">
  <br>
  <div class="col-sm-7"> 
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
        <img src="resources/images/courosel/a2.jpg" alt="FABULOUS WEDDING-DRESSES" width="200px" height="200px">
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

<div class="col-sm-5" style="background:rgba(20,0,0,0.1)">
<h2 class="s2">${message}</h2>
<h4 class="s4"><b>${error}</h4>
<h3 class="s5"><b>${logout}</h3>
<br>
 <h2 class="s1">SPRING-LOGIN FORM</b></h2>
 
<form action="j_spring_security_check" method="POST">

<br><br>
<h4><b>USER-ID:</h4> <input type="text" name ="j_username"/></b>
<br>

<h4><b>PASSWORD:</h4> <input type="password" name ="j_password"/></b>

<br>
<input type="submit" value="Login"/>

</form>
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
		 <h4 class="s2">WESTERN-DRESS</h4>
		</div>
		</div>
	
	<div class="col-sm-2 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style= "background-color:transparent;border:3px solid green; border-radius:8px; padding:5px;height:200; border-style: none;"> 
		 <img id="boxshadow" src="resources/images/courosel/8.jpg" style="width:500px; height:200px;" class="img-rounded"/>
	     <h4 class="s2"> RED-DRESS</h4>
		</div>
		</div>
		
		<div class="col-sm-2 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style= "background-color:transparent; border:3px solid green; border-radius:8px; padding:5px;height:200; border-style: none;"> 
		 <img  id="boxshadow" src="resources/images/courosel/1.jpg" style="width:500px; height:200px;"/>
	
		 <h4 class="s2">WEDDING WEAR</h4>
		</div>
		</div>
		
		<div class="col-sm-2 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style= "background-color:transparent;border:3px solid green; border-radius:8px; padding:5px;height:200; border-style: none;"> 
		 <img  id="boxshadow" src="resources/images/courosel/n.jpg" style="width:500px; height:200px;"/>
	
		 <h4 class="s2"> FLORAL-DRESS</h4>
		</div>
		</div>
		
		<div class="col-sm-2 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style= "background-color:transparent;border:3px solid green; border-radius:8px; padding:5px; height:200;border-style: none;"> 
		 <img  id="boxshadow" src="resources/images/courosel/d3.jpg" style="width:500px; height:200px;"/>
		
		 <h4 class="s2"> BLACK-DRESS</h4>
		</div>
		</div>

<div class="col-sm-2 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style="background-color:transparent;border:3px solid green; border-radius:8px; padding:5px;height:200; border-style: none;"> 
		 <img  id="boxshadow" src="resources/images/courosel/d1.jpg" style="width:500px; height:200px;"/>
		<h4 class="s2"> WESTERN-DRESS</h4>
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