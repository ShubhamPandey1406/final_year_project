package org.apache.jsp.adminzone;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write('\n');

    if(session.getAttribute("userid")==null || session.getAttribute("userid")=="")
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {
        
   
    

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("      <style>\n");
      out.write("          #outer\n");
      out.write("          {\n");
      out.write("           min-height: 970px;\n");
      out.write("           width: 1000px;\n");
      out.write("           border: 1px solid red;\n");
      out.write("           margin:0px auto;\n");
      out.write("           heihgt:auto;\n");
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
      out.write("              background-image: url(\"../images/logo.png\");\n");
      out.write("              background-size: cover;\n");
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
      out.write("          }\n");
      out.write("          #menu\n");
      out.write("          {\n");
      out.write("            height: 50px;\n");
      out.write("            width: 1000px;\n");
      out.write("            background-color:white;\n");
      out.write("            float:left;\n");
      out.write("          }\n");
      out.write("          \n");
      out.write("          #main\n");
      out.write("          {\n");
      out.write("           height: 650px;\n");
      out.write("           width: 1000px;\n");
      out.write("           background-color:white;\n");
      out.write("          }\n");
      out.write("          \n");
      out.write("         \n");
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
      out.write("              background-color: khaki;\n");
      out.write("              float: left;\n");
      out.write("              text-align:center;\n");
      out.write("              \n");
      out.write("          }\n");
      out.write("          #rfooter\n");
      out.write("          {\n");
      out.write("            height: 150px;\n");
      out.write("              width: 500px;\n");
      out.write("              background-color: lightsteelblue;\n");
      out.write("              float: left;  \n");
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
      out.write("      \n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"lightblue\">\n");
      out.write("      <div id=\"outer\">  \n");
      out.write("          <div id=\"header\">\n");
      out.write("              <div id=\"logo\"></div>               \n");
      out.write("              <div id=\"pt\">\n");
      out.write("                Speedex Courier    \n");
      out.write("              </div>\n");
      out.write("            </div> \n");
      out.write("          <div id=\"menu\">\n");
      out.write("              <ul>\n");
      out.write("                  <li><a href=\"adminhome.jsp\">ADMIN HOME</a></li>\n");
      out.write("                  <li><a href=\"enqueies.jsp\">ENQUIRIES</a></li>\n");
      out.write("                  <li><a href=\"complains.jsp\">COMPLAINS</a></li>\n");
      out.write("                   <li><a href=\"jobseekers.jsp\">JOB SEEKERS</a></li>\n");
      out.write("                   <li><a href=\"consignment.jsp\">CONSIGNMENT</a></li>                  \n");
      out.write("                  <li><a href=\"logout.jsp\">LOGOUT</a></li>               \n");
      out.write("              </ul>\n");
      out.write("          </div>\n");
      out.write("          \n");
      out.write("           <div id=\"main\">\n");
      out.write("               \n");
      out.write("           </div>   \n");
      out.write("           <div id=\"footer\">\n");
      out.write("               <div id=\"lfooter\">\n");
      out.write("                  <h1> Copyright &copy;Speedex courier</h1>\n");
      out.write("               </div>\n");
      out.write("               <div id=\"rfooter\">\n");
      out.write("              <h1>Developed by: Aman jain</h1>\n");
      out.write("               </div>\n");
      out.write("           </div>\n");
      out.write("      </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");

    }

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
