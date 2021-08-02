<%@page import="mypack.DbManager"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    DbManager db=new DbManager();
    String query="delete from enquiry where id='"+id+"'";
    if(db.nonQuery(query)==true)
    {
        out.print("<script>alert('enquiry is deleted');window.location.href='../enquires.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('complain is not deleted');window.location.href='../enquires.jsp';</script>");
    }
%>