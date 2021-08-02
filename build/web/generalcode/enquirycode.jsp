<%@page import="mypack.SmsSender"%>
<%@page import="mypack.DbManager"%>
<%
    String name=request.getParameter("name");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String contactno=request.getParameter("contactno");
    String emailaddress=request.getParameter("emailaddress");
    String enquirytext=request.getParameter("enquirytext");
    DbManager db=new DbManager();
    String date=db.getDate();
    String query="insert into enquiry(name,gender,address,contactno,emailaddress,enquirytext,enquirydate)values('"+name+"','"+gender+"','"+address+"','"+contactno+"','"+emailaddress+"','"+enquirytext+"','"+date+"')";
      if(db.nonQuery(query)==true)
      {
          SmsSender  sms=new SmsSender();
          sms.SendSms(contactno,"hi "+name+" your enquiry succesfull submitted");
          
         out.print("<script>alert('enquiry is saved');window.location.href='../index.jsp';</script>");
 
      }
      else
      {
         out.print("<script>alert('enquiry is not saved');window.location.href='../index.jsp';</script>");
  
      }

%>