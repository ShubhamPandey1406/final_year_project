<%-- 
    Document   : index
    Created on : 15 Jul, 2019, 11:48:59 AM
    Author     : Aman jain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <style>
          #outer
          {
           height: 1200px;
           width: 1000px;
          // border: 1px solid red;
           margin:0px auto;
          } 
          #header
          {
           height: 150px;
           width: 1000px;
          }
          #logo
          {
              height: 150px;
              width: 150px;
              background-color:crimson; 
              float: left;
              background-image: url("images/logo.png");
              background-size: cover;
              border-radius: 20px;
          }
          #pt
          {
          height:150px;
          width:850px;
          background-color:chocolate;
          float: left; 
          font-size:70px;
          line-height:150px;
          text-align:center;
          border-radius: 20px;
          }
          #menu
          {
            height: 50px;
            width: 1000px;
            background-color:lightsalmon;
            float:left;
            margin-top: 5px;
            margin-bottom: 5px;
            border-radius: 20px;
          }
          #slider
          {
              height: 250px;
              width: 1000px;
              background-color: aqua;
             
          }
          #main
          {
           height: 650px;
           width: 1000px;
           
          }
          #lmain
          {
              height: 650px;
              width: 200px;
              background-color: lightsalmon;
              float: left;
              
          }
          #rmain
          {
              height: 650px;
              width: 800px;
              background-color: goldenrod;
              float: left;
              background-image: url("images/z.jpg");
                
              
          }
          #footer
          {
              height: 100px;
              width:  1000px;  
              margin-top: 5px;
             
          }
          #lfooter
          {
              height: 150px;
              width: 500px;
              background-color: chocolate;
              float: left;
              text-align:center;
              border-radius:20px 0px 0px 20px;
              
          }
          #rfooter
          {
            height: 150px;
              width: 500px;
              background-color: chocolate;
              float: left; 
              border-radius:0px  20px 20px 0px;;
              text-align:center;
          }
          #menu ul
          {
           list-style-type:none;   
          }
          #menu ul li
          {
          display:inline; 
          
          }
          #menu ul li a
          {
              font-size:25px;
              padding:5px;
              text-decoration:none;
              color:black;
          }
          #menu ul li a:hover
          {
              color:red;
              
          }
      </style>
      <script>
          var imgno=0;
          var imgarr=["slider1.jpg","slider2.jpg","slider3.jpg","slider4.jpeg","a.jpeg","b.jpeg"];
        function slider()
        {
            var img=document.getElementById("slide");
            img.src="images/"+imgarr[imgno];
            imgno++;
            if(imgno==6)
            {
             imgno=0;   
            }
            window.setTimeout("slider()",1000);
            
        }
      </script>
    </head>
    <body onload="slider()" bgcolor="gray">
      <div id="outer">  
          <div id="header">
              <div id="logo"></div>               
              <div id="pt">
                Speedex Courier    
              </div>
            </div> 
          <div id="menu">
              <ul>
                  <li><a href="index.jsp">HOME</a></li>
                  <li><a href="aboutus.jsp">ABOUT US</a></li>
                  <li><a href="login.jsp">LOGIN</a></li>
                   <li><a href="carrier.jsp">CARRIER</a></li>
                   <li><a href="searchconsignment.jsp">PACKET TRACKING</a></li>                  
                  <li><a href="complain.jsp">COMPLAIN</a></li>
                  <li><a href="enquiry.jsp">ENQUIRY</a></li>
                  
              </ul>
          </div>
          <div id="slider">
              <img height="250px" width="1000px" id="slide" />
          </div>
           <div id="main">
               <div id="lmain">
                   <%@include file="masternotice.jsp" %>
               </div>
               <div id="rmain"></div>
           </div>   
           <div id="footer">
               <div id="lfooter">
                  <h2> Copyright &copy;Speedex courier</h2>
               </div>
               <div id="rfooter">
              <h2>Developed by: Aman jain</h2>
               </div>
           </div>
      </div>
    </body>
</html>
