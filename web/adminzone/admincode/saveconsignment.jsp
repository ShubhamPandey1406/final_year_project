<%@page import="mypack.DbManager"%>
<%
    String refno=request.getParameter("refno");
    String sendername=request.getParameter("sendername");
    String senderaddress=request.getParameter("senderaddress");
    String sendercontactno=request.getParameter("sendercontactno");
    String receivername=request.getParameter("receivername");
    String receiveraddress=request.getParameter("receiveraddress");
    String source=request.getParameter("source");
    String currentcity=request.getParameter("currentcity");
    String destination=request.getParameter("destination");
    String status=request.getParameter("status");
    DbManager db=new DbManager();
    String posteddate=db.getDate();
    String query="insert into consignment values('"+refno+"','"+sendername+"','"+senderaddress+"','"+sendercontactno+"','"+receivername+"','"+receiveraddress+"','"+source+"','"+currentcity+"','"+destination+"','"+status+"','"+posteddate+"')";
    if(db.nonQuery(query))
    {
        out.print("<script>alert('Consignment is saved');window.location.href='../consignment.jsp;'</script>");
    }
    else
    {
        out.print("<script>alert('Consignment is not saved');window.location.href='../consignment.jsp;'</script>");
    }
    
%>