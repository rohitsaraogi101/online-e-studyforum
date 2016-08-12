<%-- 
    Document   : homepage
    Created on : 29 Oct, 2015, 7:04:02 PM
    Author     : gswain3316
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ForgetBooks</title>
        <script lang="javascript"type="text/javascript">
            
            
        </script>
        <style type="text/css">
           html,body
           {
               width: 100%;
               height: 100%;
               margin: 0px;
               padding: 0px;
               overflow-x: hidden;
           }
           body
           {
               background-image: url('stack_of_books.jpg');
               background-repeat: no-repeat;
               background-attachment: fixed;
               -webkit-background-size: cover;
               -moz-background-size: cover;
               -o-background-size: cover;
               background-size: cover;

               
           }
            
           #begin
            {
                border:2px solid #a1a1a1;
                padding: 10px 40px;
                background: chartreuse;
                height: 100px;
                width: auto;
                border-radius: 25px;
                -moz-border-radius: 25px;
            }
            h1{
                text-align: center;
                text-shadow: 5px 5px 5px #a1a1a1;
                text-height: 1s00px;
            }
            .box
            {
                background-color: #e1e1e6;
                margin-left: 850px; 
                margin-right: auto;
                width: 400px;
                height: 100px;
                border:1px solid black;
                border-radius: 5px;
            }
            .red
            {
                position: relative;
                top:36px;
                left:35%;
                text-decoration: none;
                color:#fff;
                background:#cb2727;
                text-align: center;
                padding: 20px 30px;
                width:115px;
                border-radius: 5px;
                border:solid 1px #ec3838;
                transition: all 0.1s;
                -webkit-box-hadow:0px 9px 0px #a81515;
                -ms-box-shadow: 0px 9px 0px #a81515;               
            }
            .red:active
            {
                -webkit-box-shadow:0px 2px 0px #a81515;
                -moz-box-shadow:0px 2px 0px #a81515;
                position:relative;
                top: 43px;
            }
            .details
            {
                color: black;
                font-family: "Times New Roman", Times, serif;
                font-size: 18px;
                background-color: transparent;
                float: left;
                width: 15%;
                padding: 80px;
            }
            .details,.box
            {
                padding: 20px;
            }
                     
#cssmenu {
  background: #f96e5b;              /*CSS FOR NAVIGATION BAR STARTS HERE*/
  width: auto;
}
#cssmenu ul {
  list-style: none;
  margin: 0;
  padding: 0;
  line-height: 1;
  display: block;
  zoom: 1;
}
#cssmenu ul:after {
  content: " ";
  display: block;
  font-size: 0;
  height: 0;
  clear: both;
  visibility: hidden;
}
#cssmenu ul li {
  display: inline-block;
  padding: 0;
  margin: 0;
}
#cssmenu.align-right ul li {
  float: right;
}
#cssmenu.align-center ul {
  text-align: center;
}
#cssmenu ul li a {
  color: #ffffff;
  text-decoration: none;
  display: block;
  padding: 15px 25px;
  font-family: 'Open Sans', sans-serif;
  font-weight: 700;
  text-transform: uppercase;
  font-size: 14px;
  position: relative;
  -webkit-transition: color .25s;
  -moz-transition: color .25s;
  -ms-transition: color .25s;
  -o-transition: color .25s;
  transition: color .25s;
}
#cssmenu ul li a:hover {
  color: #333333;
}
#cssmenu ul li a:hover:before {
  width: 100%;
}
#cssmenu ul li a:after {
  content: "";
  display: block;
  position: absolute;
  right: -3px;
  top: 19px;
  height: 6px;
  width: 6px;
  background: #ffffff;
  opacity: .5;
}
#cssmenu ul li a:before {
  content: "";
  display: block;
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 0;
  background: #333333;
  -webkit-transition: width .25s;
  -moz-transition: width .25s;
  -ms-transition: width .25s;
  -o-transition: width .25s;
  transition: width .25s;
}
#cssmenu ul li.last > a:after,
#cssmenu ul li:last-child > a:after {
  display: none;
}
#cssmenu ul li.active a {
  color: #333333;
}
#cssmenu ul li.active a:before {
  width: 100%;
}
#cssmenu.align-right li.last > a:after,
#cssmenu.align-right li:last-child > a:after {
  display: block;
}
#cssmenu.align-right li:first-child a:after {
  display: none;
}
@media screen and (max-width: 768px) {
  #cssmenu ul li {
    float: none;
    display: block;
  }
  #cssmenu ul li a {
    width: 100%;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    border-bottom: 1px solid #fb998c;
  }
  #cssmenu ul li.last > a,
  #cssmenu ul li:last-child > a {
    border: 0;
  }
  #cssmenu ul li a:after {
    display: none;
  }
  #cssmenu ul li a:before {
    display: none;                             /*CSS FOR NAVIGATION BAR ENDS HERE*/
  }
}


