<%@page import="mypack.DbManager"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    DbManager db=new DbManager();
    String query="delete from complain where id='"+id+"'";
    if(db.nonQuery(query)==true)
    {
        out.print("<script>alert('complain is deleted');window.location.href='../complains.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('complain is not deleted');window.location.href='../complains.jsp';</script>");
    }
%>