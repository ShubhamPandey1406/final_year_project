<%@page import="mypack.DbManager"%>
    
<%
    String name=request.getParameter("name");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String contactno=request.getParameter("contactno");
    String emailaddress=request.getParameter("emailaddress");
    String subject=request.getParameter("subject");
    String complaintext=request.getParameter("complaintext");
    DbManager db=new DbManager();
    String date=db.getDate();
    String query="insert into complain(name,gender,address,contactno,emailaddress,subject,complaintext,complaindate)values('"+name+"','"+gender+"','"+address+"','"+contactno+"','"+emailaddress+"','"+subject+"','"+complaintext+"','"+date+"')";
    

      if(db.nonQuery(query)==true)
      {
         out.print("<script>alert('complain  is saved');window.location.href='../index.jsp';</script>");
 
      }
      else
      {
         out.print("<script>alert('complain is not saved');window.location.href='../index.jsp';</script>");
  
      }

%>
