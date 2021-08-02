<%@page import="mypack.DbManager"%>
<%
    String notificationtext=request.getParameter("notificationtext");
    DbManager db=new DbManager();
    String posteddate=db.getDate();
    String query="insert into notification(notificationtext,posteddate)values('"+notificationtext+"','"+posteddate+"')";
    if(db.nonQuery(query)==true)
    {
        out.print("<script>alert('notification saved');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('notification is not saved');window.location.href='../adminhome.jsp';</script>");
    }
%>