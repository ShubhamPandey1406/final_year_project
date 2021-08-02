<%-- 
    Document   : index
    Created on : 15 Jul, 2019, 11:48:59 AM
    Author     : Aman jain
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    if(session.getAttribute("userid")==null || session.getAttribute("userid")=="")
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {
        
   
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <style>
          #outer
          {
           min-height: 970px;
           width: 1000px;
           border: 1px solid red;
           margin:0px auto;
           heihgt:auto;
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
              background-image: url("../images/logo.png");
              background-size: cover;
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
          }
          #menu
          {
            height: 50px;
            width: 1000px;
            background-color:white;
            float:left;
          }
          
          #main
          {
           height: 650px;
           width: 1000px;
           background-color:background;
           text-align:center;
          }
          
         
          #footer
          {
              height: 100px;
              width:  1000px;  
              
          }
          #lfooter
          {
              height: 170px;
              width: 500px;
              background-color: khaki;
              float: left;
              text-align:center;
              
          }
          #rfooter
          {
            height: 170px;
              width: 500px;
              background-color: lightsteelblue;
              float: left;  
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
          {color:red;
              
          }
      </style>
      
    </head>
    <body bgcolor="lightblue">
      <div id="outer">  
          <div id="header">
              <div id="logo"></div>               
              <div id="pt">
                Speedex Courier    
              </div>
            </div> 
          <div id="menu">
              <ul>
                  <li><a href="adminhome.jsp">ADMINHOME</a></li>
                  <li><a href="enquires.jsp">ENQUIRIES</a></li>
                  <li><a href="complains.jsp">COMPLAINS</a></li>
                   <li><a href="jobseekers.jsp">JOBSEEKERS</a></li>
                   <li><a href="consignment.jsp">CONSIGNMENT</a></li>                  
                  <li><a href="logout.jsp">LOGOUT</a></li>               
              </ul>
              
          </div>
          
           <div id="main">
               
               <table border="1" style="width:80%;margin:0 auto;"> 
                  <tr>
                  <th>ID</th>
                  <th>NAME</th>
                  <th>GENDER</th>
                  <th>ADDRESS</th>
                  <th>CONTACT NO</th>
                  <th>EMAIL ADDRESS</th>
                  <th>ENQUIRY TEXT</th>
                  <th>ENQUIRT DATE</th>
                  <th>DELETE</th>
                  <%
        DbManager db=new DbManager();
        ResultSet rs=db.selectQuery("select * from enquiry");
        while(rs.next())
                {
                  %>
                  <tr>
                      <td><%=rs.getInt("id")%></td>
                      <td><%=rs.getString("name")%></td>
                      <td><%=rs.getString("gender")%></td>
                       <td><%=rs.getString("gender")%></td>                      
                      <td><%=rs.getString("contactno")%></td>
                      <td><%=rs.getString("emailaddress")%></td>
                      <td><%=rs.getString("enquirytext")%></td>
                      <td><%=rs.getString("enquirydate")%></td>
                      
                      <td>
                          <a href="admincode/deleteenquiry.jsp?id=<%=rs.getInt("id")%>">Delete</a>
                      </td>
                  </tr>
                  <% } %>
               </table>
           </div>   
           <div id="footer">
               <div id="lfooter">
                  <h1> Copyright &copy;Speedex courier</h1>
               </div>
               <div id="rfooter">
              <h1>Developed by: Aman jain</h1>
               </div>
           </div>
      </div>
    </body>
</html>
<%
    }
%>