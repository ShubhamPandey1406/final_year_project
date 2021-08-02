<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
  String userid=request.getParameter("userid");
  String password=request.getParameter("password");
  DbManager db=new DbManager();
  ResultSet rs=db.selectQuery("select password from login where userid='"+userid+"'");
 if(rs.next())
 {
     //Match the password
     String respassword=rs.getString("password");
     if(password.equals(respassword))
     {
         session.setAttribute("userid",userid);
         response.sendRedirect("../adminzone/adminhome.jsp");
     }
     else
     {
        out.print("<script>alert('password is not match');window.location.href='../login.jsp;'</script>"); 
     }
 }
 else
 {
     out.print("<script>alert('Invaliduser');window.location.href='../login.jsp';</script>");
 }
%>