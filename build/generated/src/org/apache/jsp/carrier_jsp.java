package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class carrier_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/masternotice.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("      <style>\n");
      out.write("          #outer\n");
      out.write("          {\n");
      out.write("           height: 1200px;\n");
      out.write("           width: 1000px;\n");
      out.write("         //  border: 1px solid red;\n");
      out.write("           margin:0px auto;\n");
      out.write("          } \n");
      out.write("          #header\n");
      out.write("          {\n");
      out.write("           height: 150px;\n");
      out.write("           width: 1000px;\n");
      out.write("          }\n");
      out.write("          #logo\n");
      out.write("          {\n");
      out.write("              height: 150px;\n");
      out.write("              width: 150px;\n");
      out.write("              background-color:crimson; \n");
      out.write("              float: left;\n");
      out.write("              background-image: url(\"images/logo.png\");\n");
      out.write("              background-size: cover;\n");
      out.write("              border-radius: 20px;\n");
      out.write("          }\n");
      out.write("          #pt\n");
      out.write("          {\n");
      out.write("          height:150px;\n");
      out.write("          width:850px;\n");
      out.write("          background-color:chocolate;\n");
      out.write("          float: left; \n");
      out.write("          font-size:70px;\n");
      out.write("          line-height:150px;\n");
      out.write("          text-align:center;\n");
      out.write("          border-radius: 20px;\n");
      out.write("          }\n");
      out.write("          #menu\n");
      out.write("          {\n");
      out.write("            height: 50px;\n");
      out.write("            width: 1000px;\n");
      out.write("            background-color:grey;\n");
      out.write("            float:left;\n");
      out.write("            border-radius: 20px;\n");
      out.write("            margin-bottom: 5px;\n");
      out.write("            margin-top: 5px;\n");
      out.write("          }\n");
      out.write("          #slider\n");
      out.write("          {\n");
      out.write("              height: 250px;\n");
      out.write("              width: 1000px;\n");
      out.write("              background-color: aqua;\n");
      out.write("          }\n");
      out.write("          #main\n");
      out.write("          {\n");
      out.write("           height: 650px;\n");
      out.write("           width: 1000px;\n");
      out.write("          }\n");
      out.write("          #lmain\n");
      out.write("          {\n");
      out.write("              height: 650px;\n");
      out.write("              width: 200px;\n");
      out.write("              background-color: lightsalmon;\n");
      out.write("              float: left;\n");
      out.write("          }\n");
      out.write("          #rmain\n");
      out.write("          {\n");
      out.write("              height: 650px;\n");
      out.write("              width: 800px;\n");
      out.write("              background-color: goldenrod;\n");
      out.write("              float: left;\n");
      out.write("              background-image: url(\"images/s.jpg\");\n");
      out.write("          }\n");
      out.write("          #footer\n");
      out.write("          {\n");
      out.write("              height: 100px;\n");
      out.write("              width:  1000px;  \n");
      out.write("              \n");
      out.write("          }\n");
      out.write("          #lfooter\n");
      out.write("          {\n");
      out.write("              height: 150px;\n");
      out.write("              width: 500px;\n");
      out.write("              background-color: chocolate;\n");
      out.write("              float: left;\n");
      out.write("              text-align: center;\n");
      out.write("              border-radius: 20px 0px 0px 20px;\n");
      out.write("              margin-top: 5px;\n");
      out.write("          }\n");
      out.write("          #rfooter\n");
      out.write("          {\n");
      out.write("            height: 150px;\n");
      out.write("              width: 500px;\n");
      out.write("              background-color: chocolate;\n");
      out.write("              float: left;  \n");
      out.write("              text-align: center;\n");
      out.write("              border-radius: 0px 20px 20px 0px;\n");
      out.write("              margin-top: 5px;\n");
      out.write("          }\n");
      out.write("          #menu ul\n");
      out.write("          {\n");
      out.write("           list-style-type:none;   \n");
      out.write("          }\n");
      out.write("          #menu ul li\n");
      out.write("          {\n");
      out.write("          display:inline;    \n");
      out.write("          }\n");
      out.write("          #menu ul li a\n");
      out.write("          {\n");
      out.write("              font-size:25px;\n");
      out.write("              padding:5px;\n");
      out.write("              text-decoration:none;\n");
      out.write("              color:black;\n");
      out.write("          }\n");
      out.write("          #menu ul li a:hover\n");
      out.write("          {color:red;\n");
      out.write("              \n");
      out.write("          }\n");
      out.write("      </style>\n");
      out.write("      <script>\n");
      out.write("          var imgno=0;\n");
      out.write("          var imgarr=[\"slider1.jpg\",\"slider2.jpg\",\"slider3.jpg\",\"slider4.jpeg\",\"a.jpeg\",\"b.jpeg\"];\n");
      out.write("        function slider()\n");
      out.write("        {\n");
      out.write("            var img=document.getElementById(\"slide\");\n");
      out.write("            img.src=\"images/\"+imgarr[imgno];\n");
      out.write("            imgno++;\n");
      out.write("            if(imgno==6)\n");
      out.write("            {\n");
      out.write("             imgno=0;   \n");
      out.write("            }\n");
      out.write("            window.setTimeout(\"slider()\",1000);\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("      </script>\n");
      out.write("      <style>\n");
      out.write("      .input{\n");
      out.write("              width:339px;\n");
      out.write("              height:30px;\n");
      out.write("          }        \n");
      out.write("      </style>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"slider()\" bgcolor=\"lightblue\">\n");
      out.write("      <div id=\"outer\">  \n");
      out.write("          <div id=\"header\">\n");
      out.write("              <div id=\"logo\"></div>               \n");
      out.write("              <div id=\"pt\">\n");
      out.write("                Speedex Courier    \n");
      out.write("              </div>\n");
      out.write("            </div> \n");
      out.write("          <div id=\"menu\">\n");
      out.write("              <ul>\n");
      out.write("                  <li><a href=\"index.jsp\">HOME</a></li>\n");
      out.write("                  <li><a href=\"aboutus.jsp\">ABOUTUS</a></li>\n");
      out.write("                  <li><a href=\"login.jsp\">LOGIN</a></li>\n");
      out.write("                   <li><a href=\"carrier.jsp\">CARRIER</a></li>\n");
      out.write("                  <li><a href=\"searchconsignment.jsp\">PACKET TRACKING</a></li>\n");
      out.write("                  <li><a href=\"complain.jsp\">COMPLAIN</a></li>\n");
      out.write("                  <li><a href=\"enquiry.jsp\">ENQUIRY</a></li>\n");
      out.write("              </ul>\n");
      out.write("          </div>\n");
      out.write("          <div id=\"slider\">\n");
      out.write("              <img height=\"250px\" width=\"1000px\" id=\"slide\" />\n");
      out.write("          </div>\n");
      out.write("           <div id=\"main\">\n");
      out.write("               <div id=\"lmain\">\n");
      out.write("                   ");
      out.write("\n");
      out.write("<div style=\"margin-top: 30%;\">\n");
      out.write("<marquee direction=\"up\" onmouseover=\"stop()\" onmouseout=\"start()\" style=\"height: 500px\" >\n");

    String qq="select * from notification";
    java.sql.ResultSet rrs=new mypack.DbManager().selectQuery(qq);
    if(rrs!=null)
    {
        while(rrs.next())
        {
            
      out.write("\n");
      out.write("            <p style=\"font-size: 16pt;\">\n");
      out.write("                ");
      out.print(rrs.getString(2));
      out.write("\n");
      out.write("                <small style=\"font-size: 10pt;\">");
      out.print(rrs.getString(3));
      out.write("</small>               \n");
      out.write("            </p>\n");
      out.write("            <br/>\n");
      out.write("            <hr/>            \n");
      out.write("            ");

        }
    }
    

      out.write("\n");
      out.write("</marquee>\n");
      out.write("</div>");
      out.write("\n");
      out.write("               </div>\n");
      out.write("               <div id=\"rmain\">\n");
      out.write("                   <br/><br/>\n");
      out.write("                   <form action=\"CareerCode\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("                       <h2 style=\"text-align:center;color:blue;\">\n");
      out.write("                           Apply For Job\n");
      out.write("                       </h2> \n");
      out.write("                       <table style=\"margin: 0px auto; width:70%\" border=\"1\">\n");
      out.write("                           <tr>\n");
      out.write("                               <td>Enter Name</td>\n");
      out.write("                               <td><input type=\"text\" name=\"name\" name=\"required\"/></td>\n");
      out.write("                           </tr>\n");
      out.write("                           <tr>\n");
      out.write("                               <td>Select Gender</td>\n");
      out.write("                               <td><input type=\"radio\" name=\"gender\" value=\"male\"/>Male\n");
      out.write("                                    <input type=\"radio\" name=\"gender\" value=\"female\"/>Female                                                  </td>\n");
      out.write("                           </tr>\n");
      out.write("                           <tr>\n");
      out.write("                               <td>Address</td>\n");
      out.write("                               <td><textarea name=\"address\" required=\"\" style=\"margin:0px; width:339px;height:45px; resize:none;\"></textarea></td>\n");
      out.write("                            <tr><td>Contact No:</td>\n");
      out.write("                              <td><input type=\"number\" name=\"contactno\" class=\"input\" required=\"\"/></td></tr>   \n");
      out.write("                          <tr><td>Email Id:</td>\n");
      out.write("                              <td><input type=\"email\" name=\"emailaddress\" required=\"\" class=\"input\"/></td></tr>\n");
      out.write("                       <tr><td>Qualification</td>\n");
      out.write("                           <td>\n");
      out.write("                       <select name=\"qualification\" required=\"\"/>\n");
      out.write("                           <option>--select--</option>\n");
      out.write("                           <option>MBA</option>\n");
      out.write("                           <option>B.TECH</option>\n");
      out.write("                            <option>MCA</option>\n");
      out.write("                             <option>BCA</option>\n");
      out.write("                              <option>INTERMEDIATE</option>                              \n");
      out.write("                       </select>\n");
      out.write("                               </td>\n");
      out.write("                       </tr>\n");
      out.write("                       <tr>\n");
      out.write("                           <td>Experience</td>\n");
      out.write("                           <td>\n");
      out.write("                            <select name=\"experience\" required=\"\">\n");
      out.write("                           <option>--select--</option>\n");
      out.write("                           <option>1y</option>\n");
      out.write("                           <option>2y</option>\n");
      out.write("                            <option>3y</option>\n");
      out.write("                             <option>4y</option>\n");
      out.write("                              <option>5y</option>                            \n");
      out.write("                       </select>\n");
      out.write("                               </td>\n");
      out.write("                       </tr>\n");
      out.write("                       <tr>\n");
      out.write("                          <td>KeySkills</td>\n");
      out.write("                          <td><textarea name=\"keyskills\" required=\"\" style=\"margin:0px; width:339px;height:45px; resize:none;\"></textarea></td>\n");
      out.write("                       </tr>\n");
      out.write("                       <tr>\n");
      out.write("                           <td>upload cv</td>\n");
      out.write("                           <td><input type=\"file\" name=\"cv\" required=\"\"/></td>\n");
      out.write("                       </tr>\n");
      out.write("                      <tr>\n");
      out.write("                            <td colspan=\"2\" align=\"center\">\n");
      out.write("                            <input type=\"submit\" value=\"submit\"/></td>\n");
      out.write("                        </tr>\n");
      out.write("                       </table>\n");
      out.write("                   </form>\n");
      out.write("                   \n");
      out.write("               </div>\n");
      out.write("           </div>   \n");
      out.write("           <div id=\"footer\">\n");
      out.write("               <div id=\"lfooter\">\n");
      out.write("                   <h1>Copyright &copy;Speedex Courier</h1>\n");
      out.write("               </div>\n");
      out.write("               <div id=\"rfooter\">\n");
      out.write("                   <h1>Developed by:Aman jain</h1>\n");
      out.write("               </div>\n");
      out.write("           </div>\n");
      out.write("      </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
