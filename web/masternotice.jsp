
<div style="margin-top: 30%;">
<marquee direction="up" onmouseover="stop()" onmouseout="start()" style="height: 500px" >
<%
    String qq="select * from notification";
    java.sql.ResultSet rrs=new mypack.DbManager().selectQuery(qq);
    if(rrs!=null)
    {
        while(rrs.next())
        {
            %>
            <p style="font-size: 16pt;">
                <%=rrs.getString(2)%>
                <small style="font-size: 10pt;"><%=rrs.getString(3)%></small>               
            </p>
            <br/>
            <hr/>            
            <%
        }
    }
    
%>
</marquee>
</div>