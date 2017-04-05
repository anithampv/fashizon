<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Insert title here</title>

<style>
.s1{
color:white;
background-opacity:0.4;
}
.class{
color:transparent;
}
.fa {
  padding:10px;
  font-size: 20px;
  width:35px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius: 50%;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}
.fa-youtube {
  background:#bb0000;
  color: white;
}
.fa-google {
  background:#dd4b39;
  color:red;
}
.fa-instagram {
  background: #125688;
  color: white;
}
.fa-twitter {
  background: #55ACEE;
  color: white;
}


.tooltip {
    position: relative;
    display: inline-block;
    border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
    visibility: hidden;
    width: 120px;
    background-color: #555;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 5px 0;
    position: absolute;
    z-index: 1;
    bottom: 125%;
    left: 50%;
    margin-left: -60px;
    opacity: 0;
    transition: opacity 1s;
}

.tooltip .tooltiptext::after {
    content: "";
    position: absolute;
    top: 100%;
    left: 50%;
    margin-left: -5px;
    border-width: 5px;
    border-style: solid;
    border-color: #555 transparent transparent transparent;
}

.tooltip:hover .tooltiptext {
    visibility: visible;
    opacity: 1;
}





<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>
</style>
</head>
<body>

 <footer class="page-footer" align="center" style="background:rgba(35,40,0,0.1)">
          <div class="container" align="center">
            <div class="row">
              <div class="col l6 s12">
                <h4 class="s1">GET TO KNOW US- LET US HELP U</h4>
                
                <h5 class="s1">CAREERS</h5>
                 <h5 class="s1">About FASHIZON</h5>
                   <h5 class="s1">INVESTOR RELATIONS</h5>
                     <h5 class="s1">FASHIZON-DEVICES</h5>
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="s1">FOLLOW-US ON</h5>
               
                 <!--  <a class="s1" href="#!">Link 1</a> -->
                 
                <div class="tooltip">f
  <span class="tooltiptext">facebook</span>
</div>
                
                 <li href="#" datatoggle="tooltip" class="fa fa-twitter" opacity="0.6" ></li>
                 <li href="#" datatoggle="tooltip" class="fa fa-facebook"></li>
                 <li href=" #" class="fa fa-instagram" style="font-size:23px; background:linear-gradient(to right, #ff0066 0%, #990099 100%)"></li>
                 <li href="#" class="fa fa-google-plus-circle" datatoggle="tooltip" style="font-size:34px;color:red"></li>
                <li href="#" class="fa fa-camera" datatoggle="tooltip" style="font-size:30px;color:yellow"></li>
                <li href="#" class="fa fa-youtube" datatoggle="tooltip"style="font-size:25px;color:white"></li>
             <!--    <a class="s1" href="#!">Link 3</a>
                  <a class="s1" href="#!">Link 4</a> -->
            
              </div>
            </div>
          </div> 
          <div class="footer-copyright">
            <div class="container" align="center">
           <h4 class="s1"> © 2014-2017 Copyright Text, All Rights Reserved</h4>
         
           <a href="https://www.twitter.com/login/"style="font-size:30px; color:#E60075"><i class="fa fa-twitter"></i></a>
            <a href="https://www.facebook.com/login/" style="font-size:30px;color:blue"><i class="fa fa-facebook"></i></a>
             <a href=" https://www.instagram.com/login/" class="fa fa-instagram" style="font-size:23px; background:linear-gradient(to right, #ff0066 0%, #990099 100%)"></a>
            <a href="https://www.google.com/login/" ><i class="fa fa-google-plus-circle" datatoggle="tooltip" style="font-size:30px;color:red"></i></a>
                 <a href="https://www.youtube.com/login/" class="fa fa-youtube" datatoggle="tooltip" style="font-size:25px;color:white"></a>
            <a href="#" class="fa fa-camera" datatoggle="tooltip" style="font-size:30px;color:yellow"></a>
         
            <br>
            <h6 class="s1" href="#!">More Links</h6>
            </div>
          </div>
        </footer>
            

</body>
</html>