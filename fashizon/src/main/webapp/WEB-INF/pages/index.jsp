<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://getbootstrap.com.vn/examples/equal-height-columns/equal-height-columns.css" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ include file="links.jsp" %>
<body>

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


  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width:100%;
      height:400px ;
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
color:white;
background-opacity:0.4;

}
.s2{
color:#f7e00e;
}
.s3{
background-opacity:0.3;
}
.s4
{
color:black;
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

 <body background="resources/images/p3.jpg" class="s3">        <!-- resources/images/p3.jpg -->

<video autoplay loop muted poster="clothing.jpg" id="bgvid">
    <source src="resources/images/video6.mp4" type="video/mp4">
    </video>

<nav class="navbar navbar-inverse navbar-fixed-top">
<div class="container-fluid" style="background-color:black">

 <div class="navbar-header" >
      <img class="img-circle" src="resources/images/g.gif" width="70" height="60">
       <a class="navbar-brand" href="#"><b>FASHIZON</b></a> 
      
    </div>

<ul class="nav navbar-nav">
<li><a href="home">HOME</a></li>
<li><a href="#">ABOUT US</a></li>
<li><a href="#">CONTACT US</a></li>

</ul>

<ul class="nav navbar-nav navbar-right">
<li><a href="reqForSignupPage"><span class="glyphicon glyphicon-user"></span>SIGN UP</a></li>
 <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModalSignUp" style="color:pink;background-color:transparent;border:0px;">
        <span class="glyphicon glyphicon-user"></span>SIGN-UP FORM</button>

<!-- <li><a href="reqForLoginPage"><span class="glyphicon glyphicon-heart-empty"></span> LOGIN</a></li> -->
<!-- <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModalLogin" style="color:pink;background-color:transparent;border:0px;margin-right:10">
        <span class="glyphicon glyphicon-heart-empty"></span>  LOGIN-FORM</button> -->
        <li><a href="reqspringloginpage"><span class="glyphicon glyphicon-heart-empty"></span> SPRING LOGIN-PAGE</a></li>
</ul>


</div>
</nav>
<br><br><br>

<img src="resources/images/l1.png" width="190" height="70" align="right">
 <h2 align="left"><b class="s1">WELCOME TO FASHION WORLD WITH-FASHIZON</h2>


<!-- Modal starts - SignUp -->
  <div class="modal fade" id="myModalSignUp" role="dialog" >
  <br><br><br>
    <div class="modal-dialog">
        
      <!-- Modal content-->
      <div class="modal-content" style="background:rgba(30,70,80,0.1)">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" style="color:yellow">&times;</button>
          <h4 class="modal-title" style="color:#2af6f9">SIGNUP-FORM</h4>
        </div>
        <div class="modal-body" style="align:center;background:rgba(90,100,30,0.6)">  
        <form:form  class="form-horizontal" commandName="customerObject" method="POST" action="reqSendSignupDataToDB" encType="multipart/form-data">


			    <div class="col-sm-4" style="background-color:transparent;color:pink; vertical-align:baseline">CUSTOMER NAME </div>
			    <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="custname" class="form-control" placeholder="Enter Customer Name" style="background-color:transparent;color:yellow"/>
				  </div>
			
			
			 <div class="col-sm-4" style="background-color:transparent;color:pink">EMAIL-ID</div>
			 <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="custemailid" class="form-control" placeholder="Enter Email ID" style="background-color:transparent;color:yellow"/>
				  </div>		
				
			 <div class="col-sm-4" style="background-color:transparent;color:pink">MOBILE-NO</div>
			 <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="custmobileno" class="form-control" placeholder="Enter Mobile No." style="background-color:transparent;color:yellow"/>
				  </div>		
					
			<br> AUTHENTICATION-DETAILS <br>
			   <div class="col-sm-3" style="background-color:transparent;color:pink">PASSWORD</div>
			   <div class="col-sm-8" style="background-color:transparent">
				       <form:password path="userdetails1.password" class="form-control" placeholder="Enter Password" style="background-color:transparent;color:yellow"/>
				  </div>	
				  	
			  <div class="col-sm-3" style="background-color:transparent;color:pink">Image</div>
			  <div class="col-sm-8" style="background-color:transparent">
				       <form:input type="file" path="imagefile" class="form-control" style="background-color:transparent;color:yellow"/>
				  </div>
				  	
				  		
		     <br> ADDRESS<br>
			 <div class="col-sm-3" style="background-color:transparent;color:pink">HOUSE-NO.</div>
			 <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.houseno" class="form-control" placeholder="Enter House No." style="background-color:transparent;color:yellow"/>
				  </div>				
			
			 <div class="col-sm-3" style="background-color:transparent;color:pink">STREET</div>
			 <div class="col-sm-8" style="background-color:transparent">
		      <form:input path="shippingAddress.street" class="form-control" placeholder="Enter Street" style="background-color:transparent;color:yellow"/>
				  </div>	
				  
		  <div class="col-sm-3" style="background-color:transparent;color:pink">AREA</div>
		   <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.area" class="form-control" placeholder="Enter Area" style="background-color:transparent;color:yellow"/>
				  </div>				
		
		  <div class="col-sm-3" style="background-color:transparent;color:pink">CITY</div>
	      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.city" class="form-control" placeholder="Enter City" style="background-color:transparent;color:yellow"/>
				  </div>
				  
	    <div class="col-sm-3" style="background-color:transparent;color:pink">STATE</div>
        <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.state" class="form-control" placeholder="Enter State" style="background-color:transparent;color:yellow"/>
				  </div>
				  
	     		<div class="col-sm-3" style="background-color:transparent;color:pink">COUNTRY</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.country" class="form-control" placeholder="Enter Country" style="background-color:transparent;color:yellow"/>
				  </div>		
			
	     		<div class="col-sm-3" style="background-color:transparent;color:pink">PINCODE</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.pincode" class="form-control" placeholder="Enter Pincode" style="background-color:transparent;color:yellow"/>
				  </div>
				  
		
				<br> 
				<form:button class="btn btn-primary active">SIGN-UP</form:button>
	
			</form:form>        
     
          </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" style="color:blue">Close</button>
        </div>
      </div>
      
    </div>
  </div>
 <!-- Modal ends - SignUp -->
 
  <c:if test="${message==1}">
    <div class="container">
    <br><br>
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
     <div class="alert alert-danger alert-dismissable fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
    ${message1}
    </div>
  </div>
  </div>
  </c:if>     
 
 
   <c:if test="${message==0}">
    <div class="container">
    <br><br>
    <div col-sm-3></div>
    <div col-sm-6>
     <div class="alert alert-danger alert-dismissable fade in">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
    <strong>Error!</strong>   Login failed...Try again..
    </div>
  </div>
  </div>
  </c:if>
  
  
  
  
<br>
         

	<div class="col-sm-4"> 
<div class="container-fluid">
  
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
</div>


 <div class="col-sm-4" align="right" > 
  <video controls autoplay width="500px" height="450px">
  <source src="resources/images/clothing.mp4"type="video/mp4">
  <!-- <source src="movie.ogg" type="video/ogg"> -->
  Your browser does not support the video tag.
</video>
</div>

<div class="col-sm-4" align="right" > 
  <video controls autoplay width="500px" height="450px">
  <source src="resources/images/video3.mp4"type="video/mp4">
  <!-- <source src="movie.ogg" type="video/ogg"> -->
  Your browser does not support the video tag.
</video>
</div>

<br>
<br>
  
  <br><br>
  
  
<%--for thumnail --%>

<div class="container-fluid">
<div class="col-sm-12 row" >

	

<!-- <div class="col-sm-2 zoom-effect-container"  style = "background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail" class="thumbnail image-card" style="border:3px solid green; border-radius:8px; padding:6px;height:200; border-style:none;"> 
		 <img id="boxshadow" src="resources/images/courosel/d8.jpg" style="width:250px; height:190px;" class="img-rounded"/> -->
		 
		 <div class="item active">
                	<div class="row-fluid">
                 
<div class="col-sm-2 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style= "background-color:transparent;border:3px solid green; border-radius:8px; padding:5px; border-style:none; text-align:center; font-size:18px;font-style:bold"> 
		 <img id="boxshadow" src="resources/images/courosel/d8.jpg" style="width:500px; height:200px; class="img-rounded"/>
		 <h4 class="s1">WESTERN-DRESS</h4>
		</div>
		</div>
		
	<div class="item">
	<div class="col-sm-2 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style= "background-color:transparent;border:3px solid green; border-radius:8px; padding:5px;height:200; border-style: none;"> 
		 <img id="boxshadow" src="resources/images/courosel/8.jpg" style="width:500px; height:200px;" class="img-rounded"/>
	     <h4 class="s1">RED-DRESS</h4>
		</div>
		</div>
		  </div>
		  
		  	<div class="item">
		<div class="col-sm-2 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style= "background-color:transparent; border:3px solid green; border-radius:8px; padding:5px;height:200; border-style: none;"> 
		 <img  id="boxshadow" src="resources/images/courosel/1.jpg" style="width:500px; height:200px;"/>
	   <h4 class="s1">WEDDING WEAR</h4>
		</div>
		</div>
		</div>
		
		<div class="col-sm-2 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style= "background-color:transparent;border:3px solid green; border-radius:8px; padding:5px;height:200; border-style: none;"> 
		 <img  id="boxshadow" src="resources/images/courosel/n.jpg" style="width:500px; height:200px;"/>
	
		 <h4 class="s1">FLORAL-DRESS</h4>
		</div>
		</div>
		
		<div class="col-sm-2 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style= "background-color:transparent;border:3px solid green; border-radius:8px; padding:5px; height:200;border-style: none;"> 
		 <img  id="boxshadow" src="resources/images/courosel/d3.jpg" style="width:500px; height:200px;"/>
		
		 <h4 class="s1">BLACK-DRESS</h4>
		</div>
		</div>

<div class="col-sm-2 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style="background-color:transparent;border:3px solid green; border-radius:8px; padding:5px;height:200; border-style: none;"> 
		 <img  id="boxshadow" src="resources/images/courosel/d1.jpg" style="width:500px; height:200px;"/>
		 
		 <h4 class="s1">WESTERN-DRESS</h4>
		</div>
		</div>
		
		<!-- <div class="col-sm-2" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail" style="border:3px solid green; border-radius:8px; padding:5px; border-style: none;"> 
		 <img src="resources/images/courosel/b1.jpg" style="width:200px; height:180px;"/>
		 <br>
		 DRESS
		</div>
		</div> -->
		
		<a class="left carousel-control" href="#myCarousel" data-slide="prev"> ‹</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">› </a>
              <!--/myCarousel-->
                </div>
                </div>
                </div>
		
		
 </div>
 
<br>
<div class="container-fluid">
<div class="row" >


<c:forEach var="ps" items="${psdata}">
<div class="col-sm-3 zoom-effect-container" style="background-color:transparent; border-style:none; left-padding:5px;">
		<div class="thumbnail image-card" style= "background-color:transparent;border:3px solid green; border-radius:8px; padding:5px; border-style:none; text-align:center; font-size:18px;font-style:bold"> 
		 <img id="boxshadow" src="resources/images/products/${ps.productid}.jpg" style ="width:600px; height:280px;" class="img-rounded"/>
		<b style="color:white">
		 <br>Name : ${ps.productname} 
		 <br>Supplier : ${ps.suppliername}
		 <br>Price : ${ps.productsupplierprice}
		 </b>
		 <button type="submit" class="btn btn-warning btn-large"> 
         <span class="glyphicon glyphicon-shopping-cart"></span> Add to cart
         </button>  
		 </div>
		 </div>
		 </c:forEach>

</div>
</div>



<br>
<hr>
<%@ include file="footer.jsp" %>

</body>

</html>
