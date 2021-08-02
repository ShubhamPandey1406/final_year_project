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
              height: 150px;
              width: 500px;
              background-color: khaki;
              float: left;
              text-align:center;
              
          }
          #rfooter
          {
            height: 150px;
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
        <%
        DbManager db=new DbManager();
        ResultSet rs=null;
        
        %>
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
              <form action="admincode/saveconsignment.jsp" method="post">
                  <h2 style="text-align:center;color:blue;">
                      Add Consignment
                  </h2> 
                  <table style="width:50%;margin:0 auto;"border="1">
                  <tr>
                      <td>Enter ref. no.</td>
                      <td>
                          <input type="text" name="refno" required/>
                      </td>
                  </tr>
                  <tr>
                      <td>Enter sender name</td>
                      <td><input type="text" name="sendername" required/></td>
                  </tr>
                  <tr>
                      <td>Enter sender address</td>
                      <td><textarea name="senderaddress" required style="height:100px;resize:none;"></textarea></td>                      
                  </tr>
                  <tr>
                      <td>Enter sender contact no</td>
                      <td><input type="number" name="sendercontactno" required/></td>
                  </tr>
                  <tr>
                      <td>Enter receiver name</td>
                      <td><input type="text" name="receivername" required/></td>
                  </tr>
                  <tr>
                      <td>Enter receiver address</td>
                      <td><textarea name="receiveraddress" required style="height:100px;resize:none;"></textarea></td>
                  </tr>
                  <tr>
                      <td>Select source</td>
                      <td>
                          <select name="source">
                              <%
         rs=db.selectQuery("select * from city");
        while(rs.next())
        {
        
                              %>
                              <option><%=rs.getString("cityname")%></option>
                              <% } %>
                          </select>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          Select current city
                      </td>
                      <td>
                          <select name="currentcity">
                            <%
         rs=db.selectQuery("select * from city");
        while(rs.next())
        {
        
                              %>
                              <option><%=rs.getString("cityname")%></option>
                              <% } %>  
                      </select>
                      </td>    
                  </tr>
                  <tr>
                      <td>Select destination</td>
                      <td>
                          <select name="destination">
                              <%
         rs=db.selectQuery("select * from city");
        while(rs.next())
        {
        
                              %>
                              <option><%=rs.getString("cityname")%></option>
                              <% } %>  
                          </select>
                      </td>
                  </tr>
                  <tr>
                      <td>Select status</td>
                              <td><select name="status">
                                      <option>
                                          Initiated
                                      </option>
                                      <option>
                                         Pipelined
                                      </option>
                                      <option>
                                          Delivered
                                      </option>
                                      <option>
                                          Cancelled
                                      </option>
                                      
                          </select></td>
                  </tr>
                  <tr>
                      <td>&nbsp</td>
                      <td>
                          <input type="submit" value="Add"/>
                      </td>
                  </tr>
                  </table>
              </form>
              
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