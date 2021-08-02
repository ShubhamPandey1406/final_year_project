
%><%-- 
    Document   : logout
    Created on : 21 Jul, 2019, 12:14:50 PM
    Author     : user
--%>
<%
    session.invalidate();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogOut</title>
        <script>
            function logout()
            {
              window.history.forward();
              window.setTimeout(window.location.href='../login.jsp',2000);
            }
        </script>
    </head>
    <body bgcolor="black" onload="logout()" >
 
        
    </body>
</html>