#share{
    text-align: left;
    color: #330000;
    padding: 8px 15px;
    border-radius: 5px;
    margin: 10px;
}
#twitter-share-button,#fb-like{
    font-weight: 700;
    padding-left: 10px;
}
#share:hover{
    border-bottom: 1px dashed #fff;
}


footer{                                         /*START OF AMAZING FOOTER*/
    position:absolute;
    bottom:0;
    width: 100%;
    height: auto;
    background: #ccff00;
    float: left;
    margin: auto;
    border-radius: 10px;
    box-shadow: 5px 5px 10px #202020;    
}
address{
    font-size: 16px;
    padding: 20px;
    text-align: centre;
    margin-left: 30px;
    color: #e00000;
    text-shadow: 1px 1px 1px #202020;           /*END OF FOOTER*/
}
#footer nav{
padding:30px;
margin: 10px 20px 0 0;
display:inline;
list-style: none;
margin: 0;
padding: 0;
font-family: Times, "MS Trebuchet", sans-serif;
}
#navi{
    text-align: centre;
    margin-left: 30px;
    padding-left: 158px;
    color: #e00000;
}
#navi ul{
    text-align: left;
    margin: auto;
    width: 100%;
}
#navi li{
    text-align: centre;
    display: inline;
    padding: 0px;
    margin: 0px;
}
        </style>
    </head>
    <body onload="changeColor()">
        <!-- Load Facebook SDK for JavaScript -->
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.5";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>        
<div class="main">
        <div id="begin">
        <h1>Forget Books</h1>
        </div>
        
        <div id='cssmenu'>
<ul>
   <li class='active'><a href='homepage.jsp'><span>Home</span></a></li>
   <li><a href='tutorial.jsp'><span>Tutorials</span></a></li>
   <li><a href='forum.jsp'><span>Forum</span></a></li>
   <li><a href='contact.jsp'><span>Contact</span></a></li>
   <li class='last'><a href="logout.jsp"><span>Logout</span></a></li>
</ul>
            
</div>
    <div id="main">

           
    <div class="details">
        <video controls preload="auto" src="/BingSEOM01_mid.mp4" poster="Screenshot (3).png" width="180px" height="180px"></video></br>
        This is a description for python tutorial.It contains every single details for it.</div>
        <div class="details"><video controls preload="auto" src="/01SeriesIntroduction_mid.mp4" poster="Screenshot (2).png" width="180px" height="180px"></video></br>
    This is a description for java tutorial in very simple way</div>

        <div class="details"><video controls preload="auto" src="/01SeriesIntroduction_mid.mp4" poster="Screenshot (4).png" width="180px" height="180px"></video></br>
            This is tutorial about html web designing in very easy way</div> <div class="details"><video controls preload="auto" src="/BingSEOM01_mid.mp4" poster="Screenshot (7).png" width="180px" height="180px"></video></br>
    This is tutorial about session trackjacking in websites for professionals</div>
    
    </div>
        
            <footer>
            <div id="share">
                Share this on &rarr;
                
    
     <!-- Your fb share button code -->
        <div class="fb-like" data-href="https://think2learn.com" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
            </div>
            <!--navigation-->
             <div id='navi'>
<ul>
   <li class='active'><a href='homepage.jsp'><span>Home</span></a></li>
   <li><span> | </span></li>
   <li><a href='about.jsp'><span>About</span></a></li>
   <li><span> | </span></li>
   <li><a href='contact.jsp'><span>Contact</span></a></li>
   <li><span> | </span></li>
   <li class='last'><a href='disclaimer.jsp'><span>Disclaimer</span></a></li>
</ul>
</div>
            <!--copyright code-->
            <address>
                &COPY; Copyright 2015 All Rights Reserved
                <b> www.forgetbooks.com<b>
            </address>
        </footer>
</div>
    </body>
</html>
