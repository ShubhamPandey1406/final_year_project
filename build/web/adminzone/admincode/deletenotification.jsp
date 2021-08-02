<%@page import="mypack.DbManager"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    DbManager db=new DbManager();
    String query="delete from notification where id='"+id+"'";
    if(db.nonQuery(query)==true)
    {
        out.print("<script>alert('notification is deleted');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('notification is not deleted');window.location.href='../adminhome.jsp';</script>");
    }
%>